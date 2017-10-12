
def sluggish_octopus(fishes)
  fishes.each_with_index do |f1|
    biggest = true
    fishes.each_with_index do |f2|

      biggest = false if f2.length > f1.length
    end
    return f1 if biggest
  end
end
