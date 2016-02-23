CarrierWave.configure do |config|
   config.fog_credentials = {
    :provider => 'AWS',
    :aws_access_key_id  => ENV['AWS_ACCESS_KEY'],
    :aws_secret_access_key => ENV['AWS_SECRET'],
    :region                => "eu-central-1"
  }

  config.cache_dir = "#{Rails.root}/tmp/uploads"
  config.fog_directory = 'helgamessages'
end


