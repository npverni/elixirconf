defmodule Support.UserView do
  use Support.Web, :view

  def render("index.json", %{users: users} = assigns) do
    %{data: render_many(users, Support.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, Support.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      type: "users",
      attributes: %{
      name: user.name,
      email: user.email}}
  end
end
