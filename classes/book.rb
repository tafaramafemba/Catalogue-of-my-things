require_relative 'item'

class Book < Item
  attr_reader :publisher, :cover_state
  attr_accessor :published_date

  def initialize(label, published_date, publisher, cover_state)
    super(published_date)
    @id = rand(1..1000)
    add_label(label)

    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end

  def book_to_json
    { title: @label, published_date: @published_date, publisher: @publisher, cover_state: @cover_state }
  end
end
