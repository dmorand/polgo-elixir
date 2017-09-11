defmodule PolgoWeb.PageController do
  use PolgoWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
