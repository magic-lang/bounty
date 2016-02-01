



- Man kan inte skapa arrayer med generiska klasser https://github.com/fasterthanlime/rock/issues/970

- `$`-operatorn verkar inte funka typ alls https://github.com/fasterthanlime/rock/issues/968

- Assigna värdet från en property med `::=` och covers funkar inte https://github.com/fasterthanlime/rock/issues/940

- `(x, y, z) doSomething()` borde fungera som en shorthand för `x doSomething(); y doSomething(); z doSomething()`

- Versionsflaggor med `!` som typ `version (!windows && !linux)` parsas inte korrekt

- Det bör inte vara tillåtet att overloada funktioner med en helt annan signatur (eller det kanske löste sig med `override`)?
 
- All c-kod genererad från rock som kompileras med `-Wall -Wextra` ger miljontals varningar. Det är inte så snyggt för ett bibliotek, som ju vi bygger
 
- Stöd för `interface`?
 
- Kunna extenda generiska klasser (so close: https://github.com/fasterthanlime/rock/pull/969)
 
- Rock lyckas inte förstå uttryck med för många properties, typ `expect(0, is not not not equal to(2.0f))`. 
Har dock inte kollat alltför noga om det egentligen beror på en bugg i `Fixture` än.

- Fungerande `template`s? (https://github.com/fasterthanlime/rock/issues/961)
 
- Properties är onödigt långsamma att kompilera (https://github.com/fasterthanlime/rock/issues/909)

- Det här med att skicka generiska funktioner som argument till andra funktioner (typ `fold`, `map` etc.) har aldrig funkat på något vettigt sätt

- Ev. ta bort möjligheten till typ `|x| x toString()` eftersom de alltid läcker.
