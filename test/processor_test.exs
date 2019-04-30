defmodule ProcessorTest do
  use ExUnit.Case, async: true
  require Processor, as: P

  describe "query processing when" do
    test "when query is 'stop'" do
      assert P.tokenize("stop") == {:stop, _}
    end
  end
end
