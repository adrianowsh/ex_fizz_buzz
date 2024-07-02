defmodule ExFizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, file}) do
    file
    |> String.split(",", trim: true)
    |> Enum.map(&String.to_integer/1)
    |> Enum.map(&evaluate_number/1)
  end

  defp handle_file({:error, reason}), do: "Error reading the file: #{reason}"

  defp evaluate_number(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizz_buzz
  defp evaluate_number(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_number(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_number(number), do: number
end
