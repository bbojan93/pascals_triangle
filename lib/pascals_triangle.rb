class Triangle

  def initialize rows
    @rows = rows
  end

  def generate_rows
    if @rows == 1
      result = [1]
    elsif @rows >= 2
      result = [[1], [1, 1]]

      (@rows-2).times do |n|
        next_row = [1]

        (result.last.length-1).times do |n|
          sum = result.last[n] + result.last[n+1]
          next_row << sum
        end

        next_row << 1
        result << next_row
      end

    end
    result
  end

end
