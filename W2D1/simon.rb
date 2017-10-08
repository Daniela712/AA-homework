class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    unless @game_over
      take_turn
    end
      game_over_message
      reset_game
   end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
    @sequence_length += 1
     end
  end

  def show_sequence
    add_random_color

  end

  def require_sequence
    puts "Repeat the sequence of colors by adding each color one by one "
    guess_color = gets.comp
      @seq.each do |color|
        if color != guess_color
          @game_over = true
        end
      end
  end

  def add_random_color
    @seq << COLORS.shuffle.first
  end

  def round_success_message
     puts "The round was successful. Lets try another round"
  end

  def game_over_message
    puts "Game over. Lets try a new game"
  end

  def reset_game
    @sequence_length = 1
    @seq = []
    @game_over = false
  end
end
