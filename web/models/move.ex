defmodule Polgo.Move do
  alias Polgo.Move

  @white :white
  @black :black

  @board_size 8

  @enforce_keys [:x, :y, :color, :time]
  defstruct [:x, :y, :color, :time ]

  def white(x, y), do: move(x, y, @white)
  def black(x, y), do: move(x, y, @black)

  defp move(x, y, color)
  when x >= 0 and x < @board_size and y >= 0 and y < @board_size do
    %Move{x: x, y: y, color: color, time: DateTime.utc_now}
  end

end
