defmodule TalantDetectorTest do
  use ExUnit.Case, async: true
  doctest TalantDetector

  import TalantDetector, only: [are_you_playing_banjo?: 1]

  test "play and don't play banjo" do
    assert are_you_playing_banjo?("Martin") == "Martin does not play banjo"
    assert are_you_playing_banjo?("Rikke") == "Rikke plays banjo"
  end
end
