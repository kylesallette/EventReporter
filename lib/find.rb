require 'csv'


class Find


  attr_reader :find,
              :queue

  def initialize


  end

  def find
    csv_data = CSV.read './data/full_event_attendees.csv'
    headers = csv_data.shift.map {|i| i.to_s }
    string_data = csv_data.map {|row| row.map {|cell| cell.to_s } }
    array_of_hashes = string_data.map {|row| Hash[*headers.zip(row).flatten] }
    p csv_data[6]

  end

end
