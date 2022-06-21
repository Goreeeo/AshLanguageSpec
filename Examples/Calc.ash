use System.IO;
release TokenType;
define_err -5 "Invalid Symbol!";
define_err -7 "Could not read token!"

private enum TokenType {
  Int,
  Float,
  Plus,
  Minus,
  Multiply,
  Divide
}

private class Token {
  local TokenType type;
  local dynamic value;
  
  local Token(TokenType type, dynamic value) {
    this.type = type;
    this.value = value;
  }
}

private Token[*] tokens;

private static void Main() {
  string input = ReadLine();
  foreach (char c in input) {
    int i = int.Parse(c);
    if (i != null) {
      tokens.Push(Token(Int, i));
      continue;
    }
    float f = float.Parse(c);
    if (f != null) {
      tokens.Push(Token(Float, f));
      continue;
    }
    #always-break
    switch (c) {
      case "+":
        tokens.Push(Token(Plus, null));
      case "-":
        tokens.Push(Token(Minus, null));
      case "*":
        tokens.Push(Token(Multiply, null));
      case "/":
        tokens.Push(Token(Divide, null));
      default:
        Quit(-7);
    }
  }
  
  foreach (Token tok in tokens) {
    if (tok.type != (Number || Minus)) {
      OutLn("First Token must be a number or \"-\"!", Color.Red);
      Quit(-5);
    }
  }
}
