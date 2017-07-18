
#CA4 part B - involves modifying calculator class from CA1 to ensure that it can handle lists of data.
	
#Functions are refactored / rewritten, so that they can handle lists.
#Lambda, map, filter, reduce and list comprehension are being used in order to achieve this.

#________________________________________________________________________________________________________________________________________________#

import math
print

# 1. Add calculations - We used "lambda" to create function and we used "reduce" to get single value result when handling list of data.

print " 1. Add calculations handling list of data." 
print
add = reduce(lambda x, y: x+y, [2,4,6,8,10,12,14])
print "    Values of list of [2,4,6,8,10,12,14] were added and reduced to a single value", add # Return value is 56.
print"___________________________________________________________________________________________________________________________"
print
print



# 2. Subtract calculations - We used "lambda" to create function and we used "reduce" to get single value result when handling list of data.
  
print " 2. Subtract calculations handling list of data." 
print
sub = reduce(lambda x, y: x-y, [2,4,6,8,10,12,14])
print "    Values of list of [2,4,6,8,10,12,14] were subtracted and reduced to a single value", sub # Return value is -52.
print"___________________________________________________________________________________________________________________________"
print
print



# 3. Multiplication calculations -  Again we used "lambda" to create function and we used "reduce" to get single value result when handling list of data.

print " 3. Multiplication calculations handling list of data." 
print
multi = reduce(lambda x, y: x*y, [2,4,6,8,10,12,14])
print "    Values of list of [2,4,6,8,10,12,14] were multiplied and reduced to a single value", multi # Return value is 645120.
print"___________________________________________________________________________________________________________________________"
print
print



# 4. Divide calculations - We used "map" to repeat same function in this example of division of two lists of numbers.
    
print " 4. Divide calculations handling list of data." 
print

def divide(x,y):
	if x == 0:
		return 0
	elif y == 0:
		return "NaN"
	else:
		return x/y
		
x = [14,12,10,8,6,4,2,0,5]
y = [7,6,5,4,3,2,1,6,0]

result = map(divide,x,y)
print "    Two list of numbers are mapped  and divide function is being used between them, the results are the following.", result # Return values are [2,2,2,2,2,2,2,0,NaN].
print"___________________________________________________________________________________________"
print
print



# 5. Square calculations - We used "map" and "lambda" to repeat square function on a lists of numbers.
 	 
print " 5. Square calculations handling list of data." 
print

def square(numbers):
	return map(lambda x: x**2, numbers)
print "    The results after mapping and squaring this list [2,4,6,8,10] are:", square([2,4,6,8,10]) # Return values are 4,16,36,64,100.
print"___________________________________________________________________________________________"
print
print



# 6. Square root calculations - We used "map" and "lambda" to repeat square root function on a lists of numbers.

 	 
print " 6. Square root calculations handling list of data." 
print

def square_root(numbers):
	return map(lambda x: math.sqrt(x), numbers)
print "    The results after mapping and using square root function on this list [4,16,36,64,100] are:", square_root([4,16,36,64,100]) # Return values are 2,4,6,8,10.
print"___________________________________________________________________________________________"
print
print



# 7. Cube calculations - We used "map" and "lambda" to repeat cube function on a lists of numbers.
	
print " 7. Cube calculations handling list of data." 
print

def cube(numbers):
	return map(lambda x: x**3, numbers)
print "    The results after mapping and using cube function on this list [2,4,6,8,10] are:", cube([-2,4,6,8,10]) # Return values are -8,64,216,512,1000.
print"___________________________________________________________________________________________"
print
print



# 8. Cube root calculations - We used "map" and "lambda" to repeat cube root function on a lists of numbers.

print " 8. Cube root calculations handling list of data." 
print

def cube_root(numbers):
	return map(lambda x: x**0.3333333333333333, numbers)
print "    The results after mapping and using cube root function on this list [8,27] are:", cube_root([8,27]) # Return values are 2,3.
print"___________________________________________________________________________________________"
print
print



# 9. Exponential calculations - We used "map"  to repeat exponential function on a lists of numbers. 

print " 9. Exponential calculations handling list of data." 
print

def exponent(x,y):
	return x**y

x = [2,3,4,5,6,7]
y = [2,3,4,5,6,7]

result = map(exponent,x,y)
print "    The exponential values after mapping lists are:", result # Return values are 4,27,256,3125,46656,823543.
print"___________________________________________________________________________________________"
print
print



# 10. An example of  list comprehension use.

print " 10. List comprehension." 
print

list1 = [1,3,5,7,9]
list2 = [2,4,6,8,10]

new_list = [(x,y) for x in list1 for y in list2]

print "    List comprehension from values of two lists creates a new list we the following values:", new_list 
print"___________________________________________________________________________________________"