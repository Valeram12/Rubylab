print("Enter alpha: ")
alp= gets().chomp().to_f
print("Enter x: ")
x=gets().chomp().to_f
print("Enter fi: ")
f=gets().chomp().to_f
print("Enter y: ")
y=gets().chomp().to_f

def V5(alp,x,f,y)
  return ( Math.exp((Math.sin(Math::PI**2)).abs())* ( Math.log(1 + Math.cos(alp)**2) + Math.tan(Math.sin(x)) +4.8*10**1.3)/(5*Math.sqrt(f+y)))
end
puts(R=V5(alp,x,f,y))

