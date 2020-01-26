load test_helper

@test "true" {
  run true
  [ "$status" -eq 0 ]
}
