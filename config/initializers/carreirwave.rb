CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider                         => 'Google',
    :google_storage_access_key_id     => 'GOOGUVC3NCH4JWUSKLEB',
    :google_storage_secret_access_key => 'iJRhmWQx6wTfj+iaC4CwQgdZ4gnDFoeyghQ3KJnK'
  }
  config.fog_directory = 'prototype_app2'
end
