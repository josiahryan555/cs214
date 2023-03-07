Script started on 2021-04-29 17:15:13-0400
]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ co at a threaded_array_sum.ruby
cat: threaded_array_sum.ruby: No such file or directory
]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ cat threaded_array_sum.ruby   b
# threaded_array_sum.rb sums the values in an array
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:         04/29/21
#
# Usage: ruby threaded_array_sum.rb <inFileName>
######################################################

# make certain the input file was specified on the command-line
def checkCommandLine
    if ARGV.length != 2
        puts "\nUsage: sum <inFileName> <numThreads>\n\n"
        exit(1)
    end
  end
  
  # return: an array containing the values from the file
  #  whose name was specified on the command-line
  def readFile
     strArray = IO.readlines( ARGV[0] )
     intArray = Array.new( Integer(strArray[0]) )
     for i in 2..strArray.size
        if  !strArray[i].nil?
           intArray[i-2] = Integer( strArray[i].chomp )
        end
     end
     intArray 
  end
  
  # Return: the sum of the values (of the thread's slice)
  def sumSlice(values, id, sliceSize)
    start = id * sliceSize
    stop = start + sliceSize - 1
    myTotal = 0
    for i in start..stop
       myTotal += values[i]
    end
    myTotal
 end
  
  def sumInParallel(values, numThreads)
    sliceSize = values.size / numThreads
    threadArray = Array.new( numThreads )
    result = 0
    lock = Mutex.new

    (1..numThreads-1).each do | i |
        threadArray[i] = Thread.new { 
                          myTotal = sumSlice(values, 
                                               i,
                                               sliceSize) 
                          lock.synchronize {
                              result += myTotal
                          }
        }
    end

    myTotal  = sumSlice(values, 0, sliceSize)

    leftovers = values.size % numThreads
    if leftovers > 0
       for i in values.size-leftovers..values.size-1
          myTotal += values[i]
       end
    end

    lock.synchronize {
       result += myTotal
    }

    for i in 1..numThreads-1
       threadArray[i].join
    end

    result
  end



  def main
     checkCommandLine
     values = readFile
     startTime = Time.now
     total = sumInParallel(values, Integer( ARGV[1] ) )
     endTime = Time.now
     interval = (endTime - startTime).to_f
     puts "\nThe sum is #{total}\n"
     printf(" and computing it took %.9f seconds.\n\n", interval)
  end
  
  main
  ]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ cat threaded_array_sum.rbubyruby array_sum.rb /home/cs/214/labs/122/numbers/1000000numbers.txt[A]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ ruby array_sum.rb /home/cs/214/labs/tarray_sum.rb /home/cs/214/labs/1[1@2[A]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ ruby tharray_sum.rb /home/cs/214/labs/[1@1[A]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ ruby thrarray_sum.rb /home/cs/214/labs[1@/[A]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ ruby threarray_sum.rb /home/cs/214/lab[1@s[A]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ ruby threaarray_sum.rb /home/cs/214/la[1@b[A]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ ruby threadarray_sum.rb /home/cs/214/l[1@a[A]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ ruby threadearray_sum.rb /home/cs/214/[1@l[A]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ ruby threadedarray_sum.rb /home/cs/214[1@/[A]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ ruby threaded_array_sum.rb /home/cs/21[1@4[A]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ ruby threaded_array_sum.rb /home/cs/214/labs/12[10P/numbers/100000numbers.txt[A]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ ruby threaded_array_sum.rb /home/cs/21[10@4/labs/12/numbers/1000000numbers.txt 1

The sum is 50473230
 and computing it took 0.041324910 seconds.

]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ [Kruby threaded_array_sum.rb /home/cs/2114/labs/12/numbers/1000000numbers.txt 1 4

The sum is 50473230
 and computing it took 0.043491127 seconds.

]0;jr232@gold12: ~/Desktop/cs214/labs/12/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/12/ruby[00m$ [Kexit

Script done on 2021-04-29 17:16:20-0400
