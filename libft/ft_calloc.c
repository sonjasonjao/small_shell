#include "libft.h"

void	*ft_calloc(size_t nmemb, size_t size)
{
	void	*array;
	size_t	total;

	total = nmemb * size;
	if (nmemb && total / nmemb != size)
		return (NULL);
	array = malloc(total);
	if (array == NULL)
		return (NULL);
	ft_memset(array, 0, total);
	return (array);
}
