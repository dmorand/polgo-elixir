defmodule Polgo.MoveTest do
  use ExUnit.Case, async: true

  alias Polgo.Move
     test "white" do
       white = Move.white(0, 1)
       assert white.x == 0
       assert white.y == 1
       assert white.color == :white
     end

     test "black" do
       black = Move.black(2, 3)
       assert black.x == 2
       assert black.y == 3
       assert black.color == :black
     end

     test "invalid" do
       assert_raise FunctionClauseError, fn ->
         Move.white(8, 8)
       end
     end
end
