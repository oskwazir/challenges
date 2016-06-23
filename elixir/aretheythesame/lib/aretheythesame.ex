defmodule Aretheythesame do
	@moduledoc """
		Aretheythesame module helps with comparing lists
	"""

	defp is_equal?(a,b) do
		a === b
	end

	@doc """
		Provide two lists of numbers to know if the second list contains
		the squared values for all items in the first list

		Returns `true` or `false`

		## Examples
		iex> range = 1..10
		iex> squared = for x <- range, do: x * x
		iex> Aretheythesame.comp(range, squared)
		true

		iex> range = 1..10
		iex> times_two = for x <- range, do: x * 2
		iex> Aretheythesame.comp(range, times_two)
		false
	"""
	@spec comp([number], [number]) :: boolean
	def comp(a,b) do
		Stream.map(a, &(&1 * &1))
		|> Enum.sum()
		|> is_equal?(Enum.sum(b))
	end

end
