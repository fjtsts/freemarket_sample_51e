require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

if Rails.env.production?
  CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      access_key_id: Rails.application.credentials.aws[:access_key_id],
      secret_access_key: Rails.application.credentials.aws[:secret_access_key],
      region: 'ap-northeast-1'
    }
  
    config.fog_directory  = 'freemarket-sample-51e'
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/freemarket-sample-51e'
  end
end
