defmodule GenServerCalculator do
  use GenServer

  def init(param) do
    IO.puts("starting server")
    IO.inspect(param)
    {:ok, %{count: 0}}
  end
  def handle_info(msg,%{count: count})do
    IO.puts("message received #{msg}")
    IO.puts("they call me #{ count} times")
    {:noreply, %{count: count+1}}

  end
end


{:ok,pid}=GenServer.start_link(GenServerCalculator, "param")
send(pid, "hello")

send(pid, "hello")

send(pid, "hello")

send(pid, "hello")
