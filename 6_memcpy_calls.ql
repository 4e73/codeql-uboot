
/*
import cpp
from FunctionCall call, Function f
where 
    call.getTarget() = f and 
    f.hasName("memcpy")
select call
*/

import cpp
from FunctionCall call
where call.getTarget().hasName("memcpy")
select call

