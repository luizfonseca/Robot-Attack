class Player
  
  def initialize(window)
    
    @image = Gosu::Image.new(window, './media/originals/robot_unicorn/unicorn_run1.png', false)
    @x = @y = @vel_x = @vel_y = @angle = 0.0
    
  end
  
  def warp(x, y)
    @x, @y = x, y
  end
  
  def move_forward
    @angle += 10.0
  end
  
  
  def move_backward
    @angle -= 4.5
  end
  
  def accelerate
    @vel_x += Gosu::offset_x(@angle, 0.5)
    @vel_y += Gosu::offset_y(@angle, 0.5)
  end
  
  
  def move
    
    @x += @vel_x
    @y += @vel_y
    
    @x %= 800
    @y %= 600
    
    
    @vel_x *= 0.95 
    @vel_y *= 0.95
    
  end
  
  
  def draw
    @image.draw_rot(@x, @y, 1, @angle)
  end
  
  
  def controls

  end
  
end