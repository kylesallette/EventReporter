class Help



  def help_list

    p ":These are your available commands:"
    p "help <command>"
    p "load <filename>"
    p "load <load complete event list>"
    p "queue count"
    p "queue clear"
    p "queue print"
    p "queue print by <attribute>"
    p "queue save to <filename.csv>"
    p "find <attribute> <criteria>"
    p "quit"

  end

end
