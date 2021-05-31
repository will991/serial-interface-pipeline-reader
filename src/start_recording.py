import uuid
import sys
import os
import keyboard
import subprocess
import datetime
from time import sleep

USERNAME = 'will'

# Contants
# Defines options by mapping option name to directory path for log files
OPTIONS = [
    ('Gyro Ruhe', ['gyro', 'ruhe']),
    ('Gyro Shake', ['gyro', 'shake']),
    ('Gyro Drive', ['gyro', 'drive']),
    ('Gyro Stop', ['gyro', 'stop']),
]

BASE_DIR = os.path.join(os.path.dirname(__file__), '..')
VECTOR_TOML_FILE_PATH = os.path.join(BASE_DIR, 'vector.toml')
RECORDING_FILE = os.path.join(BASE_DIR, 'recording.log')

print('Select one of the following profiles:')
for index, (option, dirs) in enumerate(OPTIONS):
    print(f'({index + 1}) {option}')

selected_option = -1
while selected_option < 0 or selected_option >= len(OPTIONS):
    selected_option = int(input('Enter the number for recording: ')) - 1

print(f'Selected "{OPTIONS[selected_option][0]}"')
print('Hit space key to start recording...')

ELAPSED_START = datetime.datetime.now()
OUTPUT_FILE_DIR = os.path.join(BASE_DIR, 'data', 'out', OPTIONS[selected_option][1][0], OPTIONS[selected_option][1][1])
PLOT = os.path.join(BASE_DIR, 'src', 'plot.py')
recording_state = 0
pids = []

def out(command):
    result = run(command, stdout=PIPE, stderr=PIPE, universal_newlines=True, shell=True)
    return result.stdout

while recording_state < 2:
    duration = datetime.datetime.now() - ELAPSED_START
    if keyboard.is_pressed(' '):
        sys.stdout.flush()
        if recording_state == 1:
            sys.stdout.write("\033[1F")
            print('Stopped Recording')
            file_name = str(uuid.uuid4())
            log_file = os.path.join(OUTPUT_FILE_DIR, f'{file_name}.log')
            if len(pids) > 0:
                for pid in pids:
                    os.system(f'sudo kill {pid}')
                    
                os.system(f'sudo -u {USERNAME} mkdir -p \"{OUTPUT_FILE_DIR}\"')
                os.system(f'mv {BASE_DIR}/recording.log {log_file}')
            else:
                print('Could not kill process')
                os.system('ps aux | grep "vector --config"')
            sleep(0.1)
            print(f'Saved log to:\n{log_file}')
            exit
        if recording_state == 0:
            print('Started recording')
            ELAPSED_START = datetime.datetime.now()
            process = subprocess.Popen(["vector", "--config", VECTOR_TOML_FILE_PATH])
            pids.append(process.pid)

            print(f'Calling {PLOT}')
            plotProc = subprocess.Popen(['python3', PLOT])
            pids.append(plotProc.pid)

        recording_state += 1
        sleep(0.1)
    
    if recording_state > 0 and duration.seconds % 1 == 0: # log every 1 seconds
        sys.stdout.write("\033[1F") # moves up cursor 1 lines for print stmnt
        print(f'Recording duration: {duration}')
    
