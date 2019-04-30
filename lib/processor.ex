defmodule Processor do
  def tokenize("stop") do 
    {:stop, "Thank you, come again!"}
  end

  def tokenize(query) do
    tokens = 
      query
      |> String.split(" ")
      |> Enum.map(fn string -> trim_word(string) end)
      |> Enum.reject(fn string -> string == "" end)

    { :ok, tokens }
  end
  
  def trim_word(string) do
    ~r/[\n\t\r.!?\\ ,]/
      |> Regex.replace(string, "")
  end
end
