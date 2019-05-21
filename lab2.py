from scipy import constants
import math

class planet:
    def __init__(self, x, y):
        self.a = x
        self.b = y
    
def calculate_eccentricity(planet):
    return math.sqrt(1 - ((planet.b / planet.a) ** 2))

a = planet(8.25, 8.1)
b = planet(8.4, 8)
c = planet(8.5, 7.95)
d = planet(11.45, .75)

print(calculate_eccentricity(a))
print(calculate_eccentricity(b))
print(calculate_eccentricity(c))
print(calculate_eccentricity(d))
