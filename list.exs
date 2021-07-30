list=[1,2,3]
IO.puts list
IO.puts (hd list)# head
IO.puts (tl list)#tail
second_list=[14|list]
IO.puts(second_list)

[head|tail]=second_list

IO.puts(head)
IO.puts(tail)
IO.puts(tail--[1])
IO.puts(Enum.at(tail,2))
IO.puts(length( tail))

kwlist=[{:hello,"world"},{:goodbye,"moon"}]
IO.puts(kwlist[:hello])
