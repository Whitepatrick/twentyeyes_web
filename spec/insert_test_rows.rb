require './lib/twentyeyes'
class TestData
  attr_reader :nth_post
  def initialize
    @nth_post = ['First', 'Second', 'Third', 'Fourth', 'Fifth']
  end
  def create_test_data
    nth_post.each do |n|
      @test_post = Post.create(
        :title      => "#{n} fake post!",
        :body       => "Bacon ipsum dolor amet officia mollit culpa duis, kevin chuck jowl in excepteur id tri-tip kielbasa irure. Aliqua do sunt brisket, cillum beef ribs consectetur proident elit exercitation sausage in short loin. Short loin corned beef jerky ground round salami fugiat. Eiusmod excepteur aute esse porchetta. Chuck eiusmod shoulder, dolore lorem fugiat excepteur commodo pork belly officia mollit.",
        :image_ref => "images/frank.png")
    end
  end
end
td = TestData.new
td.create_test_data
