defmodule PluralTest do
  use ExUnit.Case, async: true
  doctest Plural

  import Plural, only: [plural?: 1]

  test "some values for being plural" do
    assert plural?(0), "Plural for 0"
    assert plural?(0.5), "Plural for 0.5"
    refute plural?(1), "Plural for 1"
    refute plural?(1.0), "Plural for 1.0"
    assert plural?(100), "Plural for 100"
  end
end
