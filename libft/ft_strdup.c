#include "libft.h"

char	*ft_strdup(const char *s)
{
	char	*string;
	int		len;
	int		i;

	len = ft_strlen(s);
	string = malloc(sizeof(char) * len + 1);
	if (string == NULL)
		return (NULL);
	i = 0;
	while (s[i] != '\0')
	{
		string[i] = s[i];
		i++;
	}
	string[i] = '\0';
	return (string);
}
