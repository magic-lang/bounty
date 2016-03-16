sum := 0

version (A && B) {
	sum += 1
}

version (!A && !B) {
	sum += 2
}

version (A && !B) {
	sum += 4
}

version (!B && A) {
	sum += 8
}

version (A && !A) {
	sum -= 1000
}

version (!A && A) {
	sum -= 1000
}

version (!A && !B && !C) {
	sum += 16
}

version (A || B || C) {
	sum += 32
}

version (!A || !B || !C) {
	sum += 64
}

sum toString() println()

/*
Compiling with the following flags should yield the following sums:

None		2+16+64		= 82		(Currently: -910)
-DA			4+32+64		= 100		(Currently: 44)
-DB			32+64		= 96		(Currently: -878)
-DC			2+32+64		= 98		(Currently: -942)
-DA -DB		1+32+64		= 97		(Currently: 51)
-DA -DB -DC	1+32		= 33		(Currently: 35)
*/
