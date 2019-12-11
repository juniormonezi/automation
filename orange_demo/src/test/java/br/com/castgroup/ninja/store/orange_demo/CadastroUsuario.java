package br.com.castgroup.ninja.store.orange_demo;

import org.junit.Before;
import org.junit.Test;

public class CadastroUsuario extends BaseTest {
	
	private LoginPagina loginPagina;
	private CadastrarFuncionarioPagina cadastrarUsuarioPagina;
	private PersonalizarPerfilPagina personalizarPerfil;
	private AfastamentoPagina afastamento;
	
	@Before
	public void antesDoTest() {
		iniciaAplicacao();
		loginPagina = new LoginPagina(driver);
		cadastrarUsuarioPagina = new CadastrarFuncionarioPagina(driver);
		personalizarPerfil = new PersonalizarPerfilPagina(driver);
		afastamento = new AfastamentoPagina(driver);
		
		
		
	}
	
	@Test
	public void realizandoTeste() {
		
		loginPagina.realizarLogin();
		cadastrarUsuarioPagina.selecionarMenu();
		cadastrarUsuarioPagina.cadastrar();
		personalizarPerfil.editarPerfil();
		personalizarPerfil.selecionarMenuLeave();
		afastamento.cadastrarAfastamento();
		
		
		
	}

}
