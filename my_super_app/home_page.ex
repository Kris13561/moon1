defmodule MoonExampleWeb.HomePage do
  use MoonExampleWeb, :live_view

  alias Moon.Autolayouts.TopToDown

  alias Moon.Components.{Heading, Link}

  alias Ecto.Changeset

  alias Moon.Autolayouts.TopToDown


  alias Moon.Design.Button

  def render(assigns) do
    ~F"""
    <TopToDown class="max-w-sm p-4 m-auto gap-4">
      <Heading size={24} class="text-center" is_regular>Hey!</Heading>
      <Button size="xl">First Button</Button>
    </TopToDown>
    """
  end
  
end
