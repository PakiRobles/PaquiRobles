'''. Ejercicio: Define una función que tome una lista y retorne una nueva lista con
los elementos únicos de la lista original.
'''


def unico(lista):
    return list(set(lista))


lista = [3, 5, 25, 5, 6, 8, 9, 3]

print(unico(lista))
