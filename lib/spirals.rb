# Your mission is to create a grid of numbers in a spiral pattern.
# Your program should take two arguments:                                                                                               A starting number
# An integer that represents how wide / tall the grid should be
# The numbers should start in the upper-left-hand corner, then go right,
# down, left, up, right etc..

class Spirals

def moves
n.downto(0).each_cons(2).to_a.flatten # n==5; [5,4,4,3,3,2,2,1,1,0]
end

def matrix
[[1, 0], [0, 1], [-1, 0], [0, -1]].cycle
end

def value
x, y, value = -1, 0, -1
end

def down
  moves.each { |move|
    dx, dy = matrix.next
    move.times {spiral[y+=dy][x+=dx] = (value+=1) } }
    spiral
end

def spiral(n)
  Array.new(n) { Array.new(n, nil) } # n x n array of nils
end

def print_matrix(y)
  width = y.flatten.map { |x| x.to_s.size }.max
  y.each { |row| puts row.map { |x| "%#{width}s " % x }.join }
end

print_matrix spiral(10)

  end

# class Spirals
#
#   def initialize(number, width)
#
#   end
#
#   def flatten(x) #flatten array
#     @flatten = x.downto(0).each_cons(2).to_a.flatten
#   end
#
#   def spiral(z)
#     Array.new(z) { Array.new(z, nil) } # x times x array of nils
#   end
#
#   def spirals(z)
#     z.downto(0).each_cons(2).to_a.flatten
#   end
#
#   def matrix(a)
#     a.cycle
#   end
#
#   def moves(moves)
#     moves.each { |move|
#       dx, dy = matrix.next
#       move.times { spiral[y+=dy][x+=dx] = (value+=1) } }
#     spiral
#   end
#
#   def width(x)
#     @width = x.flatten.map { |x| x.to_s.size }.max #width of x times x array
#   end
#
#   def maximum_row(y) #print out maximum row
#     y.each do |row|
#       puts row.map { |x| "%#{@width}s" % x }.join
#     end
#   end
# end