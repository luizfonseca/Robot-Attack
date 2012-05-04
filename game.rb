$LOAD_PATH << './classes'
require 'rubygems'
require 'gosu'

require 'Player'
#require 'Background'



class Game < Gosu::Window
  
  def initialize 
    super 1024, 768, false
    self.caption = "Super Robot"
    
    @background = Gosu::Image.new(self, './media/images/sample_background.jpg', true)
    @player = Player.new(self)
    @player.warp 320, 240
    
  end
  
  
  def update
    if button_down? Gosu::KbLeft
      @player.move_forward
    end
    
    if button_down? Gosu::KbRight
      @player.move_backward
    end  
    @player.move
  end
  
  def draw
    @player.draw
    @background.draw(0, 0, 0)
  end
  
end
  
game = Game.new
game.show