package massa;

import com.github.javafaker.Faker;

public abstract class Massa {
	
	
	public static final String CAST_USUARIO = "antonio.monezi";
	public static final String CAST_SENHA = "930671ju";
	

	public static final String USUARIO = "sgr.adminti";
	public static final String SENHA = "123";

	// itens Subitens
	
	public static final String CAMPO_CONCESSAO = "jjj";
	public static final String CAMPO_TIPOITEM = "CONTRATO";
	public static final String CAMPO_ITEM = Faker.instance().number().digits(100);
	public static final String CAMPO_DESCRICAODOITEM = "Antonio Junior Teste";
	public static final String CAMPO_SUBITEM = Faker.instance().number().digit();
	public static final String CAMPO_NOMEDOSUBITEM = "Automatizado";
	public static final String CAMPO_DESCRICAO_DO_SUBITEM = "Criando Massa teste";

	// Poder Concedente Incluir
	public static final String PODER_CON_NOMEPODERCONCEDENTE = "NomePoderT";
	public static final String PODER_CON_NOME = "Cum";
	public static final String PODER_CON_DESCRICAO = "Des Gesco";
	public static final String PODER_CON_CONTATO = "Con Gescon";
	public static final String PODER_CON_PRIMEIRAINSTANCIA_NOME = "AAAAAAA";
	public static final String PODER_CON_DATALIMITE = "100";

	//Contrato de Concessão / Cadastrar
	
	public static final String CONTRATOCONCE_CONCESSAO = "JUT";
	public static final String CONTRATOCONCE_CADASTRO_TARIFA = "2222";
	public static final String CONTRATOCONCE_CADASTRO_CAD = "automatizado";

	//DashBoard Comunicacao recebida do poder concedente
	
	//Comunicação Poder Concedente
	
	public static final String COMUNCONCESSAO = "JJJ";
	

}
