defmodule ProcessorTest do
  use ExUnit.Case, async: true
  require Processor, as: P

  test "some method without param" do
    assert P.tokenize == {:ok}
  end
end
