public class Errores{

  // Getter y Setters
  public string type { get; set; }
  public string desc { get; set; }
  public int line { get; set; }
  public int column {get; set;}

  // Constructor
  public Errores(string type, string desc, int line, int column){
    this.type = type;
    this.desc = desc;
    this.line = line;
    this.column = column;
  }

}