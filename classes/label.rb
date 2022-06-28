class Label
  attr_accessor :title, :color
  attr_reader :id, :items

  def initialize(id, title, color)
    @id = id
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
  end
end
