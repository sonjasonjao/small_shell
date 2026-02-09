NAME = small_shell
CC = cc
CFLAGS = -Wall -Wextra -Werror
CPPFLAGS ?=
LDFLAGS ?=
LIBFTDIR = ./libft
LIBFT = $(LIBFTDIR)/libft.a

HEADERS = small_shell.h $(LIBFTDIR)/libft.h
BUILTIN_DIR = builtins/
CLEAN_DIR = cleanup/
EXEC_DIR = execution/
EXP_DIR = expansion/
HDOC_DIR = heredoc/
LEX_DIR = lexing/
PARS_DIR = parsing_validation/
SRC = $(BUILTIN_DIR)builtin_cd.c $(BUILTIN_DIR)builtin_echo.c \
	$(BUILTIN_DIR)builtin_env.c $(BUILTIN_DIR)builtin_exit.c \
	$(BUILTIN_DIR)builtin_export_utils_2.c \
	$(BUILTIN_DIR)builtin_export_utils.c $(BUILTIN_DIR)builtin_export.c \
	$(BUILTIN_DIR)builtin_pwd.c $(BUILTIN_DIR)builtin_unset.c \
	$(CLEAN_DIR)cleanup.c $(CLEAN_DIR)cleanup_expand.c \
	$(CLEAN_DIR)cleanup_export_unset.c $(CLEAN_DIR)cleanup_pwd_cd.c \
	$(EXEC_DIR)execution_builtin.c $(EXEC_DIR)execution_close_and_reset.c \
	$(EXEC_DIR)execution_external.c $(EXEC_DIR)execution_handler.c \
	$(EXEC_DIR)execution_redirections.c $(EXEC_DIR)execution_utils.c \
	$(EXP_DIR)expand_append.c $(EXP_DIR)expand_cmd.c \
	$(EXP_DIR)expand_cmd_utils.c $(EXP_DIR)expand_line.c \
	$(EXP_DIR)expand_utils.c $(EXP_DIR)expand_utils_2.c $(EXP_DIR)expand.c \
	$(HDOC_DIR)heredoc.c $(HDOC_DIR)heredoc_tmpfile.c \
	$(HDOC_DIR)heredoc_tmpfile_utils.c $(HDOC_DIR)heredoc_utils.c \
	$(LEX_DIR)lexing_cmd.c $(LEX_DIR)lexing_redir.c $(LEX_DIR)lexing.c \
	$(PARS_DIR)add_spaces.c $(PARS_DIR)add_spaces_utils.c \
	$(PARS_DIR)check_pipes.c $(PARS_DIR)check_pipes_utils.c \
	$(PARS_DIR)input_validation.c $(PARS_DIR)split_to_sections.c \
	$(PARS_DIR)split_to_sections_utils.c $(PARS_DIR)split_to_tokens.c \
	$(PARS_DIR)split_to_tokens_utils.c \
	copy_envp.c init.c main.c signals.c utils.c utils_2.c
OBJ = $(SRC:.c=.o)

all: $(NAME)

$(LIBFT):
	@make all -C $(LIBFTDIR)

$(NAME): $(LIBFT) $(OBJ)
	$(CC) $(OBJ) $(LIBFT) $(LDFLAGS) -o $(NAME) -lreadline

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) $(CPPFLAGS) -I$(LIBFTDIR) -o $@ -c $<

clean:
	@rm -rf $(OBJ)
	@make clean -C $(LIBFTDIR)

fclean: clean
	@rm -rf $(NAME) $(LIBFT)

re: clean all

.PHONY: all, clean, fclean, re
