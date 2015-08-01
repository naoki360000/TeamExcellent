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
  
  def test_evaluate
    assert_equal "5", @test.evaluate(90) 
    assert_equal "4", @test.evaluate(89) 
    assert_equal "4", @test.evaluate(80) 
    assert_equal "3", @test.evaluate(79) 
    assert_equal "3", @test.evaluate(70) 
    assert_equal "2", @test.evaluate(69) 
    assert_equal "2", @test.evaluate(60) 
    assert_equal "1", @test.evaluate(59) 
    assert_equal "1", @test.evaluate(1) 
    assert_equal "0", @test.evaluate(0) 
  end

end
