defmodule CommandedEventstoreDbTest do
  use ExUnit.Case
  doctest CommandedEventstoreDb

  test "greets the world" do
    assert CommandedEventstoreDb.hello() == :world
  end
end
