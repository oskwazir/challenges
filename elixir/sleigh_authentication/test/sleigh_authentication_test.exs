defmodule SleighAuthenticationTest do
  use ExUnit.Case
  doctest SleighAuthentication

  import SleighAuthentication, only: [authenticate?: 2]

  test "authenticates with correct credentials" do
    assert authenticate?("Santa Claus", "Ho Ho Ho!")
  end
  
  test "doesn't authenticate with incorrect credentials" do
    assert authenticate?("Santa", "Ho Ho Ho!") == false
    assert authenticate?("Santa Claus", "Ho Ho!") == false
    assert authenticate?("jhoffner", "CodeWars") == false
  end
end

