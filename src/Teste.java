public class Teste {
    public static void main(String[] args) {
        try {
            Conexao.conectar();
            System.out.println("Conectado com sucesso!");
        } catch (Exception e) {
            System.out.println("Erro na conexão.");
            e.printStackTrace();
        }
    }
}
