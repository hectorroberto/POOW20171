
package treinando.loiane42;

/**
 *
 * @author Administrador
 */
public class Run {
    public static void main(String[] args) {
        Aluno a = new Aluno("Hector","700.145.352-89","30/01/97","1234", "Sistemas de Informação", "SI20142");
        System.out.println(a.toString());
        System.out.println("Acesse meu site: "+Constantes.URL_SITE_PAG_PRINCIPAL);
       
    }
}
