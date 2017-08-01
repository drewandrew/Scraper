defmodule Scraper.Job do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "jobs" do
    field :title, :string
    field :date_posted, :utc_datetime
    field :description, :string
    field :source, :string

    timestamps
  end
end
