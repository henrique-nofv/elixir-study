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

  defp handle_file{:ok, result} do
    result = result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate/1)

    {:ok, result}
  end

  defp handle_file{:error, reason} do {:error, "Failed, reason: #{reason}"} end

  defp convert_and_evaluate(elem) do
    elem
    |> String.trim()
    |> String.to_integer()
    |> evaluate_number
  end

  defp evaluate_number(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp evaluate_number(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_number(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_number(number), do: number
end
