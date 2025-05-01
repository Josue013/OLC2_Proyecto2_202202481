using analyzer;
using Antlr4.Runtime.Misc;

public class FrameElement
{
  public string Name { get; set; }
  public int Offset { get; set; }

  public FrameElement(string name, int offset)
  {
    Name = name;
    Offset = offset;
  }
}

public class FrameVisitor : LanguageBaseVisitor<Object?>
{
  public List<FrameElement> Frame;
  public int LocalOffset;
  public int baseOffset;

  public FrameVisitor(int baseOffset)
  {
    Frame = new List<FrameElement>();
    LocalOffset = 0;
    this.baseOffset = baseOffset;
  }

  public override object? VisitVarDcl(LanguageParser.VarDclContext context)
  {

    string name = context.ID().GetText();

    Frame.Add(new FrameElement(name, LocalOffset + baseOffset));
    LocalOffset += 1;

    return null;
  }

  public override Object? VisitBlockStmt(LanguageParser.BlockStmtContext context)
  {

    foreach (var dcl in context.dcl())
    {
      Visit(dcl);
    }

    return null;
  }

  public override object? VisitIfStmt(LanguageParser.IfStmtContext context)
  {

    Visit(context.stmt(0));
    if (context.stmt().Length > 1)
    {
      Visit(context.stmt(1));
    }
    return null;
  }

  public override object? VisitForWhileStmt(LanguageParser.ForWhileStmtContext context)
  {
    Visit(context.stmt());
    return null;
  }

  public override object? VisitForClassicStmt(LanguageParser.ForClassicStmtContext context)
  {

    if (context.forInit().varDcl() != null || context.forInit().varDcl2() != null)
    {
      Visit(context.forInit().varDcl());
    }
    Visit(context.stmt());

    return null;
  }

}