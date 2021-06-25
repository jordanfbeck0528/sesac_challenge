class Path
  def self.make_path(size, bot_location, princess_location)
    # require "pry"; binding.pry
    moves = []
    if princess_location[0] < 0
      princess_location[0] = size - 1
    end
    if princess_location[1] < 0
      princess_location[1] = size - 1
    end
    if bot_location[0] < 0
      bot_location[0] = size - 1
    end
    if bot_location[1] < 0
      bot_location[1] = size - 1
    end

    first_move = (bot_location[0] - princess_location[0]).abs
    second_move = (bot_location[1] - princess_location[1]).abs

    if bot_location[0] < princess_location[0]
      moves << 'DOWN,' * first_move
    else
      moves << 'UP,' * first_move
    end
    if bot_location[1] < princess_location[1]
      moves << 'RIGHT,' * second_move
    else
      moves << 'LEFT,' * second_move
    end
    moves.join.gsub(",", "\n")
  end

  def self.locate_bot(grid)
    grid.each_with_index do |element, index|
      if element.include?("m")
        element.chars.each_with_index do |e, i|
          if e == "m"
            return [index, i]
          end
        end
      end
    end
  end

  def self.locate_princess(grid)
    grid.each_with_index do |element, index|
      if element.include?("p")
        element.chars.each_with_index do |e, i|
          if e == "p"
            return [index, i]
          end
        end
      end
    end
  end

  def self.displayPathtoPrincess(size, grid)
    # place_bot(size)
    # place_princess(size)
    bot_location = locate_bot(grid)
    princess_location = locate_princess(grid)
    make_path(size, bot_location, princess_location)
  end
end
