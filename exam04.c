/*

Assignment name  : microshell
Expected files   : microshell.c
Allowed functions: malloc, free, write, close, fork, waitpid, signal, kill, exit, chdir, execve, dup, dup2, pipe, strcmp, strncmp
--------------------------------------------------------------------------------------

Write a program that will behave like executing a shell command
- The command line to execute will be the arguments of this program
- Executable's path will be absolute or relative but your program must not build a path (from the PATH variable for example)
- You must implement "|" and ";" like in bash
	- we will never try a "|" immediately followed or preceded by nothing or "|" or ";"
- Your program must implement the built-in command cd only with a path as argument (no '-' or without parameters)
	- if cd has the wrong number of argument your program should print in STDERR "error: cd: bad arguments" followed by a '\n'
	- if cd failed your program should print in STDERR "error: cd: cannot change directory to path_to_change" followed by a '\n' with path_to_change replaced by the argument to cd
	- a cd command will never be immediately followed or preceded by a "|"
- You don't need to manage any type of wildcards (*, ~ etc...)
- You don't need to manage environment variables ($BLA ...)
- If a system call, except execve and chdir, returns an error your program should immediatly print "error: fatal" in STDERR followed by a '\n' and the program should exit
- If execve failed you should print "error: cannot execute executable_that_failed" in STDERR followed by a '\n' with executable_that_failed replaced with the path of the failed executable (It should be the first argument of execve)
- Your program should be able to manage more than hundreds of "|" even if we limit the number of "open files" to less than 30.

for example this should work:
$>./microshell /bin/ls "|" /usr/bin/grep microshell ";" /bin/echo i love my microshell
microshell
i love my microshell
$>

Hints:
Don't forget to pass the environment variable to execve

Hints:
Do not leak file descriptors!
*/

#include <sys/wait.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

void	ft_fd(char *s, char *a)
{
	while(*s) write (2, s++, 1);
	if (a) while (*a) write (2, a++, 1);
	write (2, "\n", 1);
} //3

void	ft_sys(int ret)
{
	if (ret == -1)
	{
		ft_fd("error: fatal", NULL);
		exit(1);
	}
} //5

void	ft_cd(int ac, char **av)
{
	if (ac != 2)
		ft_fd("error: cd: bad arguments", NULL);
	else if (chdir(av[1]) != 0) //av[0] for real examshell
		ft_fd("error: cd: cannot change directory to ", av[1]); //av[0] for real examshell
} //4

void	ft_wait(int pid)
{
	while(1)
	{
		pid_t wp = waitpid(-1, NULL, WUNTRACED);
		if (wp == -1)
		{
			if (pid != 0) break; //same as errno = ECHILD (man errno)
			ft_sys(-1);
		}
	}
} //9

void	ft_ex(char **av, int i, int tmp, char **env)
{
	av[i] = NULL;
	ft_sys(dup2(tmp, STDIN_FILENO));
	close(tmp);
	execve(av[0], av, env);
	ft_fd("error: cannot execute ", av[0]);
	exit(1);
} //6

void	ft_c(char **av, int i, int *tmp, char **env)
{
	pid_t pid = fork();
	ft_sys(pid);
	if (pid == 0)
		ft_ex(av, i, *tmp, env);
	else
	{
		close(*tmp);
		ft_wait(pid);
		*tmp = dup(STDIN_FILENO);
		ft_sys(*tmp);
	}
} //11

void	ft_p(char **av, int i, int *tmp, char **env)
{
	int fd[2];
	ft_sys(pipe(fd));

	pid_t pid = fork();
	ft_sys(pid);
	if (pid == 0) //child process
	{
		ft_sys(dup2(fd[1], STDOUT_FILENO));
		close(fd[0]);
		close(fd[1]);
		ft_ex(av, i, *tmp, env);
	}
	else //parent process
	{
		close(fd[1]);
		close(*tmp);
		*tmp = fd[0];
	}
} //19

int main(int ac, char **av, char **env)
{
	int i = 0;
	int tmp = dup(STDIN_FILENO);
	ft_sys(tmp);
	(void)ac;

	av++;
	while(*av)
	{
		i = 0; //remember to reset i
		while(av[i] && strcmp(av[i], ";") && strcmp(av[i], "|")) i++;
		if (strcmp(av[0], "cd") == 0)
			ft_cd(i, av);
		else if (i > 0)
		{
			if (!av[i] || strcmp(av[i], ";") == 0)
				ft_c(av, i, &tmp, env);
			else if (strcmp(av[i], "|") == 0)
				ft_p(av, i, &tmp, env);
		}
		av += i + (av[i] ? 1 : 0);
	}
	close(tmp);
	return(0);
} //23
