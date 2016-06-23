defmodule SleighAuthentication do
  @moduledoc """
    SleighAuthentication module provides access to use Santa's sleigh
  """
  @doc """
    Authenticate access given login and password.
    
    Returns `true` or `false`
    
    ## Examples
    
      iex> SleighAuthentication.authenticate?("Santa Claus", "Ho Ho Ho!")
      true

      iex> SleighAuthentication.authenticate?("Santa", "Hi Ho!")
      false
  """
	def authenticate?("Santa Claus", "Ho Ho Ho!"), do: true
	def authenticate?(_,_), do: false
end
