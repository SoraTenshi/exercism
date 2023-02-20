defmodule LogLevel do
  @level %{
    0 => :trace,
    1 => :debug,
    2 => :info,
    3 => :warning,
    4 => :error,
    5 => :fatal,
  }

  # This is the reason i love elixir <3
  defp convert(l, true) when l in [:trace, :fatal], do: :unknown
  defp convert(nil, _legacy?), do: :unknown
  defp convert(level, _legacy?), do: level

  def to_label(level, legacy?) do
    convert(@level[level], legacy?)
  end

  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?) 

    cond do
      label in [:error, :fatal] -> :ops
      label == :unknown and legacy? -> :dev1
      label == :unknown and not legacy? -> :dev2
      true -> false
    end
  end
end
