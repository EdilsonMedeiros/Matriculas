package br.com.matriculas.dao;

import org.hibernate.Session;
import java.util.List;

import br.com.matriculas.model.Aluno;

public class DaoAluno {
	public void inserirAluno(Aluno alun) {
		// 1. Abrir conex�o
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		
		// 2. Iniciar uma transa��o
		sessao.beginTransaction();

		// 3. Executar a transa��o
		sessao.save( alun );
		
		// 4. Fechar a transa��o
		sessao.getTransaction().commit();
		
		// 5. Fechar a conex�o
		sessao.close();
	}
	
	public void excluirAluno(Aluno alun) {
		// 1. Abrir conex�o
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		
		// 2. Iniciar uma transa��o
		sessao.beginTransaction();

		// 3. Executar a transa��o
		sessao.delete( alun );
		
		// 4. Fechar a transa��o
		sessao.getTransaction().commit();
		
		// 5. Fechar a conex�o
		sessao.close();
	}
	
	public void editarAluno(Aluno alun) {
		// 1. Abrir conex�o
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		
		// 2. Iniciar uma transa��o
		sessao.beginTransaction();

		// 3. Executar a transa��o
		sessao.update( alun );
		
		// 4. Fechar a transa��o
		sessao.getTransaction().commit();
		
		// 5. Fechar a conex�o
		sessao.close();
	}
	
	public List<Aluno> listarAluno() {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();

		List<Aluno> lista = sessao.createQuery("FROM Aluno").list();
		
		sessao.getTransaction().commit();
		sessao.close();
		
		return lista;
	}

}
