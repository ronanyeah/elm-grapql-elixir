defmodule Alumni.StudentResolver do
  alias Alumni.{Student, Repo}

  def all(_args, _info) do
    {:ok, Repo.all(Student)}
  end

  def create(args, _info) do
    %Student{}
    |> Student.changeset(args)
    |> Repo.insert
  end
end