#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t size)
{
	size_t	i;
	size_t	j;
	size_t	srclen;
	size_t	dstlen;

	i = 0;
	j = 0;
	srclen = ft_strlen(src);
	if (!dst && !size)
		return (srclen + size);
	else
		dstlen = ft_strlen(dst);
	if (size <= dstlen)
		return (srclen + size);
	j = dstlen;
	while (src[i] != '\0' && j < (size - 1))
	{
		dst [j] = src[i];
		i++;
		j++;
	}
	dst[j] = '\0';
	return (srclen + dstlen);
}
