# Enter your procedural solution here!
require 'prime'
include Math
# puts "Please enter the number you want the largest prime factor of:"
# target = gets.strip.to_i
limit = 600851475143

def largest_prime_factor(target = limit)
  
  # defines n to cut 'limit' to a managable size
  n = (Math.sqrt(target).to_i/2)+2
  puts "#{n}"
  len = Math.log10(target).to_i + 1
  n = n * len

  # gathers (target/n) prime numbers
  set = Prime.first (target/n).to_i

  good_set = set.select{|primes| target%primes == 0}
  good_set[-1]
end
