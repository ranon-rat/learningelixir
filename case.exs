fl=File.read("compile_modules.ex")
case fl do
    {:ok,x}->IO.puts(x)
    {:error,y}->IO.puts(y)
end
