munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

men = munsters.select { |_, details| details["gender"] == 'male' }
total_age = men.values.map { |male_dets| male_dets['age'] }.reduce(:+)
p total_age