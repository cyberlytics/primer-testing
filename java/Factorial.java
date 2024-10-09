/** This program computes the factorial of a number */
public class Factorial {
  public static void main(String[] args) {
    if (args.length <= 0)
      System.exit(0);
    int input = Integer.parseInt(args[0]);
    long result = factorial(input);
    System.out.println(result);
  }

  /** This method computes the factorial of a number */
  public static long factorial(int x) {
    if (x < 0)
      return 0L;
    // if (x > 20) ... ERROR
    long fact = 1L;
    while (x > 1)
      fact *= x--;
    return fact;
  }
}
