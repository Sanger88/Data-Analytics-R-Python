#Importing unittest.
import unittest



#Importing class car to perform tests. 
from car import Car, PetrolCar, DieselCar, ElectricCar, HybridCar


#Test cases for car. 
class TestCar(unittest.TestCase):
	def car(self):
		self.car = Car()
	
	#Testing that mileage is recorded.		
	def testMileage(self):
		self.car = Car()
		self.assertEqual(0, self.car.getMileage())
		self.car.move(15)
		self.assertEqual(15, self.car.getMileage())
		
	#Testing if right care make is recorded.
	def testMake(self):
		self.car = Car()
		self.assertEqual("", self.car.getMake())
		self.car.setMake("Volkswagen")
		self.assertEqual("Volkswagen", self.car.getMake())
		
		
if __name__ == "__main__":
	unittest.main()
