package br.com.matriculas.dao;

import java.util.List;

import org.hibernate.Session;

import br.com.matriculas.model.Funcionario;
import br.com.matriculas.model.Professor;

public class DaoProfessor {
	public static void inserirProfessor(Professor prof) {
		// 1. Abrir conex�o
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transa��o
				sessao.beginTransaction();

				// 3. Executar a transa��o
				sessao.save( prof );
				
				// 4. Fechar a transa��o
				sessao.getTransaction().commit();
				
				// 5. Fechar a conex�o
				sessao.close();
			}
			
			public static void excluirProfessor(Professor prof) {
				// 1. Abrir conex�o
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transa��o
				sessao.beginTransaction();

				// 3. Executar a transa��o
				sessao.delete( prof );
				
				// 4. Fechar a transa��o
				sessao.getTransaction().commit();
				
				// 5. Fechar a conex�o
				sessao.close();
			}
			
			public static void editarProfessor(Professor prof) {
				// 1. Abrir conex�o
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transa��o
				sessao.beginTransaction();

				// 3. Executar a transa��o
				sessao.update( prof );
				
				// 4. Fechar a transa��o
				sessao.getTransaction().commit();
				
				// 5. Fechar a conex�o
				sessao.close();
			}
			
			public static List<Professor> listarProfessor() {
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				sessao.beginTransaction();

				List<Professor> lista = sessao.createQuery("FROM Professor").list();
				
				sessao.getTransaction().commit();
				sessao.close();
				
				return lista;
			}

			public static Professor localizarProfessorPorCodigo(int id){
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				sessao.beginTransaction();

				Professor obj = (Professor) sessao.createQuery("FROM Professor WHERE id = " + id).uniqueResult();
				
				sessao.getTransaction().commit();
				sessao.close();

				return obj;
			}
}
