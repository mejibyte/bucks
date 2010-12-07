require 'helper'

class TestBucks < Test::Unit::TestCase
  def test_currency_for_every_country_in_the_list
    Bucks::Currency::COUNTRIES.each do |country|
      assert Bucks::Currency.find(country)
    end
  end
  
  def test_currency_for_an_unexisting_country
    assert_nil Bucks::Currency.find("Unicornland")
  end
end
