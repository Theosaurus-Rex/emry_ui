defmodule EmryUiWeb.Components.Button do
  @moduledoc """
  Buttons communicate actions that users can take.
  """
  use Surface.Component

  @doc "The button size"
  prop size, :string, values!: ["none", "sm", "md", "lg", "xl", "2xl"], default: "sm"

  @doc "The button hierarchy"
  prop hierarchy, :string,
    values!: [
      "primary",
      "secondary",
      "secondary-gray",
      "tertiary",
      "tertiary-gray",
      "link-primary",
      "link-secondary-gray"
    ],
    default: "primary"

  @doc "The button icon slot"
  slot icon

  @doc "The button icon position"
  prop icon_position, :string, values!: ["leading", "trailing", "dot", "only"], default: "leading"

  @doc "The button state"
  prop state, :string, values!: ["default", "hover", "focused", "disabled"], default: "default"

  @doc "The button label"
  prop label, :string, default: "Button CTA"

  @doc "The button is expanded (full-width)"
  prop expanded, :boolean, default: false

  @doc "The button class overrides"
  prop class, :string, default: nil

  @doc "The button disabled state"
  prop disabled, :boolean, default: false

  @doc "Triggers on click"
  prop click, :event

  @doc "Triggers on focus"
  prop focus, :event

  def render(assigns) do
    ~F"""
    <button
      type="button"
      :on-click={@click}
      :on-focus={@focus}
      disabled={@disabled}
      class={"#{if @class != nil, do: @class, else: "#{handle_button_hierarchy(@hierarchy)} #{handle_button_size(@size)} #{handle_icon_position(@icon_position)} #{if @expanded, do: "w-full"}
          inline-flex items-center justify-center gap-2 text-sm font-medium font-sans transition-colors disabled:cursor-not-allowed"}"}
    >
      <#slot name="icon" /> {@label}
    </button>
    """
  end

  defp handle_button_hierarchy(hierarchy) do
    cond do
      hierarchy == "primary" ->
        "bg-primary-600 hover:bg-primary-700 text-white focus:ring-4 focus:ring-primary-100 disabled:bg-primary-200 drop-shadow-xs rounded-lg"

      hierarchy == "secondary" ->
        "bg-primary-50 hover:bg-primary-100 text-primary-700 focus:ring-4 focus:ring-primary-100 disabled:bg-primary-25 disabled:text-primary-300 drop-shadow-xs rounded-lg"

      hierarchy == "secondary-gray" ->
        "bg-white ring-1 ring-gray-300 text-gray-700 focus:ring-4 focus:ring-gray-100 hover:bg-gray-300 hover:text-gray-800 disabled:hover:bg-white disabled:text-gray-300 disabled:ring-gray-200 drop-shadow-xs rounded-lg"

      hierarchy == "tertiary" ->
        "bg-white text-primary-700 hover:bg-primary-50 disabled:text-gray-300 disabled:hover:bg-white rounded-lg"

      hierarchy == "tertiary-gray" ->
        "bg-white text-gray-500 hover:bg-gray-50 hover:text-gray-600 disabled:text-gray-300 disabled:hover:bg-white rounded-lg"

      hierarchy == "link-primary" ->
        "text-primary-700 hover:text-primary-800 disabled:text-gray-300"

      hierarchy == "link-secondary-gray" ->
        "text-gray-500 hover:text-gray-600 disabled:text-gray-300"
    end
  end

  defp handle_button_size(size) do
    cond do
      size == "none" ->
        ""

      size == "sm" ->
        "px-3.5 py-2"

      size == "md" ->
        "px-4 py-2.5"

      size == "lg" ->
        "px-4.5 py-2.5"

      size == "xl" ->
        "px-5 py-3"

      size == "2xl" ->
        "px-7 py-4"
    end
  end

  defp handle_icon_position(icon_position) do
    cond do
      icon_position == "leading" ->
        "flex-row"

      icon_position == "trailing" ->
        "flex-row-reverse"
    end
  end
end
