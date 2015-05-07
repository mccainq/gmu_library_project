class Book < ActiveRecord::Base
  GENRES = ['Mystery', 'Novella', 'Action & Adventure', 'Techno-thriller',
   'Historical Fiction', 'Literary Criticism & Theory', 'Science Fiction & Fantasy', 'Classic',
   'Crime/Detective', 'Essay', 'Textbook', 'Humor']
  validates :isbn, :title, :abstract, :pages, :genre, :published_on, :total_in_library, :author, presence: true
  validates :abstract, length: { minimum: 15 }
  validates :pages, :total_in_library,
    numericality: { only_integer: true, greater_than_or_equal_to: 0 },
    unless: "pages.blank?"
  validates :author, presence: true
  validates :genre, inclusion: { in: GENRES }

  belongs_to :author
  has_many :reservations

def self.search(query)
    joins(:author).where("title like ? OR isbn like ? OR authors.name like  ?", "%#{query}%", "#{query}", "%#{query}%")
end

end