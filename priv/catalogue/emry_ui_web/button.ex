defmodule EmryUiWeb.Components.Button.Default do
  @moduledoc """
  Example `default` button.
  """

  use Surface.Catalogue.Example,
    subject: EmryUiWeb.Components.Button,
    title: "Button default"

  alias EmryUiWeb.Components.Button

  def render(assigns) do
    ~F"""
    <Button />
    """
  end
end

defmodule EmryUiWeb.Components.Button.Size do
  @moduledoc """
  Examples using the `size` property.
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
  Examples using the `hierarchy` property.
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
    <Button size="none" hierarchy="link-secondary-gray" />
    """
  end
end

defmodule EmryUiWeb.Components.Button.Disabled do
  @moduledoc """
  Examples using the `disabled` property.
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

defmodule EmryUiWeb.Components.Button.Class do
  @moduledoc """
  Example using the `class` property.
  """

  use Surface.Catalogue.Example,
    subject: EmryUiWeb.Components.Button,
    title: "Button class"

  alias EmryUiWeb.Components.Button

  def render(assigns) do
    ~F"""
    <Button class="inline-flex items-center px-2.5 py-1.5 border border-transparent text-xs font-medium rounded text-indigo-700 bg-indigo-100 hover:bg-indigo-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" />
    """
  end
end

defmodule EmryUiWeb.Components.Button.Expanded do
  @moduledoc """
  Example using the `expanded` property.
  """

  use Surface.Catalogue.Example,
    subject: EmryUiWeb.Components.Button,
    title: "Button expanded"

  alias EmryUiWeb.Components.Button

  def render(assigns) do
    ~F"""
    <Button expanded={true} />
    """
  end
end
