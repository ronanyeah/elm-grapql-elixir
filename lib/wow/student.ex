defmodule Wow.Student do
  use Ecto.Schema
  import Ecto.Changeset
  alias Wow.Student


  schema "students" do
    field :first_name, :string
    field :github, :string
    field :last_name, :string

    belongs_to :cohort, Wow.Cohort, foreign_key: :cohort_id

    timestamps()
  end

  @doc false
  def changeset(%Student{} = student, attrs) do
    student
    |> cast(attrs, [:first_name, :last_name, :github])
    |> validate_required([:first_name, :last_name, :github])
  end
end
