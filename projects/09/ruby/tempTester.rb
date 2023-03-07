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

