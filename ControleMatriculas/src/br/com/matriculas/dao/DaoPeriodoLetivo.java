package br.com.matriculas.dao;

import java.util.List;

import org.hibernate.Session;

import br.com.matriculas.model.Funcionario;
import br.com.matriculas.model.PeriodoLetivo;

public class DaoPeriodoLetivo {
	public static void inserirPeriodoLetivo(PeriodoLetivo pele) {
		// 1. Abrir conexão
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transação
				sessao.beginTransaction();

				// 3. Executar a transação
				sessao.save( pele );
				
				// 4. Fechar a transação
				sessao.getTransaction().commit();
				
				// 5. Fechar a conexão
				sessao.close();
			}
			
			public static void excluirPeriodoLetivo(PeriodoLetivo pele) {
				// 1. Abrir conexão
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transação
				sessao.beginTransaction();

				// 3. Executar a transação
				sessao.delete( pele );
				
				// 4. Fechar a transação
				sessao.getTransaction().commit();
				
				// 5. Fechar a conexão
				sessao.close();
			}
			
			public static void editarPeriodoLetivo(PeriodoLetivo pele) {
				// 1. Abrir conexão
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transação
				sessao.beginTransaction();

				// 3. Executar a transação
				sessao.update( pele );
				
				// 4. Fechar a transação
				sessao.getTransaction().commit();
				
				// 5. Fechar a conexão
				sessao.close();
			}
			
			public static List<PeriodoLetivo> listarPeriodoLetivo() {
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				sessao.beginTransaction();

				List<PeriodoLetivo> lista = sessao.createQuery("FROM PeriodoLetivo").list();
				
				sessao.getTransaction().commit();
				sessao.close();
				
				return lista;
			}
			
			public static PeriodoLetivo localizarPeriodoLetivoPorCodigo(int id){
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				sessao.beginTransaction();

				PeriodoLetivo obj = (PeriodoLetivo) sessao.createQuery("FROM PeriodoLetivo WHERE id = " + id).uniqueResult();
				
				sessao.getTransaction().commit();
				sessao.close();

				return obj;
			}

}
