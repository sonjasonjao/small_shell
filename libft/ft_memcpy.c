#include "libft.h"

void	*ft_memcpy(void *dest, const void *src, size_t n)
{
	unsigned char		*dest_a;
	const unsigned char	*src_a;
	const unsigned char	*end;

	if (!dest && !src)
		return (dest);
	dest_a = (unsigned char *)dest;
	src_a = (const unsigned char *)src;
	end = src_a + n;
	while (src_a < end)
		*dest_a++ = *src_a++;
	return (dest);
}
