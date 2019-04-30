defmodule ProcessorTest do
  use ExUnit.Case, async: true
  require Processor, as: P

  describe "word trimmer when" do
    test "word is empty" do
      assert Processor.trim_word("") == ""
    end
    
    test "whitespace" do
      assert Processor.trim_word("     \n \t \r        ") == ""
    end
    
    test "regular word with punctuation" do
      assert Processor.trim_word("  !   abc?,   ") == "abc"
    end
  end
  
  describe "query processing when" do
    test "query is 'stop'" do
      {status, _} = P.tokenize("stop")
      assert status == :stop
    end

    test "reqular query" do
      { status, res } = P.tokenize("brown        cow, is a cow?")
      assert status == :ok
      assert res == ["brown", "cow", "is", "a", "cow"]
    end
  end
end
