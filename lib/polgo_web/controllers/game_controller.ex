defmodule PolgoWeb.GameController do
    use PolgoWeb, :controller
  
    def show(conn, %{"id" => id}) do
      render conn, "game.html", id: id
    end
  end
  