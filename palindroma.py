# -*- coding: utf-8 -*-
"""
Created on Mon Mar 27 14:37:16 2023

@author: sebastian
"""

palabra = input("Ingrese una palabra: ")

# Eliminar espacios y convertir a minúsculas
palabra = palabra.replace(" ", "").lower()

# Obtener el reverso de la palabra
reverso = ""
i = len(palabra) - 1
while i >= 0:
    reverso += palabra[i]
    i -= 1

# Verificar si la palabra es palíndroma
if palabra == reverso:
    print("La palabra es palíndroma.")
else:
    print("La palabra no es palíndroma.")
