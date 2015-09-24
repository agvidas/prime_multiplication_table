require 'spec_helper'
require './lib/prime_generator'

describe ".PrimeGenerator" do
  
  let(:prime_generator) { PrimeGenerator.new }
  
  context '#generate' do
    it "generates 10 prime numbers" do
      primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
      expect(prime_generator.generate(10)).to eq primes
    end
  end
  
  context "#prime?" do
    it "true if prime" do
      expect(prime_generator.prime?(7)).to be true
    end
    it "false if not prime" do
      expect(prime_generator.prime?(8)).to be false
    end   
  end   
end