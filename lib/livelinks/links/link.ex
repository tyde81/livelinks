defmodule Livelinks.Links.Link do
  use Ecto.Schema
  import Ecto.Changeset

  schema "links" do
    field :name, :string
    field :uri, :string

    belongs_to :user, Livelinks.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(user, attrs \\ %{}) do
    user
    |> cast(attrs, [:name, :uri])
    |> validate_required([:name, :uri])
  end
end
