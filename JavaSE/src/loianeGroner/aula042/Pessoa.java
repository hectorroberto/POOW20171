
package loianeGroner.aula042;

/**
 *
 * @author Administrador
 */
public class Pessoa {
    private String nome;
    private String cpf;
    private String dataNascimento;
    
    public Pessoa (String nome, String cpf, String dataNascimento){
        this.nome = nome;
        this. cpf = cpf;
        this.dataNascimento = dataNascimento;
    }
    

    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    @Override
    public String toString() {
        return "Pessoa{" + "nome=" + nome + ", CPF=" + cpf + ", Data de nascimento:=" + dataNascimento + "} \n";
    }
    
    
}
