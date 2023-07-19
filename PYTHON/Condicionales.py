'''Ejercicio 1: Dado un número, imprime si es positivo o negativo.'''
numero = 4
if numero > 0:
    print('positivo')
else:
    print('negativo')

'''Ejercicio 2: Dado un número, imprime si es par o impar.'''

numero = 8
if numero % 2 == 0:
    print('numero par')
else:
    print('numero impar')

''' Ejercicio 3: Dado tres números, encuentra y muestra el mayor de ellos.'''

numero1 = 10
numero2 = 13
numero3 = 11

if numero1 > numero2 and numero1 > numero3:
    print(numero1)
elif numero2 > numero1 and numero2 > numero3:
    print(numero2)
else:
    print(numero3)
