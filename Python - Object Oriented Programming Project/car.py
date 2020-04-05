# Implementation of the car object.

class Car(object):
        
    def __init__(self):
        self.__make = ''
        self.__model = ''
        self.__colour = ''
        self.__mileage = 0
        		
		
# In the following code we are defining Make of the car.
    def getMake(self):
        return self.__make
		
# In the following code we are defining Model of the car.
	def getModel(self):
		return self.__model

# In the following code we are defining Colour of the car.
    def getColour(self):
        return self.__colour
		
# In the following code we are defining Mileage of the car.
    def getMileage(self):
        return self.__mileage
				
# Setting the Make of the car. 
    def setMake(self, make):
        self.__make = make
		
# Setting the Model of the car. 	
	def setModel(self, model):
		self.__model = model
		
# Setting the Colour of the car. 
    def setColour(self, colour):
        self.__colour = colour
		
# Setting the Mileage of the car. 
    def setMileage(self, mileage):
        self.__mileage = mileage
		

    def paint(self, colour):
        self.__colour = colour
        return self.__colour
		
# In the following code we are defining Mileage after car is being moved.
    def move(self, distance):
        self.__mileage = self.__mileage + distance
        return self.__mileage

		
		
		
		
# Initializing Petrol Car and again using getter and setter methods to access it's private instance variables.
class PetrolCar(Car):

    def __init__(self):
        Car.__init__(self)
        self.__numberCylinders = 1

    def getNumberCylinders(self):
        return self.__numberCylinders

    def setNumberCylinders(self, value):
        self.__numberCylinders = value
	
		
# Initializing Diesel Car and again using getter and setter methods to access it's private instance variables.
class DieselCar(Car):

    def __init__(self):
        Car.__init__(self)
        self.__numberCylinders = 1

    def getNumberCylinders(self):
        return self.__numberCylinders

    def setNumberCylinders(self, value):
        self.__numberCylinders = value
		
		
# Initializing Electric Car and again using getter and setter methods to access it's private instance variables.
class ElectricCar(Car):
    
    def __init__(self):
        Car.__init__(self)
        self.__numberFuelCells = 1

    def getNumberFuelCells(self):
        return self.__numberFuelCells

    def setNumberFuelCells(self, value):
        self.__numberFuelCells = value
		
		
# Initializing Hybrid Car and again using getter and setter methods to access it's private instance variables.
class HybridCar(Car):

    def __init__(self):
        Car.__init__(self)
        self.__numberCylinders_Cells = 1

    def getNumberCylinders_Cells(self):
        return self.__numberCylinders_Cells

    def setNumberCylinders_Cells(self, value):
        self.__numberCylinders_Cells = value
