'''5. Ejercicio: Define una función que tome una cadena y cuente el número de
vocales en la cadena.'''


def cuenta(vocales):
    return sum(1 for letra in vocales if letra.lower() in 'aeiou')


print(cuenta('supercalifragili'))
