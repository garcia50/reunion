require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_Activity_class_has_a_name
    ali = Activity.new("Ali")

    assert_equal "Ali", ali.name
  end

  def test_participants_returns_hash
    matt = Activity.new("Matt")
     
    assert_equal ({}), matt.participants
  end

  def test_activity_has_participants_with_total_cost
     rob = Activity.new("Rob")

     assert_equal ({Rob => 30}), rob.amount(30)
  end

end
