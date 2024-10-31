import numpy as np
import matplotlib.pyplot as plt

# Parámetros
T = 0.01  # Periodo
w0 = 2*np.pi / T 
N = 1500
Ts = 0.001
n = np.array(range(N))
t = Ts*n
x = np.cos(w0*t)

X = np.fft.fft(x)
k = np.array(range(N))

plt.figure()
plt.stem(t, x, linefmt='b-', markerfmt='bo', basefmt='gray')
plt.title(f'Coseno de {1/T} Hz muestreado a {1/Ts} Hz')
plt.xlabel('Tiempo')
plt.ylabel('Amplitud')

plt.figure()
plt.stem(k, np.abs(X), linefmt='b-', markerfmt='bo', basefmt='gray')
plt.title(f'FFT de {N} puntos')
plt.xlabel('K')
plt.ylabel('Amplitud')

plt.show()