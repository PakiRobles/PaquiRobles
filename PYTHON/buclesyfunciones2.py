''' Ejercicio: Define una función que tome un número y retorne una lista de sus
divisores.'''


def divisores(n):
    resultado = [i for i in range(1, n + 1) if n % i == 0]
    return resultado


print(divisores(12))
