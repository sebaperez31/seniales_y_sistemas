# -*- coding: utf-8 -*-
"""
Editor de Spyder

Este es un archivo temporal.
"""

import numpy as np
import matplotlib.pyplot as plt

n = np.arange(0, 20, 1)
x = np.cos(2 * np.pi * n / 12)
plt.stem(n, x)

