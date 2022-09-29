class GaussElimination
  def initialize
    @a = [
      #[ 2, -3,  1,  5],
      #[ 1,  1, -1,  2],
      #[ 3,  5, -7,  0]
      [ 1, -2,  3, -4,  5],
      [-2,  5,  8, -3,  9],
      [ 5,  4,  7,  1, -1],
      [ 9,  7,  3,  5,  4]
    ]
    @n = @a.size
  end

  def exec
    display_equations
    (@n - 1).times do |k|
      (k + 1).upto(@n - 1) do |i|
        d = @a[i][k] / @a[k][k].to_f
        (k + 1).upto(@n) do |j|
          @a[i][j] -= @a[k][j] * d
        end
      end
    end
    (@n - 1).downto(0) do |i|
      d = @a[i][@n]
      (i + 1).upto(@n - 1) do |j|
        d -= @a[i][j] * @a[j][@n]
      end
      @a[i][@n] = d / @a[i][i].to_f
    end
    display_answers
  rescue => e
    raise
  end

  private

  def display_equations
    @n.times do |i|
      @n.times { |j| printf("%+dx%d ", @a[i][j], j + 1) }
      puts "= %+d" % @a[i][@n]
    end
  rescue => e
    raise
  end

  def display_answers
    0.upto(@n - 1) { |k| puts "x%d = %f" % [k + 1, @a[k][@n]] }
  rescue => e
    raise
  end
end

if __FILE__ == $0
  begin
    obj = GaussElimination.new
    obj.exec
  rescue => e
    $stderr.puts "[#{e.class}] #{e.message}"
    e.backtrace.each{ |tr| $stderr.puts "\t#{tr}" }
  end
end
