#tests
ulimit -n 30

E=

./a.out /bin/ls
./a.out /bin/ls microshell.c
./a.out /bin/ls skibidi
./a.out ";"
./a.out ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";"
./a.out ";" ";" /bin/echo OK
./a.out ";" ";" /bin/echo OK ";"
./a.out ";" ";" /bin/echo OK ";" ";"
./a.out ";" ";" /bin/echo OK ";" ";" ";" /bin/echo OK
./a.out /bin/ls "|" /usr/bin/grep a.out
./a.out /bin/ls "|" /usr/bin/grep microshell "|" /usr/bin/grep micro
./a.out /bin/ls "|" /usr/bin/grep microshell "|" /usr/bin/grep micro "|" /usr/bin/grep shell "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro
./a.out /bin/ls "|" /usr/bin/grep microshell "|" /usr/bin/grep micro "|" /usr/bin/grep shell "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell
./a.out /bin/ls ewqew "|" /usr/bin/grep micro "|" /bin/cat -n ";" /bin/echo dernier ";" /bin/echo
./a.out /bin/ls "|" /usr/bin/grep micro "|" /bin/cat -n ";" /bin/echo dernier ";" /bin/echo ftest ";"
./a.out /bin/echo ftest ";" /bin/echo ftewerwerwerst ";" /bin/echo werwerwer ";" /bin/echo qweqweqweqew ";" /bin/echo qwewqeqrtregrfyukui ";"
./a.out /bin/ls ftest ";" /bin/ls ";" /bin/ls werwer ";" /bin/ls microshell.c ";" /bin/ls subject.fr.txt ";"
./a.out /bin/ls "|" /usr/bin/grep micro ";" /bin/ls "|" /usr/bin/grep micro ";" /bin/ls "|" /usr/bin/grep micro ";" /bin/ls "|" /usr/bin/grep micro ";"
./a.out /bin/cat reserv_microsh.c "|" /usr/bin/grep a "|" /usr/bin/grep b ";" /bin/cat reserv_microsh.c ";"
./a.out /bin/cat reserv_microsh.c "|" /usr/bin/grep a "|" /usr/bin/grep w ";" /bin/cat reserv_microsh.c ";"
./a.out /bin/cat reserv_microsh.c "|" /usr/bin/grep a "|" /usr/bin/grep w ";" /bin/cat reserv_microsh.c
./a.out /bin/cat reserv_microsh.c ";" /bin/cat reserv_microsh.c "|" /usr/bin/grep a "|" /usr/bin/grep b "|" /usr/bin/grep z ";" /bin/cat reserv_microsh.c
./a.out ";" /bin/cat reserv_microsh.c ";" /bin/cat reserv_microsh.c "|" /usr/bin/grep a "|" /usr/bin/grep b "|" /usr/bin/grep z ";" /bin/cat reserv_microsh.c
./a.out blah "|" /bin/echo OK
./a.out blah "|" /bin/echo OK ";"
./a.out ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" blah "|" /bin/echo OK ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";"
./a.out cd ";" /bin/ls
./a.out /bin/ls "|" /usr/bin/grep microshell "|" /usr/bin/grep micro "|" /usr/bin/grep shell "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|"


#!/bin/bash

# Define executable name (change if needed)
EXEC="./a.out"

echo "Running microshell tests..."

$EXEC /bin/ls
$EXEC /bin/ls microshell.c
$EXEC /bin/ls salut

$EXEC /bin/echo Hello ";" /bin/echo World

echo "\nTest 5: Multiple ; separators"
$EXEC ";" ";" ";" /bin/echo OK ";"

echo "\nTest 6: cd followed by ls"
$EXEC cd ";" /bin/ls

echo "\nTest 7: ls piped to grep"
$EXEC /bin/ls "|" /usr/bin/grep microshell

echo "\nTest 8: Chained pipes"
$EXEC /bin/ls "|" /usr/bin/grep microshell "|" /usr/bin/grep micro

echo "\nTest 9: Pipe into cat -n"
$EXEC /bin/ls "|" /usr/bin/grep micro "|" /bin/cat -n

echo "\nTest 10: Mixed pipes and ;"
$EXEC /bin/ls "|" /usr/bin/grep micro ";" /bin/echo Done

echo "\nTest 11: Invalid command before valid one"
$EXEC blah "|" /bin/echo OK

pipe
$EXEC "|" /bin/ls
$EXEC /bin/ls "|"
$EXEC /bin/ls "|" /usr/bin/grep microshell "|" /usr/bin/grep shell "|" /usr/bin/grep micro "|" /usr/bin/grep micro
