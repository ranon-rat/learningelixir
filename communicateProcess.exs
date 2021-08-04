defmodule  Concurrency_please do
  def sayHello() do
    receive do
      {pid,value}->send(pid,"hello #{value}")

    end

  end
end
pid=spawn(Concurrency_please,:sayHello,[])

send(pid,{self(),"world"})
receive do
  x ->IO.puts(x)

end
