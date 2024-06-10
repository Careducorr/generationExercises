package CollectionsEstruturaDeDados.EstruturaDeDados;

import java.util.Scanner;
import java.util.Stack;

public class EstruturaDeDadosPilha {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Stack<String> pilha = new Stack<>();
        Scanner leia = new Scanner(System.in);
        
        int opcao;
        
        do {
            System.out.println("\nMenu:");
            System.out.println("1: Adicionar um novo livro na pilha");
            System.out.println("2: Listar todos os livros da Pilha");
            System.out.println("3: Retirar um livro da pilha");
            System.out.println("0: Sair do programa");
            System.out.print("Escolha uma opção: ");
            opcao = leia.nextInt();
            leia.nextLine();
            
            switch(opcao) {
                case 1:
				String continuar;
				do {
	                    System.out.print("Digite o nome do livro: ");
	                    String livro = leia.nextLine();
	                    pilha.push(livro);
	                    System.out.println("Livro adicionado com sucesso!");
	                    
	                    System.out.println("\nPilha atual: ");
	                    for(String pilhaAt : pilha) {
	                    	System.out.println(pilhaAt);
	                    }
	                    
	                    System.out.println("\nDeseja adicionar outro livro? (S/N)");
	                    continuar = leia.nextLine();
                	}while(continuar.toUpperCase().equals("S"));
                    break;
                    
                case 2:
                    if (pilha.isEmpty()) {
                        System.out.println("A pilha está vazia.");
                    } else {
                        System.out.println("Livros na pilha:");
                        for (String pilhaAt : pilha) {
                            System.out.println(pilhaAt);
                        }
                    }
                    break;
                case 3:
                    if (pilha.isEmpty()) {
                        System.out.println("A pilha está vazia.");
                    } else {
                        String livroRetirado = pilha.pop();
                        
                        System.out.println("\nPilha: ");
                        for(String pilhaAt : pilha) {
                        	System.out.println(pilhaAt);
                        }
                        System.out.println("\nUm livro foi retirado da pilha! ");
                        
                        System.out.println("Livro retirado: " + livroRetirado);
                    }
                    break;
                case 0:
                    System.out.println("Programa finalizado!.");
                    break;
                default:
                    System.out.println("Opção inválida!");
                    break;
            }
        } while (opcao != 0);

	}

}
