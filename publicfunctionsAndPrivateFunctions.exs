defmodule PublicAndPrivate do
  defp saySomethingWithResult(r) do
    IO.puts "the result is #{r}"

  end
  def add(a,b) do
    r=a+b
    saySomethingWithResult(r)
    r
  end


end

IO.puts PublicAndPrivate.add(12,13)
