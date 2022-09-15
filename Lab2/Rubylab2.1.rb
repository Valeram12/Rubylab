#(42,51) (76,48) (117,48) (150,42) (204,41)
#(228,85) (240,133) (243,193) (272,221) (265,275)
#(207,274) (149,271) (103,261) (75,229) (93,172)
# (84,149) (48,134) (26,107) (26,86) (27,71)
# (37,57)


def sq(n)
  sum=0
  x=gets().chomp.to_f
  y=gets().chomp.to_f
  x1=x
  y1=y
  for i in 0..(n-2)
    x2=gets().chomp.to_f
    y2=gets().chomp.to_f
    sum+=(x1+x2)*(y2-y1)
    x1=x2
    y1=y2
  end
  sum+=(x+x2)*(y-y2)
  return (sum.abs)/2
end

puts(sq(5))


def squareOfPolygon(x1=0,y1=0,x2=0,y2=0,x3=0,y3=0,x4=0,y4=0,x5=0,y5=0)
  return 0.5*((x1+x2)*(y2-y1)+(x2+x3)*(y3-y2)+(x3+x4)*(y4-y3)+(x4+x5)*(y5-y4)+(x5+x1)*(y1-y5))
end
puts(squareOfPolygon(42,51, 76,48, 117,48, 150,42, 204,41))
puts(squareOfPolygon(228,85, 240,133, 243,193, 272,221, 265,275))
puts(squareOfPolygon(207,274, 149,271,103,261, 75,229, 93,172))
puts(squareOfPolygon(84,149, 48,134, 26,107, 26,86, 27,71))
puts(squareOfPolygon(37,57))