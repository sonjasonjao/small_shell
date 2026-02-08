#include "libft.h"

int	ft_strncmp(const char *s1, const char *s2, size_t n)
{
	unsigned int		i;
	const unsigned char	*str1;
	const unsigned char	*str2;

	i = 0;
	if (n == 0)
		return (0);
	str1 = (const unsigned char *)s1;
	str2 = (const unsigned char *)s2;
	while (((str1[i] || str2[i]) != '\0') && i < n)
	{
		if (str2[i] != str1[i])
			return (str1[i] - str2[i]);
		i++;
	}
	return (0);
}
