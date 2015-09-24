require "optparse"
require_relative 'prime_generator'

class Prime
  
  def initialize
    @options = {}
    
    OptionParser.new do |opts|
        opts.banner = "Usage: --count Amount of prime numbers"
        opts.on "-c", "--count INTEGER", "Amount of prime numbers to multiply" do |number|
        @options[:amount] = number.to_i
      end
        opts.on "-h", "--help", "Shows usage" do
        puts opts
        exit
      end
    end.parse!
  end
   
  def run
    prime_numbers = PrimeGenerator.new.generate(@options[:amount])
    puts prime_numbers
  end
  
end