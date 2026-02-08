#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	unsigned char	*s1;

	s1 = (unsigned char *)s;
	while (n > 0)
	{
		if (*s1 == (unsigned char) c)
			return (s1);
		s1++;
		n--;
	}
	return (NULL);
}
