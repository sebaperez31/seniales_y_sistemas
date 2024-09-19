# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import numpy as np
import matplotlib.pyplot as plt

# Número de puntos
N = 400

# Frecuencia del coseno
f = 2 * np.pi * 3 / 20

# Vector de tiempo
t = np.arange(N)

# Señal de coseno
cos_signal = 10 * np.cos(f * t)

# Calcular la FFT
fft_result = np.fft.fft(cos_signal)

# Calcular la frecuencia correspondiente a cada punto de la FFT
freq = np.fft.fftfreq(N)

# Magnitud de la FFT
magnitude = np.abs(fft_result)

# Graficar la señal original y su FFT
plt.figure(figsize=(12, 6))

# Señal original
plt.subplot(2, 1, 1)
plt.plot(t, cos_signal)
plt.title("Señal de coseno")
plt.xlabel("Tiempo")
plt.ylabel("Amplitud")

# FFT de la señal
plt.subplot(2, 1, 2)
plt.plot(freq, magnitude)
plt.title("FFT de la señal de coseno")
plt.xlabel("Frecuencia")
plt.ylabel("Magnitud")
plt.xlim(-0.1, 0.1)  # Limitar el eje x para ver mejor los picos

plt.tight_layout()
plt.show()
