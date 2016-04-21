ExampleClass: class <T> {
	member: T
	totalCount: static Int = 0
	count: Int
	init: func {
		This totalCount += 1
		this count = This totalCount
	}
	increase: func -> Int {
		this count += 1
		this count
	}
}

array := ExampleClass<Int>[10] new()
for (i in 0 .. 10) {
	array[i] increase()
	raise(array[i] count != i + 2, "Element at %d had count=%d" format(i, array[i] count))
}
array free()
