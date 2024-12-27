import random

names = ['Alice', 'Dezzie', 'Noah', 'Umreen']
sample = random.sample(names, len(names))

for name, i in zip(sample, range(4)):
    print(f"{i+1}: {name}")
