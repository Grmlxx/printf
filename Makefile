# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alamaoui <alamaoui@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/07 12:58:06 by alamaoui          #+#    #+#              #
#    Updated: 2023/12/07 22:50:54 by alamaoui         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CFLAGS = -Wall -Werror -Wextra

SRCS = 	ft_putchar.c \
		ft_putstr.c \
		ft_putnbr.c \
		ft_puthexl.c \
		ft_puthexu.c \
		ft_putunsigned.c \
		ft_putpointer.c \
		ft_printf.c

OBJS = $(SRCS:.c=.o)

all : $(NAME)

$(NAME) : $(OBJS)

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<
	ar rc $(NAME) $@

clean :
	rm -rf $(OBJS)

fclean : clean
	rm -rf $(NAME)

re : fclean all