defmodule Calculator do
  def add(x, y) do
    x + y
  end

  def subtraction(x, y) do
    x - y
  end

  def divition(_x, y) when y == 0 do
    :undefined
  end

  def divition(x, y) do
    x / y
  end
end
IO.puts(Calculator.divition(12,0))
IO.puts(Calculator.divition(12,12))
