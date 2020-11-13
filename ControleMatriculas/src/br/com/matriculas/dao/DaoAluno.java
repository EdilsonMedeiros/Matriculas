package br.com.matriculas.dao;

import org.hibernate.Session;
import java.util.List;

import br.com.matriculas.model.Aluno;
import br.com.matriculas.model.Professor;

public class DaoAluno {
	public static void inserirAluno(Aluno alun) {
		// 1. Abrir conexão
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		
		// 2. Iniciar uma transação
		sessao.beginTransaction();

		// 3. Executar a transação
		sessao.save( alun );
		
		// 4. Fechar a transação
		sessao.getTransaction().commit();
		
		// 5. Fechar a conexão
		sessao.close();
	}
	
	public static void excluirAluno(Aluno alun) {
		// 1. Abrir conexão
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		
		// 2. Iniciar uma transação
		sessao.beginTransaction();

		// 3. Executar a transação
		sessao.delete( alun );
		
		// 4. Fechar a transação
		sessao.getTransaction().commit();
		
		// 5. Fechar a conexão
		sessao.close();
	}
	
	public static void editarAluno(Aluno alun) {
		// 1. Abrir conexão
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		
		// 2. Iniciar uma transação
		sessao.beginTransaction();

		// 3. Executar a transação
		sessao.update( alun );
		
		// 4. Fechar a transação
		sessao.getTransaction().commit();
		
		// 5. Fechar a conexão
		sessao.close();
	}
	
	public static List<Aluno> listarAluno() {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();

		List<Aluno> lista = sessao.createQuery("FROM Aluno").list();
		
		sessao.getTransaction().commit();
		sessao.close();
		
		return lista;
	}
	
	public static Aluno localizarAlunoPorCodigo(int id){
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();

		Aluno obj = (Aluno) sessao.createQuery("FROM Aluno WHERE id = " + id).uniqueResult();
		
		sessao.getTransaction().commit();
		sessao.close();

		return obj;
	}

}
