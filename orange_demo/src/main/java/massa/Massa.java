package massa;

import com.github.javafaker.Faker;

public abstract class Massa {

	public static final String LOGIN = "Admin";
	public static final String SENHA = "admin123";

	public static final String CADASTRO_NOME = "Sr Miyagi";
	public static final String CADASTRO_MIDNAME = "Friends of";
	public static final String CADASTRO_SOBRENOME = "Daniel San";
	public static final String CADASTRO_LOGIN = Faker.instance().gameOfThrones().character();
	public static final String CADASTRO_SENHA = "123rolan";
	public static final String CADASTRO_CONFIRM_SENHA = "123rolan";
	public static final String CADASTRO_STATUS = "Enabled";

	public static final String PERSO_PERFIL_OUTROID = "4561";
	public static final String PERSO_PERFIL_LICENCA = "AAA1234";
	public static final String PERSO_PERFIL_EXPIRARDATA = "2018-12-25";
	public static final String PERSO_PERFIL_ESTADOCIVIL = "Single";
	public static final String PERSO_PERFIL_NACIONALIDADE = "Chinese";
	public static final String PERSO_PERFIL_DATNASCIMENTO = "2000-10-10";

	public static final String ASSIGN_LEAVE_NAME = "Sr Miyagi Friends of Daniel San";
	public static final String ASSIGN_LEAVE_TYPE = "Paternity US";
	public static final String ASSIGN_LEAVE_FROMDATE = "2018-12-21";
	public static final String ASSIGN_LEAVE_TODATE = "2018-12-25";
	public static final String ASSIGN_LEAVE_DAYS = "All Days";
	
	public static final String ASSIGN_LEAVE_DURATION1 = "Half Days";
	public static final String ASSIGN_LEAVE_DURATION2 = "Morning";
	public static final String ASSIGN_LEAVE_COMENT = "A Teoria do Caos se baseia "
			+ "na Teoria de Norris. Não são as asas de uma borboleta que causam "
			+ "tempestades do outro lado do mundo. São roundhouse kicks de Chuck Norris enquanto ele treina.";

}
