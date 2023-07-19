# 1. Ejercicio: Define una función que tome dos números y retorne su suma.
def add_number(numbers):
    sumar = 0
    for number in numbers:
        sumar += number
    return sumar


numbers = (1, 8)
print(add_number(numbers))

# 2. Ejercicio: Defineuna función que tome un número y retorne su factorial.


def factorial(number):
    for fact in range(1, number):
        number *= fact
    return number


number = 5
print(factorial(number))

# 3. Ejercicio: Define una función que tome un número y determine si es primo.


def es_primo(number):
    for primo in range(2, number):
        if number % primo == 0:
            return False
    return True


number = 53
print(es_primo(number))

# 4. Ejercicio: Define una función que reciba una lista de números y retorne la suma
# de ellos.


def suma(list):
    sumar = 0
    for total in (list):
        sumar += total
    return sumar


list = (5, 8, 12)
print(suma(list))

# Ejercicio: Define una función que reciba una cadena de texto y retorne la
# cadena en reversa.


def reverso_texto(cadena):
    return cadena[::-1]


print(reverso_texto("Hola mundo"))
