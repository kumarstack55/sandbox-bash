load test_helper

@test "true" {
  run true
  [ "$status" -eq 0 ]
}

@test "while read lineは、while外でlineを参照できない" {
  run ./bin/while_read_line.sh
  [ "$status" -eq 0 ]
}
