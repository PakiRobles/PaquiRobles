'''10. Ejercicio: Define una función que reciba dos listas y retorne la intersección de
ambas (los elementos que están en las dos listas).'''

list1 = [1, 2, 3, 4, 5]
list2 = [5, 6, 7, 8, 9, 10]


def combinacion(list1, list2):
    return list(set(list1) & set(list2))


print(combinacion(list1, list2))
