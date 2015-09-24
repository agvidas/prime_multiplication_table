class PrimeGenerator
  
   def generate(number)
      primes = []
      n = 2
      while primes.length < number
        if prime?(n)
          primes << n
        end
        n += 1
      end
     primes
    end

    def prime?(number)
      2.upto(Math.sqrt(number).to_i) do |n|
            return false if number %n == 0
      end 
      true
    end
    
end