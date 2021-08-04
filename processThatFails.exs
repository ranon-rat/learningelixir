defmodule ProcessThatFails do
  def calculate() do
    receive do
      {pid, :+,a,b} ->send(pid, a+b)
      {pid, :-,a,b} ->send(pid, a-b)
      {_pid, :/,_a,0} ->exit("divition /0")
      {pid, :/,a,b} ->send(pid, a/b)
      {pid, :*,a,b} ->send(pid, a*b)
      {pid,_,_,_}-> send(pid, "unknown op")
        # code
    end

  end
end

pid=spawn_link(ProcessThatFails,:calculate, [])
send(pid, {self(),:/,1,0})
Process.link(pid,self())
receive do
  x ->IO.puts(x)
    # code
end
