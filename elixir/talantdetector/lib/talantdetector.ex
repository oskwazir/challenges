defmodule TalantDetector do

    @moduledoc """
        Decides if a person is playing the banjo
    """


    defp gets_to_play_banjo?(true, name) do
        "#{name} plays banjo"
    end

    defp gets_to_play_banjo?(false, name) do
        "#{name} does not play banjo"
    end


    @doc """
        Provide a name, and if the name starts with the letter R or r
        a message saying   `Foo plays banjo` is returned, otherwise a message saying
        `Bar does not play banjo` is returned.

        ## Example
        iex> TalantDetector.are_you_playing_banjo?("Martin")
        "Martin does not play banjo"

        iex> TalantDetector.are_you_playing_banjo?("Rikke")
        "Rikke plays banjo"

    """
	@spec are_you_playing_banjo?(charlist()) :: charlist()
	def are_you_playing_banjo?(name) do
		String.downcase(name)
        |> String.starts_with?("r")
        |> gets_to_play_banjo?(name)
	end
end
