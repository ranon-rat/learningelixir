age =  String.to_integer(String.trim(IO.gets("how old are you? ")))
message=if age >=18, do: "u  are welcome" ,else: "get out here"
IO.puts(message)
