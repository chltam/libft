/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: htam <marvin@42.fr>                        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/04 16:24:15 by htam              #+#    #+#             */
/*   Updated: 2022/12/04 16:24:16 by htam             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "libft.h"

static int	wordcount(char const *s, char c)
{
	int	n;
	int	count;

	n = 0;
	count = 0;
	if (n == 0 && s[n])
	{
		if (s[n] != c)
			count++;
		n++;
	}
	while (s[n])
	{
		if (s[n - 1] == c && s[n] != c)
			count++;
		n++;
	}
	return (count);
}

static int	charcount(char const *s, char c)
{
	int	n;

	n = 0;
	while (s[n] != c && s[n])
		n++;
	return (n);
}

static char	**ft_fill(char const *s, char **str, char c)
{
	int		n;
	int		j;
	int		k;

	n = 0;
	j = 0;
	while (s[n])
	{
		if (s[n] != c && (n == 0 || s[n - 1] == c))
		{
			k = 0;
			while (s[n] != c && s[n])
			{
				str[j][k] = s[n];
				n++;
				k++;
			}
			j++;
		}
		n++;
	}
	return (str);
}

char	**ft_split(char const *s, char c)
{
	char	**str;
	int		n;
	int		j;

	n = 0;
	j = 0;
	str = (char **)malloc(sizeof(str) * (wordcount(s, c) + 1));
	if (!str)
		return (NULL);
	str[wordcount(s, c)] = 0;
	while (s[n])
	{
		if (s[n] != c && (n == 0 || s[n - 1] == c))
		{
			str[j] = (char *)malloc(sizeof(char) * (charcount(s + n, c) + 1));
			if (!str[j])
				return (NULL);
			str[j][charcount(s + n, c)] = 0;
			j++;
		}
		n++;
	}
	return (ft_fill(s, str, c));
}
