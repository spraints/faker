require File.dirname(__FILE__) + '/test_helper.rb'
require 'uri'

class TestFakerName < Test::Unit::TestCase

  def setup
    @tester = Faker::Name
  end
  
  def test_name
    assert @tester.name.match(/(\w+\.? ?){2,3}/)
  end
  
  def test_prefix
    assert @tester.prefix.match(/[A-Z][a-z]+\.?/)
  end
  
  def test_suffix
    assert @tester.suffix.match(/[A-Z][a-z]*\.?/)
  end

  def test_avatar_url
    assert_match URI.regexp, @tester.avatar_url
  end
end
