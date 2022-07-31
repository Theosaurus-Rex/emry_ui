defmodule EmryUiWeb.Demo do
  use Surface.LiveView

  alias EmryUiWeb.Components.Hero

  def render(assigns) do
    ~F"""
    <div>
      <Hero name="John Doe" subtitle="How are you?" color="info" />
    </div>
    """
  end
end
