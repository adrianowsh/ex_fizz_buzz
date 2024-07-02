defmodule ExFizzBuzzTest do
  use ExUnit.Case
  doctest ExFizzBuzz

  test "greets the world" do
    assert ExFizzBuzz.hello() == :world
  end
end
