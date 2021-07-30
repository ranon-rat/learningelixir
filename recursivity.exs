defmodule RecursiveStuff do
  def factorial(0) ,do: 1

  def factorial(x), do: x * factorial(x - 1)

end

IO.puts(RecursiveStuff.factorial(5))
