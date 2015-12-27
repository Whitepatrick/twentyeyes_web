require 'pg'

class Inserter

  def initialize
    @pg_connection = PG::Connection.new( :dbname => 'twentyeyesdb', :user => 'zaphod')
  end

  def insert_post(title_value, post_value)
    @pg_connection.prepare('statement1', 'INSERT INTO web.posts (title, post) values ($1, $2)')

    @pg_connection.exec_prepared('statement1', [title_value, post_value,])
    p "Now inserting #{title_value} #{post_value} into web.posts table"
    puts "\n"
    sleep(1.5)
  end
end
