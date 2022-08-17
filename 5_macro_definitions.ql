//where m.getName() = "ntohs" or m.getName() = "ntohl" or m.getName() = "ntohll"


import cpp
from Macro m
where m.getName().regexpMatch("ntoh[a-z]")
select m, "ntoh* macros"

