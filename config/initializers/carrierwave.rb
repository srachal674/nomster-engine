# config/initializers/carrierwave.rb

#CarrierWave.configure do |config|
 # if Rails.env.development?
 #   config.cache_dir = '/home/vagrant/uploads_tmp/tmp/uploads'
  #  config.root = '/home/vagrant/uploads_tmp/tmp'
  #end

  #config.storage    = :aws
  #config.aws_bucket = ENV["AWS_BUCKET"]
  #config.aws_acl    = "public-read"

  #config.aws_credentials = {
   #   access_key_id:     ENV["AWS_ACCESS_KEY"],
    # region:            ENV["AWS_REGION"]
  #}
#end
CarrierWave.configure do |config|
  config.root = Rails.root.join('temp')
  configure.cache_dir ='carrierwave'

  configure.fog_credentials ={
    :provider                   =>'AWS'             #requried
    :aws_access_key    => ENV['AWS_ACCESS_KEY'],       #required
    :aws_secret_key    => ENV['AWS_SECRET_KEY'],       #required
  }
  config.fog_directory => ENV['AWS_BUCKET']
  config.fog_public    = false
end