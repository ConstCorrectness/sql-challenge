import csv
import glob
import pathlib


csv_files = glob.glob('data/*.csv')
tables = [pathlib.Path(x).stem for x in csv_files]

reader = csv.DictReader(open(csv_files[0]))

for x in reader:
  print(x)