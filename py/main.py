import numpy as np
import matplotlib.pyplot as plt





# high frequency non discrete sinewave signal 
# with amplitude  0.5 and frequency 1000 Hz
# sampling frequency is 100 Hz
# time duration is 20 seconds
t = np.linspace(0, 20, 2000)
x = 0.5*np.sin(2*np.pi*1000*t)
color = '#26876B'
# plot the signal but with stroke width 0.5
plt.plot(t, x,color=color, linewidth=2)
#no show labels
plt.axis('off')
# scale the axis
plt.axis([0, 20, -1, 1])
# save as svg image
plt.savefig('signal.svg')