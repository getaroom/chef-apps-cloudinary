name "client"
description "Tests for Cloudinary"

run_list(
  "recipe[users::sysadmins]",
  "recipe[apps]",
  "recipe[apps-cloudinary::yaml]",
)

default_attributes({
  "minitest" => {
    "tests" => "apps-cloudinary/*_test.rb",
  },
  "cloudinary" => {
    "staging": {
      "cloud_name": "abcd1234",
      "api_key": "efgh5678",
      "api_secret": "ijkl9012",
    },
  },
})
