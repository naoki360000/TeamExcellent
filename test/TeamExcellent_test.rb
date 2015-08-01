require 'test_helper'

class TeamExcellentTest < Minitest::Test
  def setup
    @test = ::TeamExcellent::Main.new
  end
  def test_that_it_has_a_version_number
    refute_nil ::TeamExcellent::VERSION
  end

  def test_it_does_something_useful
    assert true
  end
  
  def test_calculate
    assert true
  end
  
end
