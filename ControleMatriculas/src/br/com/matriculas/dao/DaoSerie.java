package br.com.matriculas.dao;

import java.util.List;

import org.hibernate.Session;

import br.com.matriculas.model.Professor;
import br.com.matriculas.model.Serie;

public class DaoSerie {
	public static void inserirSerie(Serie seri) {
		// 1. Abrir conexão
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transação
				sessao.beginTransaction();

				// 3. Executar a transação
				sessao.save( seri );
				
				// 4. Fechar a transação
				sessao.getTransaction().commit();
				
				// 5. Fechar a conexão
				sessao.close();
			}
			
			public static void excluirSerie(Serie seri) {
				// 1. Abrir conexão
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transação
				sessao.beginTransaction();

				// 3. Executar a transação
				sessao.delete( seri );
				
				// 4. Fechar a transação
				sessao.getTransaction().commit();
				
				// 5. Fechar a conexão
				sessao.close();
			}
			
			public static void editarSerie(Serie seri) {
				// 1. Abrir conexão
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transação
				sessao.beginTransaction();

				// 3. Executar a transação
				sessao.update( seri );
				
				// 4. Fechar a transação
				sessao.getTransaction().commit();
				
				// 5. Fechar a conexão
				sessao.close();
			}
			
			public static List<Serie> listarSerie() {
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				sessao.beginTransaction();

				List<Serie> lista = sessao.createQuery("FROM Serie").list();
				
				sessao.getTransaction().commit();
				sessao.close();
				
				return lista;
			}
			public static Serie localizarSeriePorCodigo(int id){
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				sessao.beginTransaction();

				Serie obj = (Serie) sessao.createQuery("FROM Serie WHERE id = " + id).uniqueResult();
				
				sessao.getTransaction().commit();
				sessao.close();

				return obj;
			}
}
