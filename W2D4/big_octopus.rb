
def sluggish_octopus(fishes) #quadratic
  fishes.each_with_index do |f1|
    biggest = true
    fishes.each_with_index do |f2|
      biggest = false if f2.length > f1.length
    end
    return f1 if biggest
  end
end

class Array
  def dominat_octopus(&prc) #merge_sort
    prc ||= Proc.new { |a,b| a <=> b }
    return self if length < 2
    mid = self.length/2
    left = self.take(mid).dominat_octopus(&prc)
    right = self.drop(mid).dominat_octopus(&prc)
    Array.merge(left, right, &prc)
  end

  def self.merge(left, right, &prc)
    arr=[]
    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        arr << left.shift
      when 0
        arr << right.shift
        arr << left.shift
      when 1
        arr << right.shift
      end
    end
    arr + left + right
    arr
  end
end

def clever_octopus(fishes)
  big = fish[0]
  fishes.each do |fish|
    if fish.length > big.length
      big = fish
    end
  end
  big
end


def slow_dance(dir, tiles_arr)
  tiles_arr.each_with_index do |el, i|
    return i if tile == dir
  end
end

def fast_dance(dir, tiles_hash)
  tiles_hash[dir]
end
  
