require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

if Rails.env.production?
  CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: Rails.application.storage.aws_access_key_id,
      aws_secret_access_key: Rails.application.storage.aws_secret_access_key,
      region: 'ap-northeast-1'
    }
  
    config.fog_directory  = 'freemarket-market-51e-image'
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/freemarket-market-51e-image'
  end
end
