require "optparse"
require_relative 'prime_generator'
require_relative 'table_generator'

class Prime
  
  def initialize
    @options = {}
    
    OptionParser.new do |opts|
        opts.banner = "Usage: #$0 --count Amount of prime numbers"
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
    table = TableGenerator.new(prime_numbers).show
    puts table
  end
  
end