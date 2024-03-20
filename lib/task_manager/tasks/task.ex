defmodule TaskManager.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :body, :string
    field :complete, :boolean, default: false
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:title, :body, :complete])
    |> validate_required([:title, :body, :complete])
  end
end
