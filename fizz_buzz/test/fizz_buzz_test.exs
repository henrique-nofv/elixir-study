defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "format/1" do
    test "when a valid file is provided, returns the converted list" do
      expected_response = {:ok, [1, 2, :fizz, 4, :buzz, :fizzbuzz]}

      assert FizzBuzz.format("file.txt") == expected_response
    end

    test "when a ivalid file is provided, returns an error" do
      expected_response = {:error, "Failed, reason: enoent"}

      assert FizzBuzz.format("invalid.txt") == expected_response
    end
  end
end
