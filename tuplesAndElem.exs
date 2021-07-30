defmodule TupleAndElem do

  def rgb(r, g,b) do
    {r, g, b}
  end

  def getColor(rgb, color) do
    cond do
      color == :red -> elem(rgb, 0)
      color == :green -> elem(rgb, 1)
      color == :blue -> elem(rgb, 2)
      true -> nil
    end
  end
end

IO.puts(TupleAndElem.getColor({200,100,240},:green))
