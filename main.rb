require_relative 'grid'

grid = Grid.new("map.txt")

grid.print_grid

grid.verify_digits(0, 0)
