defmodule Fizzbuzz do
  @moduledoc """
  Solving the classic FizzBuzz, functionally w/ Elixir
  For the values from 1 to 100 print:
    If value is divisible by 3, Fizz
    If value is divisible by 5, Buzz
    If value is Divisible by 15, FizzBuzz
    Else the value
  """

  def fb do
    printValue(1)
  end

  @doc """
  Recursive function that will print the value of the getValue function
  """
  def printValue(num) when num > 100 do
  end

  def printValue(num) do
    IO.puts(getValue(num))
    printValue(num+1)
  end

  @doc """
  Resonsible for determining what should be printed for each value
  """
  def getValue(num) when rem(num, 3) == 0 do
    # Check if also divisible by 15
    "Fizz" <> getValueFor5(num)
  end

  def getValue(num) when rem(num, 5) == 0 do
    getValueFor5(num)
  end

  def getValue(num) do
    num
  end

  @doc """
  Needed for both values divisible by 5 and 15
  """
  def getValueFor5(num) when rem(num, 5) == 0 do
    "Buzz"
  end

  def getValueFor5(_) do
    ""
  end

end
