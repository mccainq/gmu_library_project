# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@agatha = Author.create(name: 'Agatha Christie', dob: DateTime.new(1890, 9, 15), nationality: 'British', awards: '', biography: '', image_url: 'http://www.famousauthors.org/famous-authors/agatha-christie.jpg')
@stein = Author.create(name: 'John Steinbeck', dob: DateTime.new(1902, 2, 27), nationality: 'American', awards: '', biography: '', image_url: 'http://www.famousauthors.org/famous-authors/john-steinbeck.jpg')
@twain = Author.create(name: 'Mark Twain', dob: DateTime.new(1835, 11, 30), nationality: 'American', awards: '', biography: '', image_url: 'http://www.famousauthors.org/famous-authors/mark-twain.jpg')
@clancy = Author.create(name: 'Tom Clancy', dob: DateTime.new(1947, 4, 12), nationality: 'American', awards: '', biography: '', image_url: 'http://www.famousauthors.org/famous-authors/tom-clancy.jpg')
@leo = Author.create(name: 'Leo Tolstoy', dob: DateTime.new(1828, 9, 9), nationality: 'Russian', awards: '', biography: '', image_url: 'http://www.famousauthors.org/famous-authors/leo-tolstoy.jpg')
@kip = Author.create(name: 'Rudyard Kipling', dob: DateTime.new(1865, 12, 30), nationality: 'Indian', awards: '', biography: '', image_url: 'http://www.famousauthors.org/famous-authors/rudyard-kipling.jpg')
@jd = Author.create(name: 'J.D. Salinger', dob: DateTime.new(1919, 1, 1), nationality: 'American', awards: '', biography: '', image_url: 'http://www.famousauthors.org/famous-authors/j-d-salinger.jpg')
@verne = Author.create(name: 'Jules Verne', dob: DateTime.new(1828, 2, 8), nationality: 'French', awards: '', biography: '', image_url: 'http://www.famousauthors.org/famous-authors/jules-verne.jpg')
@tolkien = Author.create(name: 'J.R.R. Tolkien', dob: DateTime.new(1892, 1, 3), nationality: 'British', awards: '', biography: '', image_url: 'http://www.famousauthors.org/famous-authors/j-r-r-tolkien.jpg')

Book.create(isbn: '978-0062073556', title: 'Death on the Nile', author_id: @agatha.id, genre: 'Mystery', abstract: '', pages: 356, image_cover_url: '', total_in_library: 5)
Book.create(isbn: '978-0062073501', title: 'Murder on the Orient Express', author_id:  @agatha.id, genre: 'Mystery', abstract: '', pages: 336, image_cover_url: '', total_in_library: 3)
Book.create(isbn: '978-0749717100', title: 'Of Mice and Men', author_id:  @stein.id, genre: 'Novella', abstract: '', pages: 112, image_cover_url: '', total_in_library: 6)
Book.create(isbn: '978-0486280615', title: 'Adventures of Huckleberry Finn', author_id:  @twain.id, genre: 'Action & Adventure', abstract: '', pages: 224, image_cover_url: '', total_in_library: 3)
Book.create(isbn: '978-0425240335', title: 'The Hunt for Red October', author_id:  @clancy.id, genre: 'Techno-thriller', abstract: '', pages: 656, image_cover_url: '', total_in_library: 5)
Book.create(isbn: '978-1400079988', title: 'War and Peace', author_id:  @leo.id, genre: 'Historical Fiction', abstract: '', pages: 1296, image_cover_url: '', total_in_library: 4)
Book.create(isbn: '978-1503332546', title: 'The Jungle Book', author_id:  @kip.id, genre: 'Action & Adventure', abstract: '', pages: 92, image_cover_url: '', total_in_library: 4)
Book.create(isbn: '978-0316769488', title: 'Catcher in the Rye', author_id:  @jd.id, genre: 'Literary Criticism & Theory', abstract: '', pages: 224, image_cover_url: '', total_in_library: 2)
Book.create(isbn: '978-1503215153', title: 'Around the World in 80 Days', author_id:  @verne.id, genre: 'Action & Adventure', abstract: '', pages: 130, image_cover_url: '', total_in_library: 1)
Book.create(isbn: '978-0547928227', title: 'The Hobbit', author_id:  @tolkien.id, genre: ' Science Fiction & Fantasy', abstract: '', pages: 300, image_cover_url: '', total_in_library: 2)
Book.create(isbn: '978-0345325815', title: 'The Silmarillion', author_id:  @tolkien.id, genre: ' Science Fiction & Fantasy', abstract: '', pages: 480, image_cover_url: '', total_in_library: 1)