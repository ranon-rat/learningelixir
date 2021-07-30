[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
|> Enum.map(fn x -> x * 10 end)
|> Enum.filter(fn x -> rem(x, if(x != 10, do: x - 10, else: 10)) != 0 end)
|> IO.inspect()
|> Enum.reduce(1, fn x, acc -> x * acc end)
|> IO.puts()
