class GameWindow < Gosu::Window
  def initialize
  	super 1024, 786, :fullscreen => true
  	self.caption = "The Robot Apocalypse"

  	@title_screen = TitleScreen.new self
  	@pause, @sound = true, true
  end

  attr_accessor :pause, :sound

  def draw
  	@title_screen.draw
  end

  def update

  end

  def button_down(key)
  	case key
  	when Gosu::KbEscape
  	  close
  	end  
  end
end