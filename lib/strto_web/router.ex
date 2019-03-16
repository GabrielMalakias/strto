defmodule StrtoWeb.Router do
  use StrtoWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", StrtoWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", StrtoWeb do
    pipe_through :api
  end
end
