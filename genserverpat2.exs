defmodule GenServerCalculator do
  use GenServer

  def init(param) do
    IO.puts("starting server")
    IO.inspect(param)
    {:ok, %{count: 0}}
  end
  def handle_call({:add,n,m},from,state) do
    resul=n+m
    {:reply,resul,state}

  end
  def handle_cast(msg,state) do
    IO.puts("server received cast: #{msg}")
    {:noreply,state}
  end
  def handle_info(msg,%{count: count})do
    IO.puts("message received #{msg}")
    IO.puts("they call me #{ count} times")
    {:noreply, %{count: count+1}}

  end
end

{:ok,pid}=GenServer.start_link(GenServerCalculator,1)
IO.puts("#{GenServer.call(pid,{:add,2,3})}")#the third parameter is the timeout
IO.puts("#{GenServer.cast(pid,:ass)}")})
