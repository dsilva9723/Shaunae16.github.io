import random, os, csv, sys
import numpy as np
from scipy import stats

def generate_ints(low, high, size):
    return random.sample(range(low, high), size)

def generate_ints_np(low, high, size, seed):
    # create a generator,rng w/ a seed 12345
    rng = np.random.default_rng(seed)
    rints = rng.integers(low, high, size)
    summary = stats.describe(rints)
    return rints.tolist(), summary

def write_to_csv(data, dir_path, file_name):
    fpath = os.path.join(dir_path, f"{file_name}.csv")
    with open(fpath, 'w', encoding='utf-8') as f:
        data.tofile(f, sep = ",")

def read_csv(dir_path, file_name):
    fpath = os.path.join(dir_path, f"{file_name}")
    data = []
    with open(fpath, 'r', encoding='utf-8') as f:
        reader = csv.reader(f)
        try:
            for row in reader:
                data.append(row)
        except csv.Error as e:
            sys.exit(f'file {file_name}, line {reader.line_num}: {e}')
    return data

if __name__ == "__main__":
    low, high, size = 1, 100, 99
    seed = 2345
    #print(f"{generate_ints(low,high,size)}")
    print(f"{generate_ints_np(low,high,size,seed)}")
    write_to_csv(np.array(generate_ints(low,high,size)),'','random_ints')
