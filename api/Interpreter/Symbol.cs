namespace api.compiler
{
  public class Symbol
  {
    public string Id { get; set; }
    public string TipoSimbolo { get; set; }
    public string TipoDato { get; set; }
    public int Linea { get; set; }
    public int Columna { get; set; }

    public Symbol(string id, string tipoSimbolo, string tipoDato, int linea, int columna)
    {
      Id = id;
      TipoSimbolo = tipoSimbolo;
      TipoDato = tipoDato;
      Linea = linea;
      Columna = columna;
    }

  }
}