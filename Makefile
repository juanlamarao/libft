# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: juolivei <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/22 13:05:47 by juolivei          #+#    #+#              #
#    Updated: 2020/01/27 10:23:32 by juolivei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
RM = /bin/rm
FLAGS = -Wall -Werror -Wextra -c

FILES_C += ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
		   ft_memchr.c ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c \
		   ft_strchr.c ft_strrchr.c ft_strnstr.c ft_strncmp.c ft_atoi.c \
		   ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
		   ft_toupper.c ft_tolower.c ft_calloc.c ft_strdup.c
FILES_C += ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
		   ft_strmapi.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
		   ft_putnbr_fd.c
FILES_C += ft_strcpy.c ft_strcat.c
B_FILES_C += ft_lstnew.c ft_lstadd_front.c ft_lstsize.c \
			 ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c \
			 ft_lstclear.c ft_lstiter.c ft_lstmap.c

FILES_O += ft_memset.o ft_bzero.o ft_memcpy.o ft_memccpy.o ft_memmove.o \
		   ft_memchr.o ft_memcmp.o ft_strlen.o ft_strlcpy.o ft_strlcat.o \
		   ft_strchr.o ft_strrchr.o ft_strnstr.o ft_strncmp.o ft_atoi.o \
		   ft_isalpha.o ft_isdigit.o ft_isalnum.o ft_isascii.o ft_isprint.o \
		   ft_toupper.o ft_tolower.o ft_calloc.o ft_strdup.o
FILES_O += ft_substr.o ft_strjoin.o ft_strtrim.o ft_split.o ft_itoa.o \
		   ft_strmapi.o ft_putchar_fd.o ft_putstr_fd.o ft_putendl_fd.o \
		   ft_putnbr_fd.o
FILES_O += ft_strcpy.o ft_strcat.o
B_FILES_O += ft_lstnew.o ft_lstadd_front.o ft_lstsize.o \
			 ft_lstlast.o ft_lstadd_back.o ft_lstdelone.o \
			 ft_lstclear.o ft_lstiter.o ft_lstmap.o

all: $(NAME)

$(NAME): $(FILES_C) $(FILES_O)
	ar rc $(NAME) $(FILES_O)
	ranlib $(NAME)

$(FILES_O):
	$(CC) $(FLAGS) $(FILES_C)

bonus: $(B_FILES_C) $(B_FILES_O)
	ar rc $(NAME) $(B_FILES_O)
	ranlib $(NAME)

$(B_FILES_O):
	$(CC) $(FLAGS) $(B_FILES_C)

clean:
	$(RM) -f $(FILES_O) $(B_FILES_O)
	$(RM) -f libft.h.gch

fclean: clean
	$(RM) -f $(NAME)

re: fclean all
