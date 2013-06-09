
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



/**
 * główna klasa zarządzająco - obliczająca zadanie
 * @author Michal
 */
public class Multiply
{
    /**
     * tablica wyników
     */
    public Float[] Results;
    
    /**
     * wektor 
     */
    public Float[] Vector;
    
    /**
     * connection string
     */
    private String _connecion = "";
    
    /**
     * rozmiar ;)
     */
    private int _size = 0;
    
    /**
     * konstruktor
     * @param con con string
     * @param size rozmiar
     */
    Multiply(String con, int size)
    {
        _connecion = con;
        _size = size+1;
        
        Vector = new Float[_size];
        Results = new Float[_size+1];
        
        try
        {
            PrepareVector();
        }
        catch (SQLException ex)
        {
            System.err.println("Błąd przy łączeniu z bazą [faza Główna]: "+ex.getMessage());
        }
    }
    
    /**
     * przygotowanie wektora czyli zczytanie danych wektora do tablicy
     * @throws SQLException jakby się wywaliło przy pytaniu bazy
     */
    private void PrepareVector() throws SQLException
    {
        try (Connection con = DriverManager.getConnection(_connecion); Statement st = con.createStatement())
        {                
            try
            {
                ResultSet rs = st.executeQuery("SELECT * FROM Xtable");
                
                while (rs.next()) 
                {
                    int index = rs.getInt(1);
                    float x = rs.getFloat(2);

                    Vector[index] = x;
                }
            }
            catch(SQLException | NumberFormatException e)
            {
                System.out.println("Coś poszło nie tak przy zapytaniach do bazy [Vector-Xtable]: "+ e.getMessage());
            }
            catch(Exception e)
            {
                System.out.println("Błąd ... : "+e.getMessage());
            }
        }
        
    }
    
    /**
     * funkcja zwracająca wyniki
     * przed zwroceniem, oblicza go ^^)
     * @return 
     */
    public Float GetResult()
    {
        int i = 0;
        try
        {
            for(; i <= _size; ++i)
                Results[i] = MultiplyMatrixLineWithVectoxArgument(i);
        }
        catch(Exception e)
        {
            System.err.println("Jeśli jest błąd to podałeś zły rozmiar ... i : " + i + ", wiadomosc bledu : "+e.getMessage());
        }

        return max(Results);
    }
    
    /**
     * mnożenie wersa macierzy przez elementy wektora
     * Funkcję da się łatwo podpiąć pod wątki ...
     * Każdy wątek wysyłałby zapytanie do bazy o wers macierzy, mnożyłby go przez wektor i zwracał wynik, który by potem zapisał do tablicy
     * @param lineIndex numer wiersza
     * @return wynik z mnożenia wersa macierzy z wektorem
     */
    private Float MultiplyMatrixLineWithVectoxArgument(int lineIndex)
    {
        Float result = -Float.MIN_VALUE;
        try (Connection con = DriverManager.getConnection(_connecion); Statement st = con.createStatement())
        {                
            ResultSet rs = st.executeQuery(String.format("SELECT * FROM Atable where i = %s",lineIndex));

            while (rs.next()) 
            {
                int j = rs.getInt(2);
                float x = rs.getFloat(3);

                result += x*Vector[j];

                if(Main.DEBUG)
                {
                    int index = rs.getInt(1);
                    System.out.println(index + " " + j + " " + x);
                }
            }
        }
        catch (SQLException | NumberFormatException ex)
        {
            System.out.println("Coś poszło nie tak przy zapytaniach do bazy [Vector-Xtable]: "+ ex.getMessage());
        }
        
        return result;
    }
    
    /**
   * <p>Returns the maximum value in an array.</p>
   * 
   * @param array  an array, must not be null or empty
   * @return the minimum value in the array
   * @throws IllegalArgumentException if <code>array</code> is <code>null</code>
   * @throws IllegalArgumentException if <code>array</code> is empty
   */
  public static float max(Float[] array) 
  {
      // Validates input
      if (array == null) 
      {
          throw new IllegalArgumentException("The Array must not be null");
      } 
      else if (array.length == 0) 
      {
          throw new IllegalArgumentException("Array cannot be empty.");
      }

      // Finds and returns max
      float max = array[0];
      for (int j = 1; j < array.length; j++) {
          if (Float.isNaN(array[j])) {
              return Float.NaN;
          }
          if (array[j] > max) {
              max = array[j];
          }
      }

      return max;
  }
  
}
