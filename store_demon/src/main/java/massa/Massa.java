package massa;

import com.github.javafaker.Faker;

public abstract class Massa {
	
	public static final String QUANTIDADE = "1";
	
	public static final String PAIS = "Brazil";
	
	public static final String ESTADO ="São Paulo";
	
	public static final String CIDADE = "Araraquara";
	
	public static final String ZIP = Faker.instance().address().zipCode();
	
	
	public static final String CHECK_FIRST_NAME = Faker.instance().name().firstName();
	public static final String CHECK_LAST_NAME = Faker.instance().name().lastName();
	public static final String CHECK_EMAIL = Faker.instance().internet().emailAddress();
	public static final String CHECK_ENDERECO = Faker.instance().address().streetAddress();
	public static final String CHECK_CIDADE = "SAO PAULO";
	public static final String CHECK_ZIP = Faker.instance().address().zipCode();
	public static final String CHECK_PAIS = "Brazil";
	public static final String CHECK_TELEFONE = Faker.instance().phoneNumber().phoneNumber();
	
	

}
