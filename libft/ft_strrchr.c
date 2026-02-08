#include "libft.h"

char	*ft_strrchr(const char *s, int c)
{
	size_t	i;

	i = 0;
	i = ft_strlen(s);
	if (c == '\0')
		return ((char *) &s[i]);
	while (i > 0)
	{
		if ((unsigned char) s[i - 1] == (unsigned char) c)
		{
			return ((char *) &s[i - 1]);
		}
		i--;
	}
	if (s[i] == c)
		return ((char *) &s[i]);
	return (NULL);
}
