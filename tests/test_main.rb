# tests/test_main.rb

require_relative '../lib/main'
require 'test/unit'

class TestMain < Test::Unit::TestCase
  def test_main_with_valid_input
    main('tests/valid_input.txt', 'tests/output.txt')
    assert(File.exist?('tests/output.txt'))
  end

  def test_main_with_invalid_input
    assert_raise(ArgumentError) { main('tests/invalid_input.txt', 'tests/output.txt') }
  end
end
