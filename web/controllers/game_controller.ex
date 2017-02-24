defmodule Polgo.GameController do
  use Polgo.Web, :controller

  def show(conn, %{"id" => id}) do
    render conn, "game.html", id: id
  end
end
