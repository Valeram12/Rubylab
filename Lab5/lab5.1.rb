def func1(x=1)
  return (x)*((1+x)**(1.0/3))
end

def prm (a,b,n)
  h = (b-a)/n
  sum=0
  for i in (1..n)
    xi=a+i*h-(h/2)
    sum+=func1(xi)
  end
  return h*sum
end
puts prm(1.0,8.0,100000)
puts func1(5)

def func2(x=1)
  return x* Math.log(x)**2
end

def trp(a,b,n)
  h = (b-a)/n
  s=0.5*func2(a)+func2(b)
  x=a+h
  while (x<=b-h)
    s+=func2(x)
    x+=h
  end
    return h*s
end


puts trp(2.0,2.7,1000)