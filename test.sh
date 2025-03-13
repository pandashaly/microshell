ulimit -n 30

E="./a.out"

$E /bin/ls
$E /bin/ls microshell.c
$E /bin/ls


$E ";"
$E ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";"
$E ";" ";" ";" ";" ";" ";" /bin/echo OK
$E ";" ";" ";" ";" ";" /bin/echo OK ";"
$E ";" ";" ";" /bin/echo OK ";" ";" ";"
$E ";" ";" ";" /bin/echo OK ";" ";" ";" OK
$E bin/echo Hello ";" /bin/echo World


$E cd ";" /bin/ls
$E "|" bin/ls
$E /bin/ls "|"
$E /bin/ls "|" /usr/bin/grep microshell.c "|"
$E
$E
$E
$E
$E
