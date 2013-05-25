class Fancy
  attr_accessor :legal_columns, :current_row, :current_col

  def initialize
    @score = 75
    @current_row = 0
    @current_col = 0
    @legal_columns = [0, 1]
    @pyramid = [[95, 64], [17, 47, 82], [18, 35, 87, 10], [20, 4, 82, 47, 65],
    [19, 1, 23, 75, 3, 34], [88, 2, 77, 73, 3, 63, 67], [99, 65, 4, 28, 6, 16, 70, 92],
    [41, 48, 72, 33, 47, 32, 37, 16, 94, 29], [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
    [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
    [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
    [63, 66, 4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
    [4, 62, 98, 27, 23, 9, 70, 98, 73, 93, 38, 53, 60, 4, 23]]
  end

  def find_legal_columns(current_column)
    return [current_column, current_column + 1]
  end

  def set_legal_columns
    @legal_columns = find_legal_columns(@current_col)
  end

  def one_row_down
    potential_scores = []
    @legal_columns.each do |col|
      potential_scores.push(@pyramid[@current_row][col])
    end
    return potential_scores
  end

  def whatif
    potential_scores = one_row_down
    a_route_legal_columns = find_legal_columns(@current_col)
    b_route_legal_columns = find_legal_columns(@current_col + 1)
    a_route = []
    b_route = []
    a_route_legal_columns.each do |col|
      a_route.push(@pyramid[@current_row+1][col])
    end
    b_route_legal_columns.each do |col|
      b_route.push(@pyramid[@current_row+1][col])
    end
    a_score = a_route.max
    b_score = b_route.max
    if (potential_scores[0] + a_score) > (potential_scores[1] + b_score)
      return 'a'
    else
      return 'b'
    end
  end

  def make_a_choice
    route = whatif
    if route == 'a'
      @score += @pyramid[@current_row][@legal_columns[0]]
    else
      @score += @pyramid[@current_row][@legal_columns[1]]
      @current_col += 1
    end
    set_legal_columns
    print "Score #{@score} achieved by moving to row #{@current_row}, col #{@current_col}"
    @current_row += 1
    puts
    return @score, @current_col, @current_row
  end

  def play_the_game
    while @current_row < @pyramid.length - 1
      make_a_choice
    end
    return @score, @current_col, @current_row
  end

end


