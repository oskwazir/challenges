defmodule Plural do
	@moduledoc """
		Plural module provides functions to help with plurality
	"""

	@doc """
		Provide a Integer or Float to know if the quantity is plural

		Returns `true` or `false`

		## Examples
		iex> Plural.plural?(2)
		true

		iex> Plural.plural?(10.5)
		true

		iex> Plural.plural?(1.0)
		false

		iex> Plural.plural?(1)
		false

	"""
	def plural?(n) when n != 1 do
		true
	end
	def plural?(_), do: false
end
