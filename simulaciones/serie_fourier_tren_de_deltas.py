# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 18:22:46 2024

@author: usuario
"""

import numpy as np
import matplotlib.pyplot as plt

# Parámetros
T = 1  # Periodo
t = np.linspace(-T/10, T/10, 5000)  # Tiempo
N = 100  # Número de términos de la serie de Fourier

# Frecuencia angular
omega = 2 * np.pi / T

# Inicialización de la señal
square_wave = np.ones_like(t)

# Serie de Fourier 
for n in range(1, N, 1):  # Términos impares
    square_wave += 2 * np.cos(n * omega * t)

# Graficamos la señal
plt.plot(t, square_wave)
plt.title(f'Onda Cuadrada Aproximada con {N} Términos de Fourier')
plt.xlabel('Tiempo')
plt.ylabel('Amplitud')
plt.grid(True)
plt.show()