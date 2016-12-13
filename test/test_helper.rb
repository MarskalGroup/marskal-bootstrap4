$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'marskal/bootstrap4'

require 'minitest/autorun'

module TestHelper
  GOT = 0
  EXPECTED = 1
end

begin
  require "minitest/reporters"
  Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new(color: true)]
rescue LoadError
  puts '*************************************************'
  puts '*                                               *'
  puts '* We Recommend using the minitest-reporters gem.*'
  puts '* However, it is not required.                  *'
  puts '*                                               *'
  puts '*************************************************'
end