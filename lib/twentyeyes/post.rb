require './lib/twentyeyes'

class Post
  DataMapper::Logger.new('api.log', :debug)
  DataMapper.setup(:default, 'postgres://zaphod:albatross@localhost/twentyeyesdb')

  include DataMapper::Resource

  property :post_id,         Serial,    :required => true, :key    => true
  property :title,           String,    :required => true, :length => 1..255
  property :body,            Text,      :required => true
  property :created_at,      DateTime,  :required => true
  property :updated_at,      DateTime,  :required => true
  property :current_or_nah,  Boolean,   :required => true, :default => 'false'
end

DataMapper.finalize
Post.auto_upgrade!
