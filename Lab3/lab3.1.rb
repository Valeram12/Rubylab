a=true
b=true
c=true
x=-40
y=6
z=-12

# a
puts(!(a||b)&&(a&&!b))
# b
puts(((z!=y)==(6>=y))&&a||b&&c&&x>=1.5)
# c
puts((8-x*2<=z)&&(x**2!=y**2)||(z>=15))
# d
puts(((x > 0) && (y <0)||(z >= (x*y + (-y/x))-(-z))))
#e
puts(!(a||b&&!(c||(!a||b))))
#f
puts((x**2+y**2)>=1&&x>=0&&y>=0)
# g
puts((a&&(c&&b!=b||a)||c&&b))


#-----------------------------
x=-0.5
p=true
puts(((Math.log(x+1)>x)||!p)&&(sqr(x)<x**2+x)||2*x=x)