'''8. Ejercicio: Define una función que tome un número y retorne True si es un
número perfecto, False en caso contrario. Un número perfecto es aquel que es
igual a la suma de sus divisores propios positivos. Por ejemplo, 6 es un número
perfecto porque sus divisores son 1, 2 y 3, y 6 = 1 + 2 + 3.'''


def perfecto(numero):

    return numero == (sum(divisor for divisor in range(1, numero)if numero % divisor == 0))


print(perfecto(6))
