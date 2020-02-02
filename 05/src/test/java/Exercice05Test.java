import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.junit.jupiter.params.provider.ValueSource;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

class Exercice05Test {

  @ParameterizedTest
  @ValueSource(ints = {0, 1, 2, 3, 432523, 21234, 7})
  void name_____(int rightOperand) {
    assertTrue(foo3(0, rightOperand, "+").contains(String.format("+ %s", rightOperand)));
  }

  @ParameterizedTest
  @ValueSource(ints = {1, 5, 23, 8, 11, 503, -15, 0})
  void name_____p(int leftOperand) {
    assertTrue(foo3(leftOperand, 0, "+").contains(String.format("%s +",leftOperand)));
  }

  @ParameterizedTest
  @CsvSource({"2, 3, 5", "4, 2, 6", "10, 5, 15"})
  void TextToRename5(int a, int b, int res) {
    assertTrue(foo3(a, b, "+").contains(String.format("= %s", res)));
  }

  @Test
  void name() {
    assertEquals("0 - 0 = 0", foo3(0, 0, "-"));
  }

  @Test
  void name_() {
    assertEquals("2 * 3 = 6", foo3(2, 3, "*"));
  }

  @Test
  void name__() {
    assertEquals("6 / 2 = 3", foo3(6, 2, "/"));
  }

  @Test
  void name___() {
    assertEquals("3 / 0 = error", foo3(3, 0, "/"));
  }

  @Test
  void name____() {
    assertEquals(
      "1 + 2 = 3\n"
        + "1 * 2 = 2\n",
      foo4(1, 2)
      );
  }

  private String foo4(int i, int i1) {
    return "";
  }

  private String foo3(int i, int i1, String s) {
    if (s == "-") {
      return i + " - " + i1 + " = "  + (i - i1);
    }

    if (s == "*") {
      return i + " * " + i1 + " = "  + (i * i1);
    }

    if (s == "/") {
      String res;

      if (i1 == 0) {
        res = "error";
      } else {
        res = (i / i1) + "";
      }

      return i + " / " + i1 + " = "  + res;
    }

    return i + " + " + i1 + " = "  + (i + i1);
  }
}
