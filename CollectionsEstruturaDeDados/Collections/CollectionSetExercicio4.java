package CollectionsEstruturaDeDados.Collections;

import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class CollectionSetExercicio4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Set<Integer> setNumeros = new HashSet<>();
		Scanner ler = new Scanner(System.in);
		
		setNumeros.add(2);
		setNumeros.add(5);
		setNumeros.add(1);
		setNumeros.add(3);
		setNumeros.add(4);
		setNumeros.add(9);
		setNumeros.add(7);
		setNumeros.add(8);
		setNumeros.add(10);
		setNumeros.add(6);
		
		System.out.println("\nDigite o número que você deseja encontrar: ");
		int find = ler.nextInt();
		
		if(setNumeros.contains(find)) {
			System.out.println("\nO número "+find+" foi encontrado!");
		}else {
			System.out.println("\nO número "+find+" não foi encontrado!");
		}
		
	}

}
