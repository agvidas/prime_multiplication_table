class TableGenerator
  
  def initialize(primes)
    @primes = primes
    @last_prime = primes.last
  end
  
  def show
    @table = header + divider_line + format_body
  end
  
  private

  def max_multiplied_length
    multiplied = @last_prime * @last_prime
    multiplied.to_s.length
  end
  
  def cell_width(number)
    width = max_multiplied_length - number.length
    " " * width
  end
  
  def space_before(number)
    width = max_multiplied_length - number.length
    " " * width
  end

  def header
    line = " " * max_multiplied_length
    line << " |"
    @primes.each do |prime|
      line << " "
      line << cell_width(prime.to_s)
      line << prime.to_s
    end
    line << "\n"
    line
  end

  def divider_line
    line = "-" * max_multiplied_length
    line << "-+"
    @primes.each do |count|
      line << "-" * (max_multiplied_length + 1)
    end
    line << "\n"
  end

  def multiply_row_values(prime_number)
    value = ""
    @primes.each do |prime|
      multiplied = prime * prime_number
      value << " "
      value << cell_width(multiplied.to_s)
      value << multiplied.to_s
    end
    value
  end

  def format_body
    body = ""
    @primes.each do |prime|
      body << space_before(prime.to_s)
      body << prime.to_s
      body << " |"
      body << multiply_row_values(prime)
      body << "\n"
    end
    body
  end

end