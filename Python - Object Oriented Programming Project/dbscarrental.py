print
print "Welcome to DBS car rental, we have the following types of cars in stock to offer."
print


from car import Car, PetrolCar, DieselCar, ElectricCar, HybridCar

#We made that in our stock we have 40 cars, 4 different types, each type of the same make, model and specifications. 


#Petrol car details.
carP = PetrolCar()
carP.setMake("Volkswagen Beetle")
carP.setColour("Blue")
carP.setNumberCylinders(4)
carP.setMileage(1000)
print " Make of Petrol car is      :" + carP.getMake()
print " Colour of the car is       :" + carP.getColour()
print " Number of cylinders        :" + str(carP.getNumberCylinders()) 
print " Mileage of Petrol car is   :" + str(carP.getMileage())
print "_________________________________________"


#Diesel car details.
carD = DieselCar()
carD.setMake("Audi Q7")
carD.setColour("Silver")
carD.setNumberCylinders(4)
carD.setMileage(500)
print " Make of Diesel car is      :" + carD.getMake()
print " Colour of the car is       :" + carD.getColour()
print " Number of cylinders        :" + str(carD.getNumberCylinders()) 
print " Milegae of Diesel car is   :" + str(carD.getMileage())
print "_________________________________________"


#Electric car details.
carE = ElectricCar()
carE.setMake("Nissan Leaf")
carE.setColour("Green")
carE.setNumberFuelCells(4)
carE.setMileage(450)
print " Make of Electric car is    :" + carE.getMake()
print " Colour of the car is       :" + carE.getColour()
print " Number of fuel cells       :" + str(carE.getNumberFuelCells())   
print " Milegae of Electric car is :" + str(carE.getMileage())
print "_________________________________________"


#Hybrid car details.
carH = HybridCar()
carH.setMake("Toyota Prius")
carH.setColour("Yellow")
carH.setNumberCylinders_Cells(4)
carH.setMileage(1500)
print " Make of Hybrid car is      :" + carH.getMake()
print " Colour of the car is       :" + carH.getColour()
print " Number of cylinders/ cells :" + str(carH.getNumberCylinders_Cells()) 
print " Milegae of Hybrid car is   :" + str(carH.getMileage())
print "_________________________________________"

print

#DBS rental has fleet of 40 cars: 20 petrol, 8 diesel, 4 electric and 8 hybrid. 

#We initializied class Carrental object.
class Carrental(object):

    def __init__(self):
		self.petrol_cars = []
		self.diesel_cars = []
		self.electric_cars = []
		self.hybrid_cars = []

# This function is defining current car fleet stock.
    def create_current_stock(self):
        for i in range(20):
           self.petrol_cars.append(PetrolCar())
        for i in range(8):
           self.diesel_cars.append(DieselCar())
        for i in range(4):
           self.electric_cars.append(ElectricCar())
        for i in range(8):
           self.hybrid_cars.append(HybridCar())
	

#This function is counting current car fleetstock.
    def stock_count(self):
        print 'Petrol cars in stock ' + str(len(self.petrol_cars))
        print 'Diesel cars in stock ' + str(len(self.diesel_cars))
        print 'Electric cars in stock ' + str(len(self.electric_cars))
        print 'Hybrid cars in stock ' + str(len(self.hybrid_cars))
		
#This function is informs user about car avalability. 		
    def rent(self, car_list, amount):
		if len(car_list) == 0:
			print
			print 'Not enough cars in stock at the moment, please try again later.'
			print
			return 
		if len(car_list) < amount:
			print
			print "We don't have enough cars of this type to offer."
			print
			return
		total = 0
		while total < amount:
			car_list.pop()
			total = total + 1
	
#This function enables end user to rent a specific type and amount of cars.
    def process_rental(self):
        answer = raw_input('Would you like to rent a car? Please enter y for yes and n for no - y/n :')
        if answer == 'y':
            answer = raw_input('What type of the car would you like? Please enter p for petrol, d for diesel, e for electric and h for hybrid car  -  p/d/e/h :')
            amount = int(raw_input('How many cars would you like? :'))
            if answer == 'p':
                self.rent(self.petrol_cars, amount)
            elif answer == 'd':
				self.rent(self.diesel_cars, amount)
            elif answer == 'e':
                self.rent(self.electric_cars, amount)
            else:
				self.rent(self.hybrid_cars, amount)
				
        self.stock_count()
	
				
#We are allowing user to rent more or to exit interface. 				
carrental = Carrental()
carrental.create_current_stock()
carrental.stock_count()
proceed = 'y'
while proceed == 'y':
    carrental.process_rental()
    proceed = raw_input('Do you want to continue? Please enter y for yes and n for no y/n')
	 
