defmodule StrtoWeb.PageController do
  use StrtoWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
