require_relative 'find'

class Queue

  attr_reader :contents
              :list


  def initialize
    @list = []
    @event_attendees
  end

  def event_attendees
    contents = CSV.open './data/full_event_attendees.csv', headers: true, header_converters: :symbol
    contents.each do |row|
    first_name = row[:first_name]
    last_name = row[:last_name]
    email = row[:email_address]
    phone = row[:homephone]
    street = row[:street]
    city = row[:city]
    state = row[:state]
    zipcode = row[:zipcode]

    @list << contents
    p @list

    end
  end

end















#   The program has a concept called the “queue”. The queue holds the stored
# results from a previous search. As a user, I issue a search command to find records,
# then later issue another command to do work with those results. The queue is not cleared until
# he user runs the command queue clear or a new find command.
