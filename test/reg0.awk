# $MawkId$
# Test-script for MAWK
###############################################################################
# copyright 1993, Michael D. Brennan
#
# This is a source file for mawk, an implementation of
# the AWK programming language.
#
# Mawk is distributed without warranty under the terms of
# the GNU General Public License, version 2, 1991.
###############################################################################

/return/ {cnt++}
END{print cnt}
