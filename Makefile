# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: htam <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/28 11:49:25 by htam              #+#    #+#              #
#    Updated: 2022/11/28 11:49:27 by htam             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
Library := libft
NAME := libft.a
FLAGS := -Werror -Wall -Wextra
files := ft_isalpha \
		ft_memchr \
		ft_split \
		ft_strlcpy \
		ft_strtrim \
		ft_atoi \
    	ft_isascii \
		ft_memcmp \
		ft_strchr \
		ft_strlen \
		ft_substr \
		ft_bzero \
		ft_isdigit \
		ft_memcpy \
		ft_strdup	\
		ft_strncmp \
		ft_tolower \
		ft_calloc \
		ft_isprint \
		ft_memmove \
		ft_strjoin \
		ft_strnstr \
		ft_toupper \
		ft_isalnum \
		ft_itoa \
		ft_memset \
		ft_strlcat \
		ft_strrchr \
		ft_strmapi \
		ft_striteri \
		ft_putchar_fd \
		ft_putstr_fd \
		ft_putendl_fd \
		ft_putnbr_fd \

files_bonus := ft_lstnew \
		ft_lstadd_front \
		ft_lstsize \
		ft_lstlast \
		ft_lstadd_back \
		ft_lstdelone \
		ft_lstclear \
		ft_lstiter \
		ft_lstmap \

$(NAME):
	gcc -c $(FLAGS) $(files:%=%.c)
	ar -rcs $(NAME) $(files:%=%.o)
bonus:
	gcc -c $(FLAGS) $(files_bonus:%=%.c)
	ar -rcs $(NAME) $(files_bonus:%=%.o)
all: $(NAME)
clean:
	rm -f $(files:%=%.o) $(files_bonus:%=%.o)
fclean:
	rm -f $(files:%=%.o) $(files_bonus:%=%.o)
	rm -f libft.a
re: fclean all