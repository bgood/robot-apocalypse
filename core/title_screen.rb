class TitleScreen
  def initialize(window)
  	@window, @display = window, true

  	@bg = Gosu::Image.new("media/images/title_screen.png", :tileable => false)
  	@c = Gosu::Font.new(@window, 'Monospace', 20)
  end

  attr_accessor :display

  def draw
  	if @display
  	  @bg.draw(0, 0, 0)

  	  year = Time.now.strftime("%Y")
  	  @c.draw("Copyright (c) #{year} by Ben Good", 50, 750, 1)
  	end
  end

  def update

  end
end