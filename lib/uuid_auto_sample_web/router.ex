defmodule UuidAutoSampleWeb.Router do
  use UuidAutoSampleWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", UuidAutoSampleWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # 以下の4行追加
  scope "/api", UuidAutoSampleWeb do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit]
  end
end
