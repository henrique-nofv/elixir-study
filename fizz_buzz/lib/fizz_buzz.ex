defmodule FizzBuzz do
  @moduledoc """
  Documentation for `FizzBuzz`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> FizzBuzz.hello()
      :world

  """

  def format(file) do
    file
    |> File.read()
    |> handle_file
  end

  def handle_file{:ok, result} do
    result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate/1)
  end

  def handle_file{:error, reason} do "Failed, reason: #{reason}" end

  def convert_and_evaluate(elem) do
    elem
    |> String.trim()
    |> String.to_integer()
    |> evaluate_number
  end

  def evaluate_number(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  def evaluate_number(number) when rem(number, 3) == 0, do: :fizz
  def evaluate_number(number) when rem(number, 5) == 0, do: :buzz
  def evaluate_number(number), do: number
end
