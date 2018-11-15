defmodule UuidAutoSampleWeb.PageController do
  use UuidAutoSampleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
