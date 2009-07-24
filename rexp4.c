/*
 * $MawkId: rexp4.c,v 1.4 2009/07/12 18:26:22 tom Exp $
 */
#include "mawk.h"
#include "rexp.h"
#include "field.h"

char *
is_string_split(PTR q, unsigned *lenp)
{
    STATE *p = (STATE *) q;

    if (p != 0 && (p[0].s_type == M_STR && p[1].s_type == M_ACCEPT)) {
	*lenp = p->s_len;
	return p->s_data.str;
    } else
	return (char *) 0;
}
