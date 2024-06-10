package CollectionsEstruturaDeDados;

import java.util.ArrayList;
import java.util.Scanner;

public class CollectionExercicio2 {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ArrayList<Integer> listaNumeros = new ArrayList<>();
		Scanner leia = new Scanner(System.in);
		
		listaNumeros.add(3);
		listaNumeros.add(5);
		listaNumeros.add(6);
		listaNumeros.add(8);
		listaNumeros.add(7);
		listaNumeros.add(4);
		listaNumeros.add(2);
		listaNumeros.add(1);
		listaNumeros.add(9);
		listaNumeros.add(10);
		
		
		System.out.println("\nDigite o número que você deseja encontar: ");
		int numero = leia.nextInt();
		
		if(numero>0 && numero<11) {
			for(int y=0;y<10;y++) {
				if(y==listaNumeros.indexOf(numero)) {
					System.out.println("\nO número "+numero+" está localizado na posição: "+(y+1));
				}
			}
		}else{
			System.out.println("\nO número "+numero+" não foi encontrado!!!");
		}
	}
}