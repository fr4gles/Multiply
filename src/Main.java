/**
 * główna klasa prgoramui=
 * @author Michal
 */
public class Main
{
   public static void main(String[] args)
   {
       try
       {
           if(args.length < 2)
           {
               String msg = "";
               for( String a : args)
               {
                   msg += a + "\n";
               }
               throw new IllegalArgumentException("Nie podano dobrych argumentów: " + msg);
           }
           
           Multiply m = new Multiply(args[0], Integer.parseInt(args[1]));
           
           System.out.println("Wynik : " + String.format("%.3f", m.GetResult()).replace(",", "."));
       }
       catch(Exception ex)
       {
           System.err.println("Coś poszło nie tak, ... już na starcie: "+ ex.getMessage());
       }
   }
}
