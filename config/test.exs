use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :app, App.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :app, App.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "app_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  ownership_timeout: 10 * 60 * 1000

config :app, :http, App.Http.TestHttp
