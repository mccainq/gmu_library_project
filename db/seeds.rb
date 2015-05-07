# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@agatha = Author.where(name: 'Agatha Christie').first_or_create!(dob: DateTime.new(1890, 9, 15), nationality: 'British', awards: '', biography: 'The quick brown fox ran fast', image_url: 'http://www.famousauthors.org/famous-authors/agatha-christie.jpg')
@stein = Author.where(name: 'John Steinbeck').first_or_create!(dob: DateTime.new(1902, 2, 27), nationality: 'American', awards: '', biography: 'The quick brown fox ran fast', image_url: 'http://www.famousauthors.org/famous-authors/john-steinbeck.jpg')
@twain = Author.where(name: 'Mark Twain').first_or_create!(dob: DateTime.new(1835, 11, 30), nationality: 'American', awards: '', biography: 'The quick brown fox ran fast', image_url: 'http://www.famousauthors.org/famous-authors/mark-twain.jpg')
@clancy = Author.where(name: 'Tom Clancy').first_or_create!(dob: DateTime.new(1947, 4, 12), nationality: 'American', awards: '', biography: 'The quick brown fox ran fast', image_url: 'http://www.famousauthors.org/famous-authors/tom-clancy.jpg')
@leo = Author.where(name: 'Leo Tolstoy').first_or_create!(dob: DateTime.new(1828, 9, 9), nationality: 'Russian', awards: '', biography: 'The quick brown fox ran fast', image_url: 'http://www.famousauthors.org/famous-authors/leo-tolstoy.jpg')
@kip = Author.where(name: 'Rudyard Kipling').first_or_create!(dob: DateTime.new(1865, 12, 30), nationality: 'Indian', awards: '', biography: 'The quick brown fox ran fast', image_url: 'http://www.famousauthors.org/famous-authors/rudyard-kipling.jpg')
@jd = Author.where(name: 'J.D. Salinger').first_or_create!(dob: DateTime.new(1919, 1, 1), nationality: 'American', awards: '', biography: 'The quick brown fox ran fast', image_url: 'http://www.famousauthors.org/famous-authors/j-d-salinger.jpg')
@verne = Author.where(name: 'Jules Verne').first_or_create!(dob: DateTime.new(1828, 2, 8), nationality: 'French', awards: '', biography: 'The quick brown fox ran fast', image_url: 'http://www.famousauthors.org/famous-authors/jules-verne.jpg')
@tolkien = Author.where(name: 'J.R.R. Tolkien').first_or_create!(dob: DateTime.new(1892, 1, 3), nationality: 'British', awards: '', biography: 'The quick brown fox ran fast', image_url: 'http://www.famousauthors.org/famous-authors/j-r-r-tolkien.jpg')


Book.where(title: 'Death on the Nile').first_or_create!(isbn: '978-0062073556', author_id: @agatha.id, genre: 'Mystery', abstract: 'The slow white fox ran slow', pages: 356, image_cover_url: '', published_on: DateTime.new(1900,1,1), total_in_library: 5)
Book.where(title: 'Murder on the Orient Express').first_or_create!(isbn: '978-0062073501', author_id:  @agatha.id, genre: 'Mystery', abstract: 'The slow white fox ran slow', pages: 336, image_cover_url: '', published_on: DateTime.new(1900,1,1), total_in_library: 3)
Book.where(title: 'Of Mice and Men').first_or_create!(isbn: '978-0749717100',  author_id:  @stein.id, genre: 'Novella', abstract: 'The slow white fox ran slow', pages: 112, image_cover_url: '', published_on: DateTime.new(1900,1,1), total_in_library: 6)
Book.where(title: 'Adventures of Huckleberry Finn').first_or_create!(isbn: '978-0486280615',  author_id:  @twain.id, genre: 'Action & Adventure', abstract: 'The slow white fox ran slow', pages: 224, image_cover_url: '', published_on: DateTime.new(1900,1,1), total_in_library: 3)
Book.where(title: 'The Hunt for Red October').first_or_create!(isbn: '978-0425240335', author_id:  @clancy.id, genre: 'Techno-thriller', abstract: 'The slow white fox ran slow', pages: 656, image_cover_url: '', published_on: DateTime.new(1900,1,1), total_in_library: 5)
Book.where(title: 'War and Peace').first_or_create!(isbn: '978-1400079988', author_id:  @leo.id, genre: 'Historical Fiction', abstract: 'The slow white fox ran slow', pages: 1296, image_cover_url: '', published_on: DateTime.new(1900,1,1), total_in_library: 4)
Book.where(title: 'The Jungle Book').first_or_create!(isbn: '978-1503332546', author_id:  @kip.id, genre: 'Action & Adventure', abstract: 'The slow white fox ran slow', pages: 92, image_cover_url: '', published_on: DateTime.new(1900,1,1), total_in_library: 4)
Book.where(title: 'Catcher in the Rye').first_or_create!(isbn: '978-0316769488', author_id:  @jd.id, genre: 'Literary Criticism & Theory', abstract: 'The slow white fox ran slow', pages: 224, image_cover_url: '', published_on: DateTime.new(1900,1,1), total_in_library: 2)
Book.where(title: 'Around the World in 80 Days').first_or_create!(isbn: '978-1503215153', author_id:  @verne.id, genre: 'Action & Adventure', abstract: 'The slow white fox ran slow', pages: 130, image_cover_url: '', published_on: DateTime.new(1900,1,1), total_in_library: 1)
Book.where(title: 'The Hobbit').first_or_create!(isbn: '978-0547928227', author_id:  @tolkien.id, genre: 'Science Fiction & Fantasy', abstract: 'The slow white fox ran slow', pages: 300, image_cover_url: '', published_on: DateTime.new(1900,1,1), total_in_library: 2)
Book.where(title: 'The Silmarillion').first_or_create!(isbn: '978-0345325815', author_id:  @tolkien.id, genre: 'Science Fiction & Fantasy', abstract: 'The slow white fox ran slow', pages: 480, image_cover_url: '', published_on: DateTime.new(1900,1,1), total_in_library: 1)

User.where().first_or_create!()