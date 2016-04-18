ExampleClass: class <T> {
	value: T
	init: func (=value)
}

extend ExampleClass<T> {
	someMethod: func -> Int {
		result := 0
		match (T) {
			case Int => result = value as Int
			case String => result = 1337
		}
		result
	}
	typeName: func -> String { T name }
}

myClass := ExampleClass<Int> new(42)
myName := myClass typeName()
myInt := myClass someMethod()
raise(myName != "Int", "typeName is not Int but %s" format(myName))
raise(myInt != 42, "someMethod did not return 42 but %d" format(myInt))

myClass free()
myName free()

myClass = ExampleClass<String> new("foobar")
myName = myClass typeName()
myInt = myClass someMethod()
raise(myName != "String", "typeName is not String but %s" format(myName))
raise(myInt != 1337, "someMethod did not return 1337 but %d" format(myInt))

myClass free()
myName free()

myClass = ExampleClass<Bool> new(true)
myName = myClass typeName()
myInt = myClass someMethod()
raise(myName != "Bool", "typeName is not Bool but %s" format(myName))
raise(myInt != 0, "someMethod did not return 0 but %d" format(myInt))

myClass free()
myName free()
