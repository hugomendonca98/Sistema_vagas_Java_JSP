package vagaService.vagas;

import vagaService.vagas.ConectaDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@SuppressWarnings("unused")
public class Vagas {
	private Integer idVaga;
	private String descricao;
	private String req_obrigatorios;
	private String req_desejaveis;
	private Float  remuneracao;
	private String beneficios;
	private String local_trabalho;
	private int aberta;
	
	
	public Integer getIdVaga() {
		return idVaga;
	}
	public void setIdVaga(Integer idVaga) {
		this.idVaga = idVaga;
	}
	public String getDescricao() {
		
		return descricao;
	}
	public void setDescricao(String descricao) {
		
		
		this.descricao = descricao;
	}
	public String getReq_obrigatorios() {
		return req_obrigatorios;
	}
	public void setReq_obrigatorios(String req_obrigatórios) {
		this.req_obrigatorios = req_obrigatórios;
	}
	public String getReq_desejaveis() {
		return req_desejaveis;
	}
	public void setReq_desejaveis(String req_desejáveis) {
		this.req_desejaveis = req_desejáveis;
	}
	public Float getRemuneracao() {
		return remuneracao;
	}
	public void setRemuneracao(Float remuneracao) {
		this.remuneracao = remuneracao;
	}
	public String getBeneficios() {
		return beneficios;
	}
	public void setBeneficios(String beneficios) {
		this.beneficios = beneficios;
	}
	public String getLocal_trabalho() {
		return local_trabalho;
	}
	public void setLocal_trabalho(String local_trabalho) {
		this.local_trabalho = local_trabalho;
	}
	public int getAberta() {
		return aberta;
	}
	public void setAberta(int aberta) {
		this.aberta = aberta;
	}
	
	public void incluir() {
		try {
		ConectaDB bd = ConectaDB.getInstance();
		Connection conn = bd.getConnection();
		
		String Sql = "insert into " + "vagas(descricao,req_obrigatorios,req_desejaveis,remuneracao,beneficios,local_trabalho) "
				 + "values(?,?,?,?,?,?)";
				 PreparedStatement comando = (PreparedStatement)
				conn.prepareStatement(Sql);
				 
				 comando.setString(1, descricao);
				 comando.setString(2, req_obrigatorios);
				 comando.setString(3, req_desejaveis);
				 comando.setFloat(4, remuneracao);
				 comando.setString(5, beneficios);
				 comando.setString(6, local_trabalho);
				 comando.execute();
				 comando.close();
				 conn.close();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public void alterar() {
		try {
			ConectaDB bd = ConectaDB.getInstance();
			Connection conn = bd.getConnection();
			
			String Sql = "update vagas set descricao = ?,"
					 + "req_obrigatorios = ?,"
					 + "req_desejaveis = ?,"
					 + "remuneracao = ?,"
					 + "aberta = ?,"
					 + "beneficios = ?,"
					 + "local_trabalho = ? "
					 + " where idvaga = ?";
			
			PreparedStatement comando = (PreparedStatement)
			conn.prepareStatement(Sql);
			
			comando.setString(1, descricao);
			 comando.setString(2, req_obrigatorios);
			 comando.setString(3, req_desejaveis);
			 comando.setFloat(4, remuneracao);
			 comando.setInt(5, aberta);
			 comando.setString(6, beneficios);
			 comando.setString(7, local_trabalho);
			 comando.setInt(8, idVaga);
			 comando.execute();
			 comando.close();
			 conn.close();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public void excluir(String id) {
		try {
			ConectaDB bd = ConectaDB.getInstance();
			Connection conn = bd.getConnection();
			
			String Sql = "delete from vagas where idVaga = ".concat(id);
			 PreparedStatement comando = (PreparedStatement)
			 conn.prepareStatement(Sql);
			 comando.execute();
			 comando.close();
			 conn.close();
			 
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
}
