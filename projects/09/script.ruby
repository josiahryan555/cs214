Script started on 2021-04-09 17:58:11-0400
]0;jr232@goldvm10: ~/Desktop/cs214/projects/09/ruby[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/09/ruby[00m$ cat Temp.rb
# Temp.rb is a Temp class and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:         04/08/2021
####################################################

module Temperature

  #################################################################################
  # isValid(double, char) checks if the passed values make a valid temperature 
  # Parameters    temp (double), type (char)
  # Returns       true (if the new temperature is valid (not below absolute 0)) false (if it is not valid)
  #####################################################################################################
  def Temperature.isValid(temp, type)
    if type == 'f' or type == 'F' 
      if temp >= -459.67
        return true
      else
        return false
      end 
    elsif type == 'c' or type == 'C'
      if temp >= -273.15
        return true
      else
        return false
      end 
    elsif type == 'k' or type == 'K'
      if temp >= 0
        return true
      else
        return false
      end
    else                             # invalid myType value
      return  false
    end
  end

  class Temp

    def initialize(temp, step, type)
      @myTemp, @myStep, @myType = temp, step, type
    end

    ##############################################################################
    # Accessor and Mutator functions, will do the one specified by the user
    # To call: temp.myTemp = 100.0 (mutator) or temp.myTemp (accessor)
    ##############################################################################
    attr_accessor(:myTemp, :myStep, :myType)

    
    #################################################################################
    # getFahrenheit() returns a new Temp object converted to Fahrenheit
    # Returns a new Temp object converted to Fahrenheit
    #################################################################################
    def getFahrenheit()

      if myType == 'f' or myType == 'F'
        return Temp.new(myTemp, myStep, 'f')
      elsif myType == 'c' or myType == 'C'
        return Temp.new(myTemp * 9.0/5.0 +32.0, myStep, 'f')
      else 
        return  Temp.new(((myTemp - 273.15) *9.0/5.0 +32.0), myStep, 'f')
      end
    end

    #################################################################################
    # getCelsius() returns a new Temp object converted to Celsius
    # Returns  a new Temp object converted to Celsius
    #################################################################################
    def getCelsius()
      if myType == 'f' or myType == 'F'
        return Temp.new(((myTemp - 32.0) * 5.0/9.0), myStep, 'c')
      elsif myType == 'c' or myType == 'C'
        return Temp.new(myTemp, myStep, 'c')
      else 
        return  Temp.new((myTemp - 273.15), myStep, 'c')
      end
    end

    #################################################################################
    # getKelvin() returns a new Temp object converted to Kelvin
    # Returns  a new Temp object converted to Kelvin
    #################################################################################
    def getKelvin()
      if myType == 'f' or myType == 'F'
        return Temp.new(((myTemp - 32.0) * 5.0/9.0) +273.15, myStep, 'k')
      elsif myType == 'c' or myType == 'C'
        return Temp.new(myTemp + 273.15, myStep, 'k')
      else 
        return  Temp.new(myTemp, myStep, 'k')
      end
    end

    ############################################################################################################################################################
    # inputTemp() gets a temp and type from the user, and returns a copy of this object modified to those values if they are valid (not below absolute 0)
    # Returns  a copy of this object with the user inputed values if that temp is valid (not below absolute 0)
    ##############################################################################################################################################################
    def inputTemp()
      userInput = gets().chomp.split(" ")# .chomp removes the new line (\n), split(" ") splits the string into an array

      newTemp = userInput[0].to_f   # .to_f (to float)
      newType = userInput[1]
      
      if Temperature.isValid(newTemp, newType) 
        return Temp.new(newTemp, myStep, newType)
      else
        puts "invalid temperature passed, temperture object not changed"
        return self
      end 
    end

    ############################################################################################################################################################
    # outputTemp() outputs the temperature of the object in the form "98.6 f"
    # Returns  nothing
    ##############################################################################################################################################################
    def outputTemp()
      puts "%.2f k   %.2f c   %.2f f " % [getKelvin.myTemp, getCelsius.myTemp, getFahrenheit.myTemp]
    end

    ############################################################################################################################################################
    # raise()  returns a copy of this temperature object raised by myStep
    # Returns  a copy of this temperature object raised by myStep
    ##############################################################################################################################################################
    def raise()
      if Temperature.isValid(myTemp+myStep, myType)
        return Temp.new(myTemp+myStep, myStep, myType)
      else 
        puts "raise() would cause Temperature object to become invalid (below absolute 0), raise denied"
        return self 
      end
    end

    #######################################################################################
    # lower()  returns a copy of this temperature object lowered by myStep
    # Returns  a copy of this temperature object lowered by myStep
    #######################################################################################
    def lower()
      if Temperature.isValid(myTemp-myStep, myType)
        return Temp.new(myTemp-myStep, myStep, myType)
      else 
        puts "lower() would cause Temperature object to become invalid (below absolute 0), lower denied"
        return self 
      end
    end

    ########################################################################################################
    # equals(Temperature)  returns true if the temperatures are equal (same myType and myTemp values), false otherwise
    # Returns   true if the temperatures are equal (same myType and myTemp values), false otherwise
    ########################################################################################################
    def equals(temp2)
      if myTemp == temp2.myTemp and myType == temp2.myType
        return true
      else 
        return false
      end
    end

    ########################################################################################################
    # lessThan(Temperature)  returns true if the passed Temperature.getCelsius > this.getCelsius, false otherwise
    # Returns   true if the passed Temperature > this, false otherwise
    ########################################################################################################
    def lessThan(temp2)
      if getCelsius().myTemp < temp2.getCelsius().myTemp
        return true
      else 
        return false
      end
    end

  end 

end ]0;jr232@goldvm10: ~/Desktop/cs214/projects/09/ruby[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/09/ruby[00m$ cat T tempTester.rb
# tempTester.rb tests class Temp and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:         04/08/2021
####################################################

require 'test/unit/assertions'
#require './Temp.rb'
load 'Temp.rb'
include Test::Unit::Assertions



def testTemp

   base = Temperature::Temp.new(0.0, 0.0, 'k')
   limit = Temperature::Temp.new(0.0, 0.0, 'k')  
   
   base = base.inputTemp()
   limit = limit.inputTemp()
   step = gets().to_f
   base.myStep = step

   if base.lessThan(limit)
      while base.lessThan(limit) or limit.equals(base)
         base.outputTemp()
         if Temperature.isValid(base.myTemp + base.myStep, base.myType)
            base = base.raise()
         else 
            break
         end
      end
   else
      while limit.lessThan(base) or limit.equals(base)
         base.outputTemp()
         if Temperature.isValid(base.myTemp - base.myStep, base.myType)
            base = base.lower()
         else 
            break
         end
      end
   end
   #(if (isValid (- (getTemp temperature ) increment) (getType temperature))  ; only recurs if the decremented value is not below absolute zero
   #           (recur (lower temperature increment)) 
   #         )


   print "All tests passed!\n"
end

testTemp

]0;jr232@goldvm10: ~/Desktop/cs214/projects/09/ruby[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/09/ruby[00m$ ruby tempTester
[1mTraceback[m (most recent call last):
ruby: [1mNo such file or directory -- tempTester ([1;4mLoadError[m[1m)
[m]0;jr232@goldvm10: ~/Desktop/cs214/projects/09/ruby[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/09/ruby[00m$ ruby tempTester.rb
100 k
0 k
10
100.00 k   -173.15 c   -279.67 f 
90.00 k   -183.15 c   -297.67 f 
80.00 k   -193.15 c   -315.67 f 
70.00 k   -203.15 c   -333.67 f 
60.00 k   -213.15 c   -351.67 f 
50.00 k   -223.15 c   -369.67 f 
40.00 k   -233.15 c   -387.67 f 
30.00 k   -243.15 c   -405.67 f 
20.00 k   -253.15 c   -423.67 f 
10.00 k   -263.15 c   -441.67 f 
0.00 k   -273.15 c   -459.67 f 
All tests passed!
]0;jr232@goldvm10: ~/Desktop/cs214/projects/09/ruby[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/09/ruby[00m$ ruby tempTester.rb
0 k
233  .5 f
12.45
0.00 k   -273.15 c   -459.67 f 
12.45 k   -260.70 c   -437.26 f 
24.90 k   -248.25 c   -414.85 f 
37.35 k   -235.80 c   -392.44 f 
49.80 k   -223.35 c   -370.03 f 
62.25 k   -210.90 c   -347.62 f 
74.70 k   -198.45 c   -325.21 f 
87.15 k   -186.00 c   -302.80 f 
99.60 k   -173.55 c   -280.39 f 
112.05 k   -161.10 c   -257.98 f 
124.50 k   -148.65 c   -235.57 f 
136.95 k   -136.20 c   -213.16 f 
149.40 k   -123.75 c   -190.75 f 
161.85 k   -111.30 c   -168.34 f 
174.30 k   -98.85 c   -145.93 f 
186.75 k   -86.40 c   -123.52 f 
199.20 k   -73.95 c   -101.11 f 
211.65 k   -61.50 c   -78.70 f 
224.10 k   -49.05 c   -56.29 f 
236.55 k   -36.60 c   -33.88 f 
249.00 k   -24.15 c   -11.47 f 
261.45 k   -11.70 c   10.94 f 
273.90 k   0.75 c   33.35 f 
286.35 k   13.20 c   55.76 f 
298.80 k   25.65 c   78.17 f 
311.25 k   38.10 c   100.58 f 
323.70 k   50.55 c   122.99 f 
336.15 k   63.00 c   145.40 f 
348.60 k   75.45 c   167.81 f 
361.05 k   87.90 c   190.22 f 
373.50 k   100.35 c   212.63 f 
All tests passed!
]0;jr232@goldvm10: ~/Desktop/cs214/projects/09/ruby[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/09/ruby[00m$ ruby tempTester.rb
10 c
455.4 f
56
283.15 k   10.00 c   50.00 f 
339.15 k   66.00 c   150.80 f 
395.15 k   122.00 c   251.60 f 
451.15 k   178.00 c   352.40 f 
507.15 k   234.00 c   453.20 f 
All tests passed!
]0;jr232@goldvm10: ~/Desktop/cs214/projects/09/ruby[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/09/ruby[00m$ exit

Script done on 2021-04-09 17:59:33-0400
