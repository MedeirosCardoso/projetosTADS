package teste;

import javax.persistence.EntityManager;

import fabricaConecxao.FabricaJPA;

public class TestaConexao {

	public static void main(String[] args) {
		
		EntityManager conexao = FabricaJPA.getEntityManagerFactory().createEntityManager();
		
		if(conexao != null) {
			System.out.println("CONEX�O REALIZADA COM SUCESSO!");
		}else {
			System.out.println("N�O FOI POSSIVEL CONECTAR AO BANCO DE DADOS!");
		}
	}

}
