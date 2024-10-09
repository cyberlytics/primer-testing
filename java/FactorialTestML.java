import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.*;
import org.junit.jupiter.params.*;
import org.junit.jupiter.params.provider.*;

public class FactorialTestML {

  @Test
  public void testFactorialZero() {
    assertEquals(1L, Factorial.factorial(0));
  }
 
  @ParameterizedTest
  @ValueSource(ints = { -1, -1000 })
  public void testFactorialNegative(int x) {
    assertEquals(0L, Factorial.factorial(x));
  }

  @ParameterizedTest
  @CsvSource({ "1,1", "2,2", "3,6" })
  public void testFactorialPositive(int x, long result) {
    assertEquals(result, Factorial.factorial(x));
  }
}
