defmodule EmryUi.Repo do
  use Ecto.Repo,
    otp_app: :emry_ui,
    adapter: Ecto.Adapters.Postgres
end
