/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putpointer.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alamaoui <alamaoui@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/07 16:00:30 by alamaoui          #+#    #+#             */
/*   Updated: 2023/12/11 22:02:52 by alamaoui         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_putpointer(void *p)
{
	int	len;

	len = 0;
	if (p == NULL)
		return (ft_putstr("0x0"));
	else
	{
		len += ft_putstr("0x");
		len += ft_puthexl((unsigned long)p);
	}
	return (len);
}
