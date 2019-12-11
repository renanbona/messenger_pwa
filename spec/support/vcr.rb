require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = 'spec/vcr_cassettes'
  config.hook_into :webmock
  config.default_cassette_options = { record: :new_episodes }
  config.allow_http_connections_when_no_cassette = true
  config.configure_rspec_metadata!
end
