package br.com.matriculas.dao;

import java.util.List;

import org.hibernate.Session;

import br.com.matriculas.model.Disciplina;

public class DaoDisciplina {
	public void inserirDisciplina(Disciplina disc) {
	// 1. Abrir conexão
			Session sessao = ConexaoBD.getSessionFactory().openSession();
			
			// 2. Iniciar uma transação
			sessao.beginTransaction();

			// 3. Executar a transação
			sessao.save( disc );
			
			// 4. Fechar a transação
			sessao.getTransaction().commit();
			
			// 5. Fechar a conexão
			sessao.close();
		}
		
		public void excluirDisciplina(Disciplina disc) {
			// 1. Abrir conexão
			Session sessao = ConexaoBD.getSessionFactory().openSession();
			
			// 2. Iniciar uma transação
			sessao.beginTransaction();

			// 3. Executar a transação
			sessao.delete( disc );
			
			// 4. Fechar a transação
			sessao.getTransaction().commit();
			
			// 5. Fechar a conexão
			sessao.close();
		}
		
		public void editarDisciplina(Disciplina disc) {
			// 1. Abrir conexão
			Session sessao = ConexaoBD.getSessionFactory().openSession();
			
			// 2. Iniciar uma transação
			sessao.beginTransaction();

			// 3. Executar a transação
			sessao.update( disc );
			
			// 4. Fechar a transação
			sessao.getTransaction().commit();
			
			// 5. Fechar a conexão
			sessao.close();
		}
		
		public List<Disciplina> listarDisciplina() {
			Session sessao = ConexaoBD.getSessionFactory().openSession();
			sessao.beginTransaction();

			List<Disciplina> lista = sessao.createQuery("FROM Disciplina").list();
			
			sessao.getTransaction().commit();
			sessao.close();
			
			return lista;
		}

}
