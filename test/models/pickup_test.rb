require 'test_helper'

class PickupTest < ActiveSupport::TestCase
  # it is in fixtures/pickups.yml
  fixtures :pickups

  def test_pickups

    sell_textbook_pickup = Pickup.new :user_id => pickups(:sell_textbook).user_id, 
    								  :name => pickups(:sell_textbook).name,
    								  :long => pickups(:sell_textbook).long,
    								  :lat => pickups(:sell_textbook).lat,
    								  :obj_type => pickups(:sell_textbook).obj_type,
    								  :image_url => pickups(:sell_textbook).image_url,
    								  :price => pickups(:sell_textbook).price,
    								  :start_time => pickups(:sell_textbook).start_time,
    								  :end_time => pickups(:sell_textbook).end_time,
    								  :description => pickups(:sell_textbook).description
   	# sample code
    # assert perl_book.save
    # perl_book_copy = Book.find(perl_book.id)
    # assert_equal perl_book.title, perl_book_copy.title
    # perl_book.title = "Ruby Tutorial"

    assert sell_textbook_pickup.save
    # assert sell_textbook_pickup.destroy
  end
end
