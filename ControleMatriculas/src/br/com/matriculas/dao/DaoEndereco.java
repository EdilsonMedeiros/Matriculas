package br.com.matriculas.dao;

import java.util.List;

import org.hibernate.Session;

import br.com.matriculas.model.Endereco;

public class DaoEndereco {
	public static void inserirEndereco(Endereco end) {
		// 1. Abrir conexão
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transação
				sessao.beginTransaction();

				// 3. Executar a transação
				sessao.save( end );
				
				// 4. Fechar a transação
				sessao.getTransaction().commit();
				
				// 5. Fechar a conexão
				sessao.close();
			}
			
			public static void excluirEndereco(Endereco end) {
				// 1. Abrir conexão
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transação
				sessao.beginTransaction();

				// 3. Executar a transação
				sessao.delete( end );
				
				// 4. Fechar a transação
				sessao.getTransaction().commit();
				
				// 5. Fechar a conexão
				sessao.close();
			}
			
			public static void editarEndereco(Endereco end) {
				// 1. Abrir conexão
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				
				// 2. Iniciar uma transação
				sessao.beginTransaction();

				// 3. Executar a transação
				sessao.update( end );
				
				// 4. Fechar a transação
				sessao.getTransaction().commit();
				
				// 5. Fechar a conexão
				sessao.close();
			}
			
			public static List<Endereco> listarEndereco() {
				Session sessao = ConexaoBD.getSessionFactory().openSession();
				sessao.beginTransaction();

				List<Endereco> lista = sessao.createQuery("FROM Endereco").list();
				
				sessao.getTransaction().commit();
				sessao.close();
				
				return lista;
			}

}
