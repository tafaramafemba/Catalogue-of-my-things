require 'date'

class Item
  attr_reader :id, :archived
  attr_accessor :author, :genre, :label, :published_date

  def initialize(published_date, archived: false)
    @id = id
    @published_date = Date.parse(published_date)
    @current_year = DateTime.now.year
    @archived = archived
  end

  def can_be_archived?
    (@current_year - @published_date.year) > 10
  end

  def move_to_archive
    @archived = can_be_archived?
  end

  def add_author(author)
    @author = author
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_label(label)
    @label = label
  end
end
