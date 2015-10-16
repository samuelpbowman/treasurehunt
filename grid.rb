class Grid

  def initialize(map)
    a = IO.readlines(map)
    @grid = Array.new 
    for i in 0..a.length-1
      @grid.push(a[i].split(" "))
    end
  end
  
  def length
    return @grid.length
  end
  
  def print_grid
    for i in 0..@grid.length-1
      for j in 0..@grid.length-1
        print @grid[i][j]
	print " "
      end
      puts
    end
  end
  
  def verify_digits(i, j)
    t = @grid[i][j].to_i / 10
    n = @grid[i][j].to_i % 10
    
    if i+1 == t && j+1 == n
      printf("Treasure was found at %d, %d.\n", i+1, j+1)
    else
      verify_digits(t-1, n-1)
    end
  end

end
