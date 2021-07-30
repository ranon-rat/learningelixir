defmodule Function_capture do
  def simpleCallbackWIthFunctionCapture(func,a,b) do
    func.(a,b)
  end
end


IO.puts Function_capture.simpleCallbackWIthFunctionCapture(&rem/2,12,13)
