package CollectionsEstruturaDeDados.EstruturaDeDados;

import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

public class EstruturaDeDadosFila {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Queue<String> fila = new LinkedList<>();
        Scanner leia = new Scanner(System.in);
        
        int opcao;
        do {
            System.out.println("\nMenu:");
            System.out.println("1: Adicionar um novo Cliente na fila");
            System.out.println("2: Listar todos os Clientes na fila");
            System.out.println("3: Chamar (retirar) uma pessoa da fila");
            System.out.println("0: Sair do programa");
            System.out.print("Escolha uma opção: ");
            opcao = leia.nextInt();
            
            switch(opcao) {
                case 1:
				String continuar;
				do {
	                    leia.nextLine();
	                    System.out.print("\nDigite o nome do Cliente: ");
	                    String nome = leia.nextLine();
	                    fila.add(nome);
	                    System.out.println("\nCliente adicionado com sucesso!");
	                    System.out.println("\nFila atual: ");
	                    for(String cliente : fila) {
	                    	System.out.println(cliente);
	                    }
	                    System.out.println("\nDeseja adicionar outro Cliente? S/N");
	                    continuar = leia.next();
                	}while( continuar.toUpperCase().equals("S"));
                    break;
                case 2:
                    if (fila.isEmpty()) {
                        System.out.println("A fila está vazia.");
                    } else {
                        System.out.println("Clientes na fila:");
                        for (String cliente : fila) {
                            System.out.println(cliente);
                        }
                    }
                    break;
                case 3:
                    if (fila.isEmpty()) {
                        System.out.println("A fila está vazia.");
                    } else {
                        String clienteChamado = fila.poll();//remove o primeiro cliente da fila
                        System.out.println("Cliente chamado: " + clienteChamado);
                        System.out.println("\nFila atual: ");
                        for(String cliente : fila) {
                    		System.out.println(cliente);
                        }
                    }
                    break;
                case 0:
                    System.out.println("Programa encerrado.");
                    break;
                default:
                    System.out.println("Opção inválida.");
                    break;
            }
        } while (opcao != 0);

	}

}
