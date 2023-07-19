''' Ejercicio: Define una función que tome un número y retorne la suma de sus
dígitos.'''


def retorno(numero):
    while (numero) > 10:
        return sum(int(digito) for digito in str(numero))


print(retorno(18))
