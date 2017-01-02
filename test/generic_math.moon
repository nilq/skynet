import math from require "lib/util/math"

with math
  print "f, i, n"
  print .randf -100, 100
  print .randi -100, 100
  print .randn -100, 100

  print "gauss"
  print .gauss_random!
