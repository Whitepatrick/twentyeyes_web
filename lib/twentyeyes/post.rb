require './lib/globals'
class Post
  DataMapper::Logger.new($stdout, :debug)
  DataMapper.setup(:default, "postgres://patrick@twentyeyes_pg/twentyeyesdb")

  include DataMapper::Resource

  property :post_id,         Serial,    :key    => true
  property :title,           String,    :required => true, :length => 1..255
  property :body,            Text,      :required => true
  property :created_at,      DateTime
  property :updated_at,      DateTime
  property :image_ref,       String,    :length => 1..255
end
DataMapper.finalize
#Post.auto_migrate!
#Post.auto_update!
