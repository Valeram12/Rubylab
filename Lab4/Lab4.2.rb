# 5. Найти след матрицы B.

# Matrix.new(4) { rand(1...9) }
# require 'matrix'
# m= Matrix[[ rand(1...9),  rand(1...9), rand(1...9)], [ rand(1...9),  rand(1...9), rand(1...9)], [ rand(1...9),  rand(1...9), rand(1...9)]]
# print m.each_with_index.sum {|row, x| row[0, x].sum}
# print m


TwoDArr = Array.new(3){Array.new(3)}
sum = 0;

i = 0;
while (i < 3)
  j = 0;
  while (j < 3)
    TwoDArr[i][j] =  rand(1...9);
    j = j + 1;
  end
  i = i + 1;
end

printf "MATRIX:\n";
i = 0;
while (i < 3)
  j = 0;
  while (j < 3)
    print TwoDArr[i][j]," ";
    j = j + 1;
  end
  i = i + 1;
  print "\n";
end

printf("Left diagonal of matrix:\n")
i = 0;
while (i < 3)
  j = 0;
  while (j < 3)
    if (i == j)
      sum = sum + TwoDArr[i][j];
      printf "%d ", TwoDArr[i][j];
    else
      printf(" ");
    end
    j = j + 1;
  end
  i = i + 1;
  print "\n";
end

printf "Sum of left diagonal of matrix: %d\n",sum;
