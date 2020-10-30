package br.com.matriculas.dao;

import java.util.List;

import org.hibernate.Session;

import br.com.matriculas.model.Matricula;

public class DaoMatricula {
	public static void inserirMatricula(Matricula matri) {
		// 1. Abrir conex�o
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transa��o
				sessao.beginTransaction();

				// 3. Executar a transa��o
				sessao.save( matri );
				
				// 4. Fechar a transa��o
				sessao.getTransaction().commit();
				
				// 5. Fechar a conex�o
				sessao.close();
			}
			
			public static void excluirMatricula(Matricula matri) {
				// 1. Abrir conex�o
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transa��o
				sessao.beginTransaction();

				// 3. Executar a transa��o
				sessao.delete( matri );
				
				// 4. Fechar a transa��o
				sessao.getTransaction().commit();
				
				// 5. Fechar a conex�o
				sessao.close();
			}
			
			public static void editarMatricula(Matricula matri) {
				// 1. Abrir conex�o
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transa��o
				sessao.beginTransaction();

				// 3. Executar a transa��o
				sessao.update( matri );
				
				// 4. Fechar a transa��o
				sessao.getTransaction().commit();
				
				// 5. Fechar a conex�o
				sessao.close();
			}
			
			public static List<Matricula> listarMatricula() {
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				sessao.beginTransaction();

				List<Matricula> lista = sessao.createQuery("FROM Matricula").list();
				
				sessao.getTransaction().commit();
				sessao.close();
				
				return lista;
			}
}
