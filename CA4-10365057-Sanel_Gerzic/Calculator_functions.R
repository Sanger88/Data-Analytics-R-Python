
# Conversion of Calculator program from python to RStudio.
# 11 different calculator functions are listed bellow.

#--------------------------------------------------------------------#


#1. Factorial function.

    factorial_function <- function(x) {
      return(paste("The factorial of", x, "is", (factorial(x))))
    }

    #  Test cases for factorial function. 
    
    factorial_function(5)  # Returns the value of 120.
    factorial_function(1)  # Returns value of 1. 
    factorial_function(6)  # Returns value of 720.
    factorial_function(10) # Returns value of 3628800. 
    
#######################################################################
  
#2. Add function
  
    add_function <- function(x,y) {
      return(paste("The sum of" ,x,"and" ,y, "is", round(x+y, digits = 3)))
    }
    
    #  Test cases for add function. 
    
    add_function(2,2)      # Returns value of 4.
    add_function(4,-1)     # Returns value of 3.
    add_function(-2,2)     # Returns value of 0.
    add_function(-2,-2)    # returns value of -4.
    add_function(0.5,1.5)  # Returns value of 2. 
    
#######################################################################
  
#3. Subtract function
  
    subtract_function <- function(x,y) {
      return(paste("The subtraction of" ,y, "from" ,x, "is", round(x-y, digits = 3)))
    }

    #  Test cases for subtract function. 
    
    subtract_function(6,2)     # Returns value of 4.
    subtract_function(6,-12)   # Returns value of 18.
    subtract_function(-6,-10)  # Returns value of 4.
    subtract_function(-2,2)    # Returns value of -4.
    subtract_function(2,3)     # Returns value of -1.
    subtract_function(0.5,1.5) # Returns value of -1. 
    
#######################################################################

  
#4. Multiply function

    multiply_function <- function(x,y) {
      return(paste("The multiplication of" ,x, "and" ,y, "is", round(x*y, digits = 3)))
    }
  
    #  Test cases for multiply function. 
    
    multiply_function(2,2)      # Returns value of 4.
    multiply_function(-2,-2)    # Returns value of 4.
    multiply_function(-2,2)     # Returns value of -4.
    multiply_function(2,0)      # Returns value of 0.
    multiply_function(0.5,0.5)  # Returns value of 0.25. 
    
#######################################################################

  
#5. Divide function

    divide_function <- function(x,y) {
      return(paste("The division of" ,x, "and" ,y, "is", round(x/y, digits = 3)))
    }
  
    #  Test cases for divide function. 
    
    divide_function(10,2)      # Returns value of 5.
    divide_function(-2,-2)     # Returns value of 1.
    divide_function(-2,2)      # Returns value of -1.
    divide_function(0,2)       # Returns value of 0.
    divide_function(2.5,0.5)   # Returns value of 5. 
    
#######################################################################

  
#6. Exponent function
  
    exponent_function <- function(x,y) {
      return(paste("The exponentiation of" ,x, "and" ,y, "is", round(x^y, digits = 3)))
    }

    #  Test cases for exponent function. 
    
    exponent_function(2,3)      # Returns value of 8.
    exponent_function(-2,3)     # Returns value of -8.
    exponent_function(2,0)      # Returns value of 1.
    exponent_function(0,2)      # Returns value of 0.
    exponent_function(2.5,-0.5) # Returns value of 0.632. 
    
#######################################################################
    
#7. Square function
    
    square_function <- function(x) {
      return(paste("The square number of" ,x, "is", round(x^2, digits = 3)))
    }

    #  Test cases for square function. 
    
    square_function(4)      # Returns value of 16.
    square_function(5)      # Returns value of 25.
    square_function(0)      # Returns value of 0.
    square_function(-0.5)   # Returns value of 0.25. 
    
#######################################################################  
      

#8. Square root function   
    
    squareroot_function <- function(x) {
      return(paste("The square root of" ,x, "is", round(x^(1/2), digits = 3)))
    }
    
    #  Test cases for square root function. 
    
    squareroot_function(16)     # Returns value of 4.
    squareroot_function(25)     # Returns value of 5.
    squareroot_function(0)      # Returns value of 0.
    squareroot_function(2.5)    # Returns value of 1.581. 
    
#######################################################################


#9. Cube function
    
    cube_function <- function(x) {
      return(paste("The cube of" ,x, "is", round(x^3, digits = 3)))
    }
    
    #  Test cases for cube function. 
    
    cube_function(3)      # Returns value of 27.
    cube_function(-3)     # Returns value of -27.
    cube_function(0)      # Returns value of 0.
    cube_function(2.5)    # Returns value of 15.625. 
    
#######################################################################
    
#10. Cube root function
    
    cuberoot_function <- function(x) {
      return(paste("The cube root of" ,x, "is", round(x^(1/3), digits = 3)))
    }
    
    #  Test cases for cube root function. 
    
    cuberoot_function(8)  # Returns value of 2.
    cuberoot_function(-8) # Returns value of NaN.
    cuberoot_function(0)  # Returns value of 0.
    cuberoot_function(9.5)# Returns value of 2.118. 
    
#######################################################################
    
#11. Sine function -(pi-3.141592653589793/180 degress = 0.0174532925)
    
    sine_function <- function(x) {
      return(paste("The sine of" ,x, "is", round(sin(x*0.0174532925), digits = 3)))
    }
    
    #  Test cases for cube root function. 
    
    sine_function(90)  # Returns value of 1.
    sine_function(45)  # Returns value of 0.707.
    sine_function(30)  # Returns value of 0.5.         
    sine_function(180) # Returns value of 0.       
    sine_function(270) # Returns value of -1.
    sine_function(-359) # Returns value of 0.017.
###############################################################################

    