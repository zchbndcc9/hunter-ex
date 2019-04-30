defmodule Processor do
  def tokenize("stop") do 
    {:stop, "Thank you, come again!"}
  end

  def tokenize(query) do
    query
    |> String.split(" ")
    |> &({:ok, &1}).()
  end
end
