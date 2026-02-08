#include "libft.h"

void	*ft_memset(void *s, int c, size_t n)
{
	unsigned char	*dest;

	dest = (unsigned char *)s;
	while (n > 0)
	{
		*dest = (unsigned char)c;
		dest++;
		n--;
	}
	return (s);
}
