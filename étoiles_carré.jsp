import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Entrer le nombre d'étoiles souhaité: ");
        int etoile = scanner.nextInt();
        System.out.println();
        
        for (int i = 0; i < etoile; i++) {
            for (int j = 0; j < etoile; j++) {
                System.out.print("*");
            }
            
            System.out.println();
        }
        
        scanner.close();
    }
}
