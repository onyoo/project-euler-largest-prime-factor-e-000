# Enter your object-oriented solution here!

require 'prime'
include Math
# puts "Please enter the number you want the largest prime factor of:"
# target = gets.strip.to_i

class LargestPrimeFactor
  def initialize(limit)
    @limit = limit
  end

  def number(target = @limit)
  
    # defines n to cut 'limit' to a managable size
    @n = (Math.sqrt(target).to_i/2)+2
    @len = Math.log10(target).to_i + 1
    @n = @n * @len

    # gathers (target/n) prime numbers
    @set = Prime.first (target/@n).to_i

    @good_set = @set.select{|primes| target%primes == 0}
    @good_set[-1]
  end
end
