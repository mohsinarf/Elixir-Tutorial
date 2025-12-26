defmodule StateStoreTest do
  use ExUnit.Case
  doctest StateStore

  test "greets the world" do
    assert StateStore.hello() == :world
  end
end
