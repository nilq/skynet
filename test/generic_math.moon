import math from require "lib/util"

with math
  print "f, i, n"
  print .randf -100, 100
  print .randi -100, 100
  print .randn -100, 100

  print!

  print "gauss"
  print .gauss_random!

  print!

  print "zeros"
  print (.zeros 5)[4], #.zeros 10
