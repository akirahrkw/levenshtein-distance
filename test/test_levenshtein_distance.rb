$LEVENSHTEIN_LIB = File.join(File.dirname(__FILE__), '..', 'lib')
$LOAD_PATH << $LEVENSHTEIN_LIB
require 'test/unit'
require 'edit_distance'

class TestLevenshteinDistance < Test::Unit::TestCase
  
  def test_ld
    distance = "a".ld("a")
    assert_equal distance, 0
  end
  
  def test_levenshtein_distance
    
    distance = "a".levenshtein_distance("a")
    assert_equal distance, 0
    
    distance = "abc".levenshtein_distance("abc")
    assert_equal distance, 0
    
    distance = "abc".levenshtein_distance("abb")
    assert_equal distance, 1
    
    distance = "abc".levenshtein_distance("abcccc")
    assert_equal distance, 3
    
    distance = "akirahrkw".levenshtein_distance("hirakawa")
    assert_equal distance, 6
    
    distance = "kitten".levenshtein_distance("sitting")
    assert_equal distance, 3
    
    distance = "saturday".levenshtein_distance("sunday")
    assert_equal distance, 3
    
    distance = "rosettacode".levenshtein_distance("raisethysword")
    assert_equal distance, 8
  end
end