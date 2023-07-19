'''7. Ejercicio: Define una función que tome una cadena y retorne la cantidad de
letras mayúsculas y minúsculas en la cadena.
'''


def cadena_may_min(frase):
    mayusculas = sum(1 for letra in frase if letra.isupper())
    minusculas = sum(1 for letra in frase if letra.islower())
    return mayusculas, minusculas


print(cadena_may_min('Hola Mundo'))
