defmodule Scraper.Repo.Migrations.CreateJobs do
  use Ecto.Migration

  def change do
    create table(:jobs, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :title, :string
      add :date_posted, :utc_datetime
      add :description, :string
      add :source, :string

      timestamps
    end
  end
end
