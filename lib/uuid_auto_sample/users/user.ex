defmodule UuidAutoSample.Users.User do
  use Ecto.Schema
  import Ecto.Changeset


  @primary_key {:id, Ecto.UUID, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "users" do
    field :email, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :name])
    |> validate_required([:email, :name])
  end
end
