defmodule StatePlease do
  def the_last_name_receive() do
    receive do
      {:get, pid} ->
        send(pid, Process.get(:name))

      {:new, value} ->
        Process.put(:name, value)
    end

    the_last_name_receive()
  end
end

pid = spawn(StatePlease, :the_last_name_receive, [])
send(pid, {:new, "Hello"})
send(pid, {:get, self()})

receive do
  value ->
    IO.puts(value)
    # code
end

send(pid, {:new, "Jhon"})
send(pid, {:get, self()})

receive do
  value ->
    IO.puts(value)
end
