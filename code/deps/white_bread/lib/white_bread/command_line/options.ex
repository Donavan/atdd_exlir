defmodule WhiteBread.CommandLine.Options do

  def parse(raw_options) do
    raw_options
      |> Keyword.update(:tags, nil, &breakup_tag_string/1)
  end

  defp breakup_tag_string(tag_string) do
    tag_string
      |> String.split(",", trim: true)
      |> Enum.map(&String.strip/1)
  end

end
