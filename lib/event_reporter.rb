require_relative 'find'
require_relative 'help'
require_relative 'queue'

class EventReporter

  attr_reader :find,
              :help,
              :queue


  def initialize
    @find = Find.new
    @help = Help.new
    @queue = Queue.new
  end

  def welcome_message
    puts "Welcome to EventReporter. What may I assist you with today?"
  end

  def input

    while(command = gets.chomp.downcase)
    break if command == "quit"

      if command == "find"
        @find.find
      elsif command == "help"
        @help.help_list
      elsif command == "load"
        @queue.event_attendees
      else
        puts "Sorry, I dont understand that command."

      end
    end
  end

end
