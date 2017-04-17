
package loianeGroner.aula042;

/**
 *
 * @author Administrador
 */
public class Professor extends Pessoa{
    private String dataContrato;
    private String indiceAceitacao;
    private String salario;

    public Professor(String nome, String cpf, String dataNascimento,
            String dataContrato, String indiceAceitacao, String salario) {
        super(nome, cpf, dataNascimento);
        this.dataContrato = dataContrato;
        this.indiceAceitacao = indiceAceitacao;
        this.salario = salario;
    }
    
   
    public String getDataContrato() {
        return dataContrato;
    }

    public void setDataContrato(String dataContrato) {
        this.dataContrato = dataContrato;
    }

    public String getIndiceAceitacao() {
        return indiceAceitacao;
    }

    public void setIndiceAceitacao(String indiceAceitacao) {
        this.indiceAceitacao = indiceAceitacao;
    }

    public String getSalario() {
        return salario;
    }

    public void setSalario(String salario) {
        this.salario = salario;
    }

    @Override
    public String toString() {
        return super.toString() + "Professor{" + "dataContrato=" + dataContrato + ", indiceAceitacao=" + indiceAceitacao + ", salario=" + salario + '}';
    }
    
    
    
}
