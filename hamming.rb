class Hamming
  def self.compute(a, b)
    if a.length != b.length
      raise ArgumentError, "The lengths of the strands must match."
    else
    i=0
    total=0
    a=a.split('')
    b=b.split('')
    while i<a.length do
      if a[i]!=b[i]
        total=total+1
      end
      i=i+1
    end
    return total
    end
  end
end

#
# class Hamming
#   def self.compute(strand1, strand2)
#     strand1 = strand1.chars
#     strand2 = strand2.chars
#
#     if strand1.length != strand2.length
#       raise ArgumentError, "The lengths of the strands must match."\
#       " The first strand is #{strand1.length} long, whereas"\
#       "the second strand is #{strand2.length} long"
#     end
#
#     strand1.zip(strand2).count do |nucleotide1, nucleotide2|
#       nucleotide1 != nucleotide2
#     end
#   end
# end
#
#
# gem 'minitest', '>= 5.0.0'
# require 'minitest/autorun'
# require_relative 'hamming'
#
#
# class Hamming < Minitest::Test
#   def initialize
#
#   end
#
#   def checkinput(a,b)
#     def check(a,b)
#       i=0
#       total=0
#       a=a.split('')
#       b=b.split('')
#       while i<a.length do
#         if a[i]!=b[i]
#           total=total+1
#         end
#         i=i+1
#       end
#       return total
#     end
#
#     if a.length == b.length
#       y=check(a,b)
#       return "total=#{y}"
#     else
#       return "Wrong Length"
#     end
#   end
# end
#
# a=$stdin.gets.chomp
# b=$stdin.gets.chomp
# hming=Hamming.new()
# puts hming.checkinput(a,b)
