class Triangle

  def initialize rows
    @rows = rows
  end

  def print_triangle
    if @rows == 1
      result = [1]
    elsif @rows == 2
      result = [[1], [1, 1]]
    else
      result = [[1], [1, 1]]

      previous_row = [1, 1]
      n=3
      while n <= @rows
        next_row = [1]

        i = 0
        while i < previous_row.length - 1
          sum = previous_row[i] + previous_row[i+1]
          next_row << sum
          i+=1
        end

        next_row << 1
        result << next_row
        previous_row = next_row
        n+=1
      end

    end
    result
  end

end
