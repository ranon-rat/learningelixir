
defmodule ConcurrencyExample do
  def infinite_loop do
    IO.puts("goodbye world")
    infinite_loop()
  end
  def infinite_loop_2 do
  IO.puts("hello worl")
  infinite_loop_2()
  end

end
spawn(ConcurrencyExample,:infinite_loop_2,[])
ConcurrencyExample.infinite_loop()
