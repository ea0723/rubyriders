CarrierWave.configure do |config|

  if Rails.env.staging? || Rails.env.production? || Rails.env.demo?

    config.storage = :fog

    config.fog_credentials = {
        :provider               => 'AWS',
        :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
        :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY']
    }

    config.fog_directory  = ENV['S3_BUCKET_NAME']
    config.fog_public     = true
    config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}

  else
    config.storage = :file
  end

end

# set up on heroku AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, S3_BUCKET_NAME