
class Book

  def initialize(id, name, autor, year_of_issue, printers,countOfPages, cost, typeOfCover)
    @id = id
    @name = name
    @autor = autor
    @year_of_issue = year_of_issue
    @printers = printers
    @cost = cost
    @countOfPages=countOfPages
    @typeOfCover = typeOfCover
  end

  attr_accessor :id, :name, :autor, :year_of_issue, :printers, :countOfPages, :cost, :typeOfCover

  def to_s
    @id.to_s + "_" + @name.to_s + "_" + @autor.to_s + "_" + @year_of_issue.to_s + "_" + @printers + \
  "_" + @cost.to_s + "_" + @countOfPages.to_s
  end
end

x1 = Book.new(7, "Verity1", "Colleen Hoover", 2021, "amazone1", 896, 125,"black")
x2 = Book.new(9, "Verit2", "Colleen Hoover1", 2003, "amazone", 4500, 1235,"white")
x3 = Book.new(2, "Verity3", "Colleen Hoover", 2007, "amazone1", 80700, 345,"black")
x4 = Book.new(15, "Verit4", "Colleen Hoover2", 2010, "amazone", 5700, 2345,"gold")
x = [x1,x2,x3,x4]

print "Enter autor:\n"
a_autor = gets.chomp.to_s
print "a) \n"
for i in 0..x.size-1 do
  if x[i].autor == a_autor
    puts x[i].to_s, "\n"
  end
end

print "Enter printers:\n"
a_printers = gets.chomp.to_s
print "a) \n"
for i in 0..x.size-1 do
  if x[i].printers == a_printers
    puts x[i].to_s, "\n"
  end
end

print "Enter year of issue:\n"
c_year = gets.chomp.to_f
print "c) \n"
for i in 0..x.size-1 do
  if x[i].year_of_issue > c_year
    puts x[i].to_s, "\n"
  end
end
#test
# Enter autor:
# Colleen Hoover
# a)
# 7_Verity1_Colleen Hoover_2021_amazone1_125_896
#
# 2_Verity3_Colleen Hoover_2007_amazone1_345_80700
#
# Enter printers:
# amazone1
# a)
# 7_Verity1_Colleen Hoover_2021_amazone1_125_896
#
# 2_Verity3_Colleen Hoover_2007_amazone1_345_80700
#
# Enter year of issue:
# 2008
# c)
# 7_Verity1_Colleen Hoover_2021_amazone1_125_896
#
# 15_Verit4_Colleen Hoover2_2010_amazone_2345_5700
#
#
# Process finished with exit code 0