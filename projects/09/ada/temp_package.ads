-- temp_package.ads declares the temp type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/05/21
--------------------------------------------------------------

package temp_package is

type Temp is private;
procedure Init(tp: out Temp; myTemp, myStep : in Float; myType : in Character);
function getTemp( tp: in Temp) return Float;
function getStep( tp: in Temp) return Float;
function getType( tp: in Temp) return Character;
function isValid( temp : in Float; scale : in Character) return Boolean;
procedure inputTemp( tp: in out Temp);
function getFahrenheit( tp: in Temp) return Temp;
function getCelsius( tp: in Temp) return Temp;
function getKelvin( tp: in Temp) return Temp;
procedure outputTemp(tp: in Temp);
function raiseTemp(tp: in out Temp; step : in Float) return Temp;
function lowerTemp(tp: in Temp; step : in Float) return Temp;
function equals(tp1, tp2: in Temp) return Boolean;
function lessThan(tp1, tp2: in out Temp) return Boolean;

private
type Temp is 
      record
         myTemp, myStep : Float;
         myType: Character;
      end record;

end temp_package;