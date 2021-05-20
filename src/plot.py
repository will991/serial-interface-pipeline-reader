#!/usr/bin/python

import os
import sys
import matplotlib.dates as md
import matplotlib.pyplot as plt
import pandas as pd
from matplotlib import figure
from matplotlib.animation import FuncAnimation

plt.style.use('fivethirtyeight')

time_vals = []
voltage_vals = []

BASE_DIR = os.path.join(os.path.dirname(__file__), '..')
SOURCE_FILE = sys.argv[1] if len(sys.argv) > 1 else os.path.join(BASE_DIR, 'recording.log')

def animate(i):
    data = pd.read_json(SOURCE_FILE, lines=True)
    time_vals = data['timestamp']
    voltage_vals = data['voltage']
    
    ax = plt.gca()
    dfmt = md.DateFormatter('%H:%M:%S')
    ax.xaxis.set_major_formatter(dfmt)

    plt.cla()
    plt.xticks(rotation=45)
    plt.plot(time_vals, voltage_vals)
    plt.tight_layout()

animation = FuncAnimation(plt.gcf(), animate, interval=1000)
plt.tight_layout()
plt.show()