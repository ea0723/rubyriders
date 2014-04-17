CarrierWave.configure do |config|

  if Rails.env.staging? || Rails.env.production? || Rails.env.demo?

    config.storage = :fog

    config.fog_credentials = {
        :provider               => 'AWS',
        :aws_access_key_id      => ENV['AKIAIC6AIDUVISFC6K5Q'],
        :aws_secret_access_key  => ENV['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']
    }

    config.fog_directory  = ENV['rubyangel']
    config.fog_public     = true
    config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}

  else
    config.storage = :file
  end

end

# TODO set up on heroku AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, S3_BUCKET_NAME