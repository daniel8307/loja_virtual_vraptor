package br.com.locbus.teste;

import java.sql.Connection;
import java.sql.SQLException;

import br.com.locbus.dao.Impl.ConnectionFactory;

public class TestaConexao {
	public static void main(String[] args) throws SQLException {
		Connection connection = new ConnectionFactory().getConnection();
		System.out.println("Conexão aberta!");
		connection.close();
	}

}
