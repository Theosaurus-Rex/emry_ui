defmodule EmryUiWeb.Components.ButtonTest do
  use EmryUiWeb.ConnCase, async: true
  use Surface.LiveViewTest

  alias EmryUiWeb.Components.Button

  @endpoint Endpoint

  test "button" do
    html =
      render_surface do
        ~F"""
        <Button />
        """
      end

    assert html =~ "<button"
    assert html =~ "<button type=\"button\""
    assert html =~ "Button CTA"
  end

  test "button label" do
    html =
      render_surface do
        ~F"""
        <Button label="Emry" />
        """
      end

    assert html =~ "Emry"
  end
end
