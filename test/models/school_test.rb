require 'test_helper'

class SchoolTest < ActiveSupport::TestCase

  def setup
  	@school = School.new(name: "Test School", ben: "101")
  	@purchase = SchoolPurchase.new(ben: "101", bandwidth: 100, measure: "g", cost: 25)
  end

  test "should be valid" do
  	assert @school.valid?
  end

  test "name should be present" do
  	@school.name = ""
  	assert_not @school.valid?
  end

  test "ben should be present" do
  	@school.ben = ""
  	assert_not @school.valid?
  end

  test "ben should be unique" do
  	duplicate_school = @school.dup
  	@school.save
  	assert_not duplicate_school.valid?
  end

  test "purchases are associated with school" do
  	@school.save!
  	@purchase.save!
  	assert @school.purchases.include?(@purchase)
  end
end
