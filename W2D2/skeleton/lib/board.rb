class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new}
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if @cups[start_pos].empty?
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
  end

  def make_move(start_pos, current_player_name)

    stones = @cups[start_pos]
    @cups[start_pos] = []

    cup = start_pos
    until stones.empty?
    cup +=1
    cup = 0 if cup > 13
    if cup == 6
      @cups[6] << stones.pop if current_player_name == @name1
    elsif cup == 13
      @cups[13] << stones.pop if current_player_name == @name2
    else
      @cups[cup] << stones.pop
    end
  end
end
  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
