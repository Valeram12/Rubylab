x=2
sum=0.0
i=0
while i!=8
  sum=sum+(1.0/(3**i))
  i=i+1
end
puts(sum)
#///////////////////////////
class Float
  def fact
    (1..self).reduce(:*) || 1
  end
end
n= gets().chomp().to_f
sum=0
for i in 0..n
  if i==0
    sum+=1
  end
  sum+=(x**n)/(n.fact)
end
puts(sum)