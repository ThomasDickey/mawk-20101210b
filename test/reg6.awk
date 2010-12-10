# $MawkId$
# Test-script for MAWK
###############################################################################
# copyright 2010, Jonathan Nieder
#
# This is a source file for mawk, an implementation of
# the AWK programming language.
#
# Mawk is distributed without warranty under the terms of
# the GNU General Public License, version 2, 1991.
###############################################################################
BEGIN {
	patterns = "(a?)+bles /(^)+e/a(a?)*b/(a?)+*bles\\."
	n = split(patterns, pattern, "/")
}
{
	for (i = 1; i <= n; i++) {
		if ($0 ~ pattern[i]) {
			match($0, pattern[i])
			printf "%d..%d:%s\n", RSTART, RLENGTH, $0
			printf "reg6.%d<<%s>>\n", i, substr($0,RSTART,RLENGTH)
		}
	}
}
