class LRUCache
    def initialize(size)
      @cache = []
      @size = size
    end

    def count
      @cache.length
      # returns number of elements currently in cache
    end

    def add(el)
      if @cache.include?(el)
        @cache.delete(el)
        @cache << el
      elsif count >= @cache.length
        @cache.shift
        @cache << el
      else
        @cache << el
      end
    end

    def show
       p @cache
      # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!

  end
