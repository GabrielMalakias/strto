use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :strto, StrtoWeb.Endpoint,
  secret_key_base: "1234"

# Configure your database
config :strto, Strto.Repo,
  username: "123",
  password: "123",
  database: "123",
  pool_size: 15
