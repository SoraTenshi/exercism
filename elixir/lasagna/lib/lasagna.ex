defmodule Lasagna do
  def expected_minutes_in_oven(), do: 40

  def remaining_minutes_in_oven(duration) do
    expected_minutes_in_oven() - duration
  end

  def preparation_time_in_minutes(layers), do: 2 * layers

  def total_time_in_minutes(layers, oven_time_spent) do
    preparation_time_in_minutes(layers) + oven_time_spent
  end

  def alarm() do
    "Ding!"
  end
end
