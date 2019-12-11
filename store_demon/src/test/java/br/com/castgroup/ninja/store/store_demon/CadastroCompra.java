package br.com.castgroup.ninja.store.store_demon;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;



public class CadastroCompra extends BaseTeste {
	
	private HomePagina homePagina;
	private SelecionarProdutoPAgina selecionarProdutoPagina;
	private DetalhesProdutoAddCarrinhoPagina detalhesProdutoAddCarrinho;
	private ConfirmacaoCompraPagina confirmacaoCompra;
	private CheckoutPagina checkoutPAgina;
	private CompraSucessoPagina compraSucessoPagina;
	
	
	@Before
	public void antesDoTeste() {
		
		iniciaAplicacao();
		homePagina = new HomePagina(driver);
		selecionarProdutoPagina = new SelecionarProdutoPAgina(driver);
		detalhesProdutoAddCarrinho = new DetalhesProdutoAddCarrinhoPagina(driver);
		confirmacaoCompra = new ConfirmacaoCompraPagina(driver);
		checkoutPAgina = new CheckoutPagina(driver);
		compraSucessoPagina = new CompraSucessoPagina(driver);
		
	}

	@Test
	public void testeDemoStore() {
		
		homePagina.selecionarMenu();
		selecionarProdutoPagina.escolherProduto();
		detalhesProdutoAddCarrinho.escolherDetalhesProduto();
		Assert.assertTrue(confirmacaoCompra.verificaMensagemSucessoAddCarrinho());
		confirmacaoCompra.confirmarDetalhesCompra();
		checkoutPAgina.realizandoCheckout();
		compraSucessoPagina.acharBotao();
		Assert.assertTrue(compraSucessoPagina.mensagemSucessoCompra());
		compraSucessoPagina.finalizarCompra();
		finalizaAplicacao();
		
		
		
		
	}
}
