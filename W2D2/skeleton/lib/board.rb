class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    @cups.each_with_index do |cup, i|
      next if i == 6 || i == 13
      4.times do
        cup << :stone
      end
    end
  end


    # helper method to #initialize every non-store cup with four stones each


  def valid_move?(start_pos)
    raise "Invalid starting cup" if @cups[start_pos].empty?
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
  end

  def make_move(start_pos, current_player_name)

    stones = @cups[start_pos]
    @cups[start_pos] = []

    cup_pos = start_pos
    until stones.empty?
    cup_pos +=1
    cup_pos = 0 if cup_pos > 13
    if cup_pos == 6
      @cups[6] << stones.pop if current_player_name == @name1
    elsif cup_pos == 13
      @cups[13] << stones.pop if current_player_name == @name2
    else
      @cups[cup_pos] << stones.pop
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
    @cups[1..6].all? { |cup| cup.empty? } ||
    @cups[7..12].all? { |cup| cup.empty?}
  end

  def winner
    player1 = @cups[6].length
    player2 = @cups[13].length
      if player1 == player2
        :draw
      else
        if player1 > player2
          return @name1
        else
          return @name2
        end
      end
  end
end
