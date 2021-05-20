import random 
import time
import os

OUTPUT_FILE_PATH = os.path.join(os.path.dirname(__file__), '..', 'data', 'output.txt')
INIT_STRING = """--- Available filters and text transformations: colorize, debug, default, direct, hexlify, log2file, nocontrol, printable, send_on_enter, time
--- More details at http://bit.ly/pio-monitor-filters
FRAM_MB85RC_I2C object created
I2C device address 0x50
WP pin number 41
Write protect management: true
Memory Chip initialized
FRAM Device IDs
Manufacturer 0xF00
ProductID 0xF00
Density code 0xF00
Density 64K
Device properties set
...... ...... ......
...... ...... ......
"""

file = open(OUTPUT_FILE_PATH, 'w+')  # w+ is to append new lines to the file
file.write(INIT_STRING)
file.close()

try:
    print('Generating fake records...')
    while True:
        file = open(OUTPUT_FILE_PATH, 'a')  # w+ is to append new lines to the file
        voltage = -0.58 + random.random()
        file.write(f'{voltage},-11.72,23.93,1000.49,3.14,-0.35,-0.73,-9.15,-51.00,-86.10,27.31\n')
        file.close()
        time.sleep(1)
except KeyboardInterrupt as e:
    file.close()
