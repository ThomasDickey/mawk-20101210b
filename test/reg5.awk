# $MawkId: reg4.awk,v 1.4 2009/07/12 22:23:58 tom Exp $
BEGIN {
	pat1="([[:upper:][:digit:]])+(_[[:upper:][:digit:]]+)+"
	pat2="0x[[:xdigit:]]+"
}
{
	if ($0 ~ /[^[:alnum:]]([[:upper:][:digit:]])+(_[[:upper:][:digit:]]+)+[^[:alnum:]]/)
        {
		match($0,pat1)
		printf "%d..%d:%s\n", RSTART, RLENGTH, $0
		printf ("reg5.1<<%s>>\n",substr($0,RSTART,RLENGTH))
	}
	if ($0 ~ pat1 )
        {
		match($0,pat1)
		printf "%d..%d:%s\n", RSTART, RLENGTH, $0
		printf ("reg5.2<<%s>>\n",substr($0,RSTART,RLENGTH))
	}
	if ($0 ~ pat2 )
        {
		match($0,pat2)
		printf "%d..%d:%s\n", RSTART, RLENGTH, $0
		printf ("reg5.3<<%s>>\n",substr($0,RSTART,RLENGTH))
	}
}
