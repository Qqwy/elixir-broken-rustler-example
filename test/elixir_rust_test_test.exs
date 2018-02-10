defmodule ElixirRustTestTest do
  use ExUnit.Case
  doctest ElixirRustTest

  test "greets the world" do
    assert ElixirRustTest.hello() == :world
  end
end
