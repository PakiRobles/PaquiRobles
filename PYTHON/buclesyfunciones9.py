'''9. Ejercicio: Define una función que reciba un número y retorne su representación
en binario.'''


def binario(n):
    return bin(n).replace("0b", "")


print(binario(5))
