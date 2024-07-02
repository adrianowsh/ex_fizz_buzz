defmodule ExFizzBuzzTest do
  use ExUnit.Case
  @file_name "numbers.txt"

  describe "build/1" do
    test "when a valid file provided, returns the converted list" do
      expected = [1, 2, :fizz, 4, :buzz, :buzz, :fizz_buzz, :buzz]
      assert ExFizzBuzz.build(@file_name) == expected
    end

    test "when an invalid file provided, returns the an error" do
      expected = "Error reading the file: enoent"
      assert ExFizzBuzz.build("invalid.txt") == expected
    end
  end
end
