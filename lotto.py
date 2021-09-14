from intgenerator import read_csv
import csv, os, sys

data = read_csv("", "random_ints.csv")
values = [  int(d) for d in data[0]   ]
#print(values)


#solution 2
"""
# boolean: True False
L = [True, False, True]
print(sum(L))
"""



#solution 1
"""
x = 0
for i in range(len(values)):
    if 0 < values[i] < 100:
        x += 1
        #print(f"{values[i]} in range")
#print(f"{x} values in range")

if x == 99:
    print("Yes")
else:
    print("No")
"""

#Solution 3
# Set (no duplicate)
unique = set() # Constructor
for v in values:
    if 0 < v < 100:
        unique.add(v)
print(unique) 
answer = "Not all coverd" if len(unique) < 99 else "All covered"
print(answer)


