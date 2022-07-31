defmodule EmryUiWeb.Components.Button.Size do
  @moduledoc """
  Example using the `size` property.
  """

  use Surface.Catalogue.Example,
    subject: EmryUiWeb.Components.Button,
    height: "350px",
    # body: Macro.escape(%{"style": "display: flex; flex-direction: column; column-gap: 0.25rem;"}),
    title: "Button sizes"

  alias EmryUiWeb.Components.Button

  def render(assigns) do
    ~F"""
    <Button size="sm" />
    <Button size="md" />
    <Button size="lg" />
    <Button size="xl" />
    <Button size="2xl" />
    """
  end
end

defmodule EmryUiWeb.Components.Button.Hierarchy do
  @moduledoc """
  Example using the `hierarchy` property.
  """

  use Surface.Catalogue.Example,
    subject: EmryUiWeb.Components.Button,
    height: "350px",
    title: "Button hierarchy"

  alias EmryUiWeb.Components.Button

  def render(assigns) do
    ~F"""
    <Button hierarchy="primary" />
    <Button hierarchy="secondary" />
    <Button hierarchy="secondary-gray" />
    <Button hierarchy="tertiary" />
    <Button hierarchy="tertiary-gray" />
    <Button size="none" hierarchy="link-primary" />
    """
  end
end

defmodule EmryUiWeb.Components.Button.Disabled do
  @moduledoc """
  Example using the `disabled` property.
  """

  use Surface.Catalogue.Example,
    subject: EmryUiWeb.Components.Button,
    height: "350px",
    title: "Button disabled"

  alias EmryUiWeb.Components.Button

  def render(assigns) do
    ~F"""
    <Button disabled={true} />
    <Button disabled={true} hierarchy="secondary" />
    <Button disabled={true} hierarchy="secondary-gray" />
    <Button disabled={true} hierarchy="tertiary" />
    <Button disabled={true} hierarchy="tertiary-gray" />
    """
  end
end
