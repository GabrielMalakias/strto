defmodule Strto.Repo do
  use Ecto.Repo,
    otp_app: :strto,
    adapter: Ecto.Adapters.Postgres
end
