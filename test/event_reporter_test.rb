require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require '../lib/event_reporter'





class EventReporterTest < Minitest::Test

  def test_there_is_a_welcome_message
    event = EventReporter.new
    assert_equal "Welcome to EventReporter. What may I assist you with today?", event.welcome_message

  end

end
