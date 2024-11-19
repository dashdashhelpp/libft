/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lnorris <lnorris@student.hive.fi>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/30 18:14:44 by lnorris           #+#    #+#             */
/*   Updated: 2024/10/30 18:17:27 by lnorris          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strrchr(const char *s, int c)
{
	int		i;
	char	*temp;

	i = 0;
	temp = (char *)s;
	if ((c < 0) || (c > 127))
		return (NULL);
	while (s[i])
	{
		if (s[i] == c)
			temp = &((char *)s)[i];
		i++;
	}
	if (s[i] == c)
		return (&((char *)s)[i]);
	else if (*temp == c)
		return (temp);
	return (NULL);
}
