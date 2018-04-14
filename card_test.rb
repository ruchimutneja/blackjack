require_relative 'card'
require "test/unit"

class CardTest < Test::Unit::TestCase
	def test_card_face_value
		assert_equal(4, Card::FACE_OPTIONS["4"])
		assert_equal(nil, Card::FACE_OPTIONS["15"])
		assert_equal(11, Card::FACE_OPTIONS["A"])
		assert_equal(10, Card::FACE_OPTIONS["Queen"])
		assert_equal(10, Card::FACE_OPTIONS["King"])
	end
end