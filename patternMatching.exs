defmodule PatternMatchingLOl do
  def newIP(limite , :ipv4) do
  "#{Enum.random(1..limite)}.#{Enum.random(1..limite)}.#{Enum.random(1..limite)}.#{Enum.random(1..limite)}"
  end
  def newIP(limite,:ipv6) do
    "#{Integer.to_string(Enum.random(1..limite),16)}:#{Integer.to_string(Enum.random(1..limite),16)}:#{Integer.to_string(Enum.random(1..limite),16)}:#{Integer.to_string(Enum.random(1..limite),16)}:#{Integer.to_string(Enum.random(1..limite),16)}:#{Integer.to_string(Enum.random(1..limite),16)}:#{Integer.to_string(Enum.random(1..limite),16)}:#{Integer.to_string(Enum.random(1..limite),16)}"
  end

end

{a,b} = {:hello, :world}
IO.puts("#{a} #{b}")

IO.puts(PatternMatchingLOl.newIP(0xffff,:ipv6))
