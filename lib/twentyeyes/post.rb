require './lib/twentyeyes'

class Post
  DataMapper::Logger.new($stdout, :debug)
  DataMapper.setup(:default, 'postgres://zaphod:albatross@localhost/twentyeyesdb')

  include DataMapper::Resource

  property :post_id,         Serial,    :key    => true
  property :title,           String,    :required => true, :length => 1..255
  property :body,            Text,      :required => true
  property :created_at,      DateTime
  property :updated_at,      DateTime
end

DataMapper.finalize
#Post.auto_upgrade!
Post.auto_migrate!
