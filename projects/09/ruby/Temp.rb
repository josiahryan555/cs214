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

end 