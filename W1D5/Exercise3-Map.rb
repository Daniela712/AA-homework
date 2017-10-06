class Map
  attr_accessor :map

  def initialize
    @map = []
  end


  def assign(key, value)
    index = @map.index { |key_value|
      key_value.first == key }
      if index.nil?
        return @map.push([key, value])
      else
        @map[index][0] = value
      end
      [key, value]
    end

  end

  def lookup(key)
    @map.each do |key_value|
      return key_value[1] if key_value[0] == key
  end

  def remove(key)
    @map.select! { |key_value| key_value[0] != key }
    nil
  end

  def show
    deep_dup(@map)
  end

  def deep_dup(arr)
    arr.map do |el|
      if el.is_a? Array
        return el.deep_dup
      else
        el
      end
    end
end

if $PROGRAM_NAME == __FILE__
new_map = Map.new
end
