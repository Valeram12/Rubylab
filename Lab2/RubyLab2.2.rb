#2 32 8
def ps(p,t,r)

  return ((p)**r)*(1-(p**(-t))).to_f
end
puts(ps(2,32,8))