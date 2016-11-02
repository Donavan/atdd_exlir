defmodule WhiteBread.DefaultContext do
  use WhiteBread.Context
  use Hound.Helpers

  scenario_starting_state fn state ->
      Application.ensure_all_started(:hound)
      Hound.start_session
  end

  scenario_finalize fn state ->
      Hound.end_session
  end

  given_ ~r/^I navigate to "(?<url>[^"]+)"$/, fn state, %{url: url} ->
    navigate_to(url)
    {:ok, state}
  end

  then_ ~r/^the page contains the header "(?<expected_header>[^"]+)"$/, fn state, %{expected_header: expected_header} ->
    actual_header = find_element(:tag, "h3")
    |> visible_text

    assert actual_header == expected_header
    {:ok, state}
  end
end
