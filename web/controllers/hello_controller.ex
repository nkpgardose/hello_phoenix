require IEx;
defmodule HelloPhoenix.HelloController do
  use HelloPhoenix.Web, :controller
  
  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"messenger" => messenger}) do
    render conn, :show, messenger: messenger
  end
end
