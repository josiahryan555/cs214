Script started on 2021-02-19 13:50:39-0500
]0;jr232@maroon28: ~/Desktop/cs214/labs/03[01;32mjr232@maroon28[00m:[01;34m~/Desktop/cs214/labs/03[00m$ cat year_codes.rb
#! /usr/bin/ruby
# year_codes.rb translates an academic year into a numeric code
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
################################################################

# Input:  The name of an academic year
# Precondition: The academic year is a string with a value of freshman, 
#   sophomore, junior or senior
# Output: The corresponding integer code for the given academic year

def yearCode(year)
  if year =~ /freshman/
    1
  elsif year =~ /sophomore/
    2
  elsif year =~ /junior/
    3
  elsif year =~ /senior/
    4
  else
    0
  end
end

if __FILE__ == $0
   print "Enter the year: "
   year = gets
   print "Numeric code is: "
   puts yearCode(year)
end

]0;jr232@maroon28: ~/Desktop/cs214/labs/03[01;32mjr232@maroon28[00m:[01;34m~/Desktop/cs214/labs/03[00m$ ruby year_codes.rb
Enter the year: freshman
Numeric code is: 1
]0;jr232@maroon28: ~/Desktop/cs214/labs/03[01;32mjr232@maroon28[00m:[01;34m~/Desktop/cs214/labs/03[00m$ ruby year_codes.rb
Enter the year: soh phomre  ore
Numeric code is: 2
]0;jr232@maroon28: ~/Desktop/cs214/labs/03[01;32mjr232@maroon28[00m:[01;34m~/Desktop/cs214/labs/03[00m$ ruby year_codes.rb
Enter the year: junior
Numeric code is: 3
]0;jr232@maroon28: ~/Desktop/cs214/labs/03[01;32mjr232@maroon28[00m:[01;34m~/Desktop/cs214/labs/03[00m$ ruby year_codes.rb
Enter the year: senior
Numeric code is: 4
]0;jr232@maroon28: ~/Desktop/cs214/labs/03[01;32mjr232@maroon28[00m:[01;34m~/Desktop/cs214/labs/03[00m$ ruby year_codes.rb
Enter the year: tim the mighty bean
Numeric code is: 0
]0;jr232@maroon28: ~/Desktop/cs214/labs/03[01;32mjr232@maroon28[00m:[01;34m~/Desktop/cs214/labs/03[00m$ exit

Script done on 2021-02-19 13:51:25-0500
