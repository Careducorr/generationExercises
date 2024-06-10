package CollectionsEstruturaDeDados;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class CollectionExercicio1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ArrayList<String> coresList = new ArrayList();
		Scanner leia = new Scanner(System.in);
		
		for(int x=0;x<5;x++) {
			System.out.println("\nDigite a cor número "+(x+1));
			String cores = leia.nextLine();
			coresList.add(cores);
		}
		
		System.out.println("\nLista de cores: ");
		for(String coresList1:coresList) {
			System.out.println(coresList1);
		}
		
		
		Collections.sort(coresList);
		
		System.out.println("\nLista de cores por ordem alfabética: ");
		for(String ordenedList:coresList) {
			System.out.println(ordenedList);
		}
		
	}

}
