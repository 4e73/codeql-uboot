
import cpp
from MacroInvocation mi
where mi.getMacroName().regexpMatch("ntoh[a-z]")
//select mi, mi.getExpr(), mi.getExpandedArgument(0)
select mi.getExpr()