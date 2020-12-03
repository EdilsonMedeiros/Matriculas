package br.com.matriculas.dao;

import java.util.List;

import org.hibernate.Session;

import br.com.matriculas.model.Matricula;
import br.com.matriculas.model.Usuario;

public class DaoUsuario {
	public static void inserirUsuario(Usuario usu) {
		// 1. Abrir conexão
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transação
				sessao.beginTransaction();

				// 3. Executar a transação
				sessao.save( usu );
				
				// 4. Fechar a transação
				sessao.getTransaction().commit();
				
				// 5. Fechar a conexão
				sessao.close();
			}
			
			public static void excluirUsuario(Usuario usu) {
				// 1. Abrir conexão
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transação
				sessao.beginTransaction();

				// 3. Executar a transação
				sessao.delete( usu );
				
				// 4. Fechar a transação
				sessao.getTransaction().commit();
				
				// 5. Fechar a conexão
				sessao.close();
			}
			
			public static void editarUsuario(Usuario usu) {
				// 1. Abrir conexão
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transação
				sessao.beginTransaction();

				// 3. Executar a transação
				sessao.update( usu );
				
				// 4. Fechar a transação
				sessao.getTransaction().commit();
				
				// 5. Fechar a conexão
				sessao.close();
			}
			
			public static List<Usuario> listarUsuario() {
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				sessao.beginTransaction();

				List<Usuario> lista = sessao.createQuery("FROM Usuario").list();
				
				sessao.getTransaction().commit();
				sessao.close();
				
				return lista;
			}
			
			public static Usuario localizarUsuarioPorCodigo(int id){
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				sessao.beginTransaction();

				Usuario obj = (Usuario) sessao.createQuery("FROM Usuario WHERE id = " + id).uniqueResult();
				
				sessao.getTransaction().commit();
				sessao.close();

				return obj;
			}
			public static Usuario localizarUsuarioPorUsuario(String login){
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				sessao.beginTransaction();

				Usuario obj = (Usuario) sessao.createQuery("FROM Usuario WHERE usuario =  '" + login +"'").uniqueResult();
				
				sessao.getTransaction().commit();
				sessao.close();

				return obj;
			}
}
