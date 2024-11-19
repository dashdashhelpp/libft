# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lnorris <lnorris@student.hive.fi>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/08 20:13:00 by lnorris           #+#    #+#              #
#    Updated: 2024/11/08 21:17:17 by lnorris          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SOURCES = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_split.c ft_strchr.c ft_strdup.c ft_strjoin.c ft_strlcpy.c ft_strlcat.c ft_strlen.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

BONUSSOURCES = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

CC = gcc

CFLAGS = -Wall -Werror -Wextra

OBJECTS = $(SOURCES:.c=.o)

BONUSOBJECTS = $(BONUSSOURCES:.c=.o)

all: $(NAME)

$(NAME): $(OBJECTS)
	$(AR) -r $@ $?

bonus: $(OBJECTS) $(BONUSOBJECTS)
	$(AR) -r $(NAME) $?

%.o: %.c
	$(CC) -c $(CFLAGS) $?

clean:
	rm -f $(OBJECTS) $(BONUSOBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all

so:
	$(CC) -nostartfiles -fPIC $(CFLAGS) $(SOURCES) $(BONUSSOURCES)
	gcc -nostartfiles -shared -o libft.so $(OBJECTS) $(BONUSOBJECTS)

.PHONY: all clean fclean re bonus