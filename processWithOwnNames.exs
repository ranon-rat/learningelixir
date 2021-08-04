defmodule GSCalculator do
  use GenServer

  def init(param) do
    IO.puts("starting server")
    IO.inspect(param)
    {:ok, %{count: 0}}
  end
  def add(x,y) do

    GenServer.call(GSCalculator.Calculator,{:add,x,y})
    #GenServer.(GSCalculator.Calculator,{"hello",%{count: 1}})
  end
  def start_link() do
    GenServer.start_link(GSCalculator, nil, name: GSCalculator.Calculator)
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

GSCalculator.start_link()
GSCalculator.add(1,2)
GSCalculator.add(1,2)
GSCalculator.add(1,2)
IO.puts("#{GSCalculator.add(1,2)}")
#IO.inspect(GSCalculator.add(1,2))
