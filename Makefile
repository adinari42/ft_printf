# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adinari <adinari@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/25 22:47:11 by adinari           #+#    #+#              #
#    Updated: 2022/05/12 21:40:01 by adinari          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS=	ft_puthex.c ft_putnbr.c ft_putptr.c ft_putunsigned.c\
		ft_printf.c

OBJS=$(SRCS:.c=.o)

CC = cc
CFLAG = -Wall -Wextra -Werror

all: $(NAME)

bonus: all

$(NAME) : $(OBJS)
	ar rcs $(NAME) $(OBJS)
	
%.o : %.c
	@$(CC) $(CFLAG) -c $^ -o $@ 
clean:
	@rm -f $(OBJS)

norm:
	@norminette *.c *.h

fclean: clean
	@rm -f $(NAME)

re: fclean all
.PHONY: all clean fclean re
