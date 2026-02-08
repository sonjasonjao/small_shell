# Small shell - a minimal UNIX shell imitating Bash
This project was carried out as a team of two with <a href="https://github.com/kaloliini">@kaloliina</a>.\
We build the program for a 42 curriculum project called minishell at Hive Helsinki. 
The goal of this project was to build a Bash-inspired minimal UNIX shell written in C.
<br><br>
### Quick Start 🚀
1. Clone the repository and compile:
```bash
git clone https://github.com/sonjasonjao/small_shell.git
cd small_shell
make
```
2. Run:
```bash
./small_shell
```
3. When program runs and opens standard input, give any command, such as
```bash
small shell > echo Hello world
Hello world
```
### My areas of responsibility
- Input parsing and validation: splitting into tokens and lexing
- Environment variable expansion handling
- Implementation of heredoc, and built-in commands: cd, echo, env, exit, export, pwd, and unset
- Signal handling: SIGINT, SIGQUIT (and ctrl+D)
<br><br>
### Personal learnings
- UNIX shell commands and how they work under the hood (builtins)
- Input parsing to cover all possible edge cases
- How to implement heredoc functionality
- Basics of signals and handling them
- Collaborating in a project, merging branches, solving merge conflicts, making codebase consistent with two contributors
