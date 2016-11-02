## 0.9.0

### Breaking changes

  * `find_element` now returns a `Hound.Element` instead of a string
  * Driver capabilities cannot longer be passed directly to `Hound.start_session` and need to be passed in the `:driver` key: `Hound.start_session(driver: %{my: "capability"})`
  
### New features

  * Support changing user agent: `Hound.start_session(user_agent: :iphone)`
  * Support metadata: `Hound.start_session(metadata: %{my: :metadata})`
  * Add `search_element/2` and `search_element_within/3`, which are non raising version of `find_element/2` and `find_element_within/2`
  * Add `fetch_log/0` and `fetch_errors/0` to get JS console output.
  * Add Firefox profile

### Improvements

  * Timeouts now return a normal error instead of failing with a `MatchError`
