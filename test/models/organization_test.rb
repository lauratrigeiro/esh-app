require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
	def setup
	ben = Time.new.to_i.to_s
  	@org = Organization.new(
  		{ "name" => "Test School", "ben" => "9876", "purchases" => [ 
  			"bandwidth" => 100, "measure" => "g", "cost" => 25
  		  	]})
  end

  test "should be valid" do
  	assert @org.valid?
  end

  test "name should be present" do
  	@org.name = ""
  	assert_not @org.valid?
  end

  test "ben should be present" do
  	@org.ben = ""
  	assert_not @org.valid?
  end

  # test "ben should be unique" do
  # 	duplicate_org = @org.dup
  # 	@org.save
  # 	assert_not duplicate_org.valid?
  # end

  # test "purchases are associated with org" do
  # 	@org.save
  # 	assert_equal 1, @org.purchases.count
  # end
end