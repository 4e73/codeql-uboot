
import cpp

/*
class NetworkByteSwap extends MacroInvocation
{
  MacroInvocation mi;

  NetworkByteSwap() 
  {
    this.getMacroName().regexpMatch("ntoh[a-z]")
    and mi = this
  }

  Expr toExpr()
  {
    result = mi.getExpr()
  }
  
}

from NetworkByteSwap n
select n, n.toExpr(), "Network byte swap"
*/

class NetworkByteSwap extends Expr
{
    NetworkByteSwap()
    {
        exists(
            MacroInvocation mi | 
            mi.getMacroName().regexpMatch("ntoh[a-z]") and
            this = mi.getExpr()
        )
    }
}

from NetworkByteSwap n
select n, "Network byte swap"


