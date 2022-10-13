class Mail
  attr_accessor :city, :street, :house, :apartment, :whom,:value

  def initialize(city,street,house,apartment,whom,value)
    @city=city
    @street=street
    @house=house
    @apartment=apartment
    @whom=whom
    @value=value
  end
end

a=0
allmail=Array.new
while a!=16
  allmail[a]=Mail.new("Kyiv","Malushko","15","125","Nk",0+a.to_i)
  a+=1
end
allmail.each do |i|
  puts i.inspect
end
puts "=============================================================="

class Array
  def uniq_by(&blk)
    transforms = []
    self.select do |el|
      should_keep = !transforms.include?(t=blk[el])
      transforms << t
      should_keep
    end
  end
end

uniq_array = allmail.uniq_by {|obj| obj.city}

uniq_array.each do |i|
  puts i.inspect
end

#
# answ=0
# count=0
# allusermail=[]
# while answ!=1
#   city=""
#   street=""
#   house=""
#   apartment=""
#   whom=""
#   value=""
#   puts("Enter city")
#   city = gets.chomp.to_s
#   puts("Enter street")
#   street = gets.chomp.to_s
#   puts("Enter house")
#   house = gets.chomp.to_s
#   puts("Enter apartment")
#   apartment = gets.chomp.to_s
#   puts("Enter whom")
#   whom = gets.chomp.to_s
#   puts("Enter value")
#   value = gets.chomp.to_s
#   allusermail[count] = Mail.new(city,street,house,apartment, whom,value)
#   puts("Send one more?")
#   answ = gets.chomp.to_i
#   count+=1
#
# end
#
# def prntallmails(allusermail)
#   allusermail.each do |i|
#     puts i.city
#     puts i.street
#     puts i.house
#     puts i.apartment
#     puts i.whom
#     puts i.value
#     puts "==================================="
#   end
# end
# prntallmails(allusermail)
#
# def Kyivmailscounter(allusermail)
#   count=0
#   allusermail.each do |i|
#     if i.city == "Kyiv"
#       count+=1
#     end
#   end
#   return count
# end
#
# puts Kyivmailscounter(allusermail)

# def valuebig10(allusermail)
#   result=Array.new
#   count=0
#   for i in 0..allusermail.size-1
#     if allusermail[i].value>=10
#       result[count]=allusermail[i]
#       count+=1
#     end
#   end
#   result.each do |i|
#     puts i.inspect
#   end
# end
# valuebig10(allmail)
