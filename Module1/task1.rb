#Variant 5
print "Enter x begin:\n"
xb = gets.chomp.to_f
print "Enter x end:\n"
xe = gets.chomp.to_f

print "Enter a,b,c:\n"
$a = gets.chomp.to_f
$b = gets.chomp.to_f
$c = gets.chomp.to_f

print "Enter dx:\n"
dx = gets.chomp.to_f


def func(dxk)
  if (dxk<0 && $b!=0)
    $a-(dxk)/(10+$b)
  else
    if (dxk>0 && $b==0 )
      (dxk-$a)/(dxk-$c)
    else
      3*dxk+2/($c)
    end
  end
end

(xb..xe).step(dx).each do |i|
  puts func(i)
end


#Tests
xb=1
xe=5
$a=5,$b=67,$c=7
dx=1
(xb..xe).step(dx).each do |i|
  puts func(i)
end
#expected:
# 3
# 6
# 9
# 12
# 15