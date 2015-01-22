require 'test_helper'

class SchoolPurchaseTest < ActiveSupport::TestCase
  
  def setup
  	@purchase = SchoolPurchase.new(ben: "102", bandwidth: 100, measure: "g", cost: 25)
  end

  test "should be valid" do
  	assert @purchase.valid?
  end

  test "ben should be present" do
  	@purchase.ben = ""
  	assert_not @purchase.valid?
  end

  test "bandwidth should be present" do
  	@purchase.bandwidth = nil
  	assert_not @purchase.valid?
  end

  test "bandwidth should equal 10, 100, or 1000" do
  	@purchase.bandwidth = 99
  	assert_not @purchase.valid?
  end

  test "measure should be present" do
  	@purchase.measure = ""
  	assert_not @purchase.valid?
  end

  test "measure should equal 'k', 'm', 'g' or 't'" do
  	@purchase.measure = 'a'
  	assert_not @purchase.valid?
  end

  test "cost should be present" do
  	@purchase.cost = nil
  	assert_not @purchase.valid?
  end
end
