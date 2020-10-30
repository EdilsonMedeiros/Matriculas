package br.com.matriculas.dao;

import java.util.List;

import org.hibernate.Session;

import br.com.matriculas.model.Funcionario;

public class DaoFuncionario {
	public static void inserirFuncionario(Funcionario func) {
		// 1. Abrir conex�o
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transa��o
				sessao.beginTransaction();

				// 3. Executar a transa��o
				sessao.save( func );
				
				// 4. Fechar a transa��o
				sessao.getTransaction().commit();
				
				// 5. Fechar a conex�o
				sessao.close();
			}
			
			public static void excluirFuncionario(Funcionario func) {
				// 1. Abrir conex�o
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transa��o
				sessao.beginTransaction();

				// 3. Executar a transa��o
				sessao.delete( func );
				
				// 4. Fechar a transa��o
				sessao.getTransaction().commit();
				
				// 5. Fechar a conex�o
				sessao.close();
			}
			
			public static void editarFuncionario(Funcionario func) {
				// 1. Abrir conex�o
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transa��o
				sessao.beginTransaction();

				// 3. Executar a transa��o
				sessao.update( func );
				
				// 4. Fechar a transa��o
				sessao.getTransaction().commit();
				
				// 5. Fechar a conex�o
				sessao.close();
			}
			
			public static List<Funcionario> listarFuncionario() {
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				sessao.beginTransaction();

				List<Funcionario> lista = sessao.createQuery("FROM Funcionario").list();
				
				sessao.getTransaction().commit();
				sessao.close();
				
				return lista;
			}
			
			public static Funcionario localizarFuncionarioPorCodigo(int id){
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				sessao.beginTransaction();

				Funcionario obj = (Funcionario) sessao.createQuery("FROM Funcionario WHERE id = " + id).uniqueResult();
				
				sessao.getTransaction().commit();
				sessao.close();

				return obj;
			}
}
