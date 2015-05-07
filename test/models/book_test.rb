require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @book = Book.new
  end

  test 'should not create book' do
    assert_not @book.save
  end
end
