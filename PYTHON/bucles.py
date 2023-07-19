'''1. Ejercicio: Imprime los números del 1 al 10 usando un bucle for'''

numeros = (range(1, 11))
for numero in numeros:
    print(numero)

'''2. Ejercicio: Imprime los números pares del 1 al 20 usando un bucle while .'''
numeros = 1
while numeros <= 20:
    if numeros % 2 == 0:
        print(numeros)
    numeros += 1

'''3. Ejercicio: Usa un bucle para calcular la suma de los números del 1 al 100.'''
numeros = (range(1, 101))
total = 0
for suma in numeros:
    total += suma
print(total)
