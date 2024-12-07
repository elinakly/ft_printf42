NAME = libftprintf.a

SRC = ft_printf.c \
      ft_putchar.c \
      ft_putnbr.c \
      ft_putstr.c \
      ft_heximal.c \
      ft_undecimal.c 

OBJ = $(SRC:.c=.o)
CFLAGS = -Wall -Werror -Wextra
CC = cc

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ) 

$(OBJ): %.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all re fclean clean