require './lib/twentyeyes'
class UpdatePost
  def insert_posts
    @post = Post.create(
      :title      => "Site Creation",
      :body       => "Now creating all pages and setting up working links. By the end of tonight (January 24th) I would like to have a bare bones site to accomodate forthcoming content that will document my contiuous deployment project. Very Excited!")

    @post = Post.create(
      :title      => "Back end work",
      :body       => "Now working on a feature for the site that will allow the user to create an account, upload an image, and submit a comment with the image. All managed by mongodb, scripted with php. It will be a new git branch to be merged after testing.")

    @post = Post.create(
      :title      => "MongoDB + PHP",
      :body       => "After looking over several different login scripts for MongoDB in PHP I finally started developing one of my own to be custom fit to 20eyes.org unique infrastructure. After watching some of the logs while sending some DB traffic to the server I'm VERY excited about what I saw. Will have this problem fixed in the next day or so. Update: Just got a script working that allows user to enter username and pw on main page and script enters that info in to mongodb collection. Next step is write script to authenticate user after information entry",
      :image_ref => "images/mongophp.png")

    @post = Post.create(
      :title      => "Good signs from Jenkins:",
      :body       => "While monitoring all the logs, everything is working except the actual transfer of the files which is probably the most important step in the build process BUT at least all other processes are going off without a hitch. SSH connection is smooth, Jenkins is connecting to GitHub and getting polling accurately. I'm stillnot sure if the scheduler is working as it should but I can sort that detail out after I start getting consistant successful builds.")

    @post = Post.create(
      :title      => "Jenkins-CI Installation and configuration",
      :body       => "Put the MongoDB work off for another week (it's actually not supposed to be started until later in the schedule but I was getting antsy to try figuring out the PHP funtions for it). This week I installed <a href='http://jenkins-ci.org/', 'target'='_blank'>Jenkins Continuous Integration</a> and have been working on a Build that will poll my <a href='http://www.github.com/Whitepatrick', 'target'='_blank'>GitHub</a> every 10 minutes and if any changes are made the build is supposed to be published to my production server. However in my experience nothing ever works the first time so I will keep plugging away.",
      :image_ref => "images/jenkins.png")

    @post = Post.create(
      :title      => "Hitting some road blocks!",
      :body       => "I've been ending up stumped on getting Jenkins to actually transfer the files that have been changed after polling GitHub. I am getting everything else right; Build is successfull, SSH connection made, but then 0 files transfer. Output is in the image near this post. I'm considering a different method of deploying as well as wrapping my brain around the transfer set issue in Jenkins. After MUCH googling I see that others have the same issue as me and it could be a configuration issue with the way my project is set up. This isn't a huge problem since there are other tools that can fill its place. Currently looking in to <a href='https://travis-ci.org/', 'target'='_blank'>Travis-CI</a> which seems to be tailor made for GitHub deployment and operates off git hooks. Another issue raised here is that I'm about a week behind schedule. I can try making up the time but next week I need to attempt to stand up <a href='http://puppetlabs.com/', 'target'='_blank'>Puppet</a>.",
      :image_ref => "images/jenkins-error.jpg")

    @post = Post.create(
      :title      => "SSH False Positives w/ Jenkins",
      :body       => "After beating my head against the wall trying to get the SSH transfer job to work in Jenkins for a few weeks, the job is finally completing all steps and builds are stable! The journey from the previous errors I was getting and the first stable job was a long and winding one. The job is using the publish over SSH plugin. The build actively polls my GitHub repository frequently throughout the day. Whenever Jenkins notices a new push that has been made to the repository it triggers the build. Jenkins gathers all files from the repo and builds them in the workspace. After the build the SSH plugin sends all files on the workspace to my production server and then the files are live.",
      :image_ref => "images/console_success.jpg")

    @post = Post.create(
      :title      => "PHP + GridFS = The most fun I've had with MongoDB!",
      :body       => "Started a new branch on my <a href='https://github.com/Whitepatrick/20eyes-web/tree/gridfs-upload', 'target'='_blank'>GitHub</a> repo for this project that will be a photo upload to MongoDB's GridFS using PHP. Had tried this previously but screwed up the branching on my Git repo, so this is the real deal! I won't make this feature live until I link the authentication section I made previously in PHP and MongoDB. Very excited about PHP and MongoDB! Great Success!",
      :image_ref => "images/gridfs.png")

    @post = Post.create(
      :title      => "5/29/2014: It's Log!",
      :body       => "In an effort to better understand the types of traffic I'm getting I have implemented an 'ELK' stack between my two rackspace servers. ELK stands for <a href='http://www.elasticsearch.org', 'target'='_blank'>Elasticsearch</a> <a href='http://logstash.net', 'target'='_blank'>Logstash</a> <a href='http://rashidkpc.github.io/Kibana/', 'target'='_blank'>Kibana</a>. In other news: I graduated from VCU this month. What an amazing experience! I'm very excited to see where the rest of this new chapter in my life takes me. Since graduating I have been exploring a few projects I wasn't able to previously due to time consumption of school projects. Two new things I'm working on (and very excited about) are: <a href='https://github.com/Whitepatrick/freshzings.git', 'target'='_blank'>A Twitter bot written in python</a>. Currently the function is to search for the latest tweet with the hashtag '#zing' and retweet it. Using the Tweepy library, the Python-Twitter library doesn't appeal to me. A session handler writtin in PHP with MongoDB. During the last semester I wrote a session handler in PHP with MySQL and kind of regretted it. I now get the chance to write it using MongoDB which, in my opnion, should be faster and more felxible. <a href='https://github.com/Whitepatrick/session_handler.git', 'target'='_blank'>GitHub repo</a>. Stay tuned for future updates and new projects!",
      :image_ref => "images/elk.png")

    @post = Post.create(
      :title      => "10/24/2014: QA, Ruby, and Linux: A nerds tale",
      :body       => "Wow! A lot has happened since the last time I updated this. I moved to DC a few months ago after taking a QA job with an aggregation email company. I initially applied for their sys admin job but ended up being talked in to QA. So far it''s been great! I''ve been writing some selenium tests in Java which is ..ok, but I still have some room to write command line tools in Ruby to make some routine tasks a little easier. The highlight so far is getting <a href='http://rundeck.org/', 'target'='_blank'> Rundeck</a> up and running to assist in building and rebuilding the various QA environments. Trying to tackle this one in my down time at work, but I''ve made a fair amount of progress. The only thing I have left to do is assign access policies.",
      :image_ref => "images/rundeck.png")

    @post = Post.create(
      :title      => "11/1/2014: Editor Quest",
      :body       => "Recently in an effort to get a deeper understanding of Linux I have been teaching myself C. It's been going pretty well so far, a little less difficult than I originally thought it would be. I've been using <a href='http://en.wikipedia.org/wiki/The_C_Programming_Language', 'target'= '_blank'> The C Programming Language 2nd Edition(K&R)</a> as a guide with some googling as well to fill in some questions about modern uses. A side project that has sprung up from this has been looking for a new editor to use. For quick edits, or a deeper view of a file than <a href='http://unixhelp.ed.ac.uk/CGI/man-cgi?less', 'target'='_blank'> less</a> would typically give me, I use vim, but I have also been using <a href='https://wiki.gnome.org/Apps/Gedit', 'target'='_blank'> gedit</a>.")

    @post = Post.create(
      :title      => "12/27/2014: 20eyes upgrade!",
      :body       => "After reading a ton about <a href='https://www.docker.com/', 'target'='_blank'>Docker</a> <a href='https://www.youtube.com/watch?v=AxcM3nCsglA', 'target'='_blank'>late one night</a> before an early work day so obviously I didn't finish restoring the previous workflow I had using Jenkins to deploy this stuff to a production server.Lessons learned: Have a plan! I really should have known this wasn't as simple as backing up my old config and system files. If I had taken the time to write down what I wanted, and the absolute minimum things required to get it running, things would have run a whole lot smoother. Don't be scared! I avoided this upgrade for a while because I was making too big of a deal about going dark for a little. The upgrade process is a process I've done several times on local machines, doing it on a remote server was no different at all. Jenkins rule! I'm fortunate enough at work to be able to use Atlassian tools, but I think considering my past experiences with Jenkins, I've grown to be somewhat partial to it. Bamboo is a phenomenal tool, but I will always pick Jenkins given the choice between the two. Whoa, Docker.. My original plan was to drop a few containers on here to see exactly how portable thye are. It definitely isn't as easy as I assumed it would be, but actually gets more and more interesting the more I learn about it. More to come from this for sure.In other news! Etsy engineers Daniel Schauenberg and Ryan Frantz are coming to DC next month to speak about their engineering practices at <a href='https://codeascraft.com/', 'target'='_blank'>Etsy</a> and I am beyond stoked!! Also, I got a new <a href='images/bike.jpg', 'target'='_blank'>bike!</a>")

    @post = Post.create(
      :title      => "2/6/2015: Hound Search 2: Son of hound search, and other updates!",
      :body       => "What a week. First off, I added a very adorable little script to my post Jenkins web build that initiates a git pull for all of the repos that are searchable within hound. I tried to change the css but that turned out horribly so original css remains! Eventually I'm going to create a separate jenkins job for this and trigger a pull when any repo gets a commit to master. If you'd like to take a look at the script you can <a href='https://github.com/Whitepatrick/utility_scripts/blob/master/pull.sh', 'target'='_blank'>here</a> Work related I finally found a really good, very concise ruby gem to write our QA chat bot called <a href='http://github.com/godfat/xmpp4r-robot', 'target'='_blank'>xmpp4r-robot</a> <a href='http://www.godfat.org/', 'target'='_blank'>owner</a> about it and he mentioned he may not have the time to work on it personally, but will definitely accept pull requests. I think I'm going to do it, the MUC library for XMPP4R doesn't seem THAT bad. Only a few very minor tweaks to Rundeck and I think I can shift in to only supporting the system and no longer actively adding or testing jobs. I'm sure that sooner or later there will be more tasks to add.")

    @post = Post.create(
      :title      => "3/29/2015: Jenkins & I.. RUNITED!",
      :body       => "One of my favorite developers left the company I work to persue a new job, good for him! He was one of the few people left who were passionate about changing the course of our tech team from relying on manual testing, and was supporting almost all of the test infrastructure on his own. I won't go in to great deal of said 'test infrastructure' since it's not that much to speak of, but the most glaring issue was that no one would be supporting <a href='https://www.atlassian.com/software/bamboo', 'target'='_blank'>Bamboo</a> with him leaving. I have worked with Bamboo a little bit before but I was always turned off by their shifty community of plugins (don't get me started), plus the license was about to expire for our Bamboo install. How fortuitous! I have been using
      <a href='https://jenkins-ci.org/', 'target'='_blank'>Jenkins</a> for a while now so I saw this as my chance to get us to ditch Bamboo and start fresh with Jenkins. I was like a kid in a candy store after setting up the fresh install, grabbing every plugin I could imagine being remotely useful for us, or even if it wasn't that useful it would be interesting to look at. This Bamboo > Jenkins switch started about a month ago, and as of last week it looks like we're fully migrated over to Jenkins and even have the test pipeline looking better than it did before! Great success! Besides all the fun of playing with shiny new toys, work has been getting somewhat trying. The senior QA engineer quit to persue a different job (good for him as well!) which left quality assurance in a very dubious state. This was basically a breaking point for me, I hadn't been incredibly satisfied with my job in the past few months due to an huge spike in manual testing and time for creating very basic pieces of an automated testing framework was thrown out the window. A pile of meetings and conversations later we've finally convinced management that the value of manual testing may seem better from a very narrow view, in the long run it will cost us in technical debt, and possibly more employee exits. So for now we've been aforded a little bit of extra time to work on it. It's a small victory in my opinion, allowing me time to work on getting our tech team some better tools to work with is a step in the right direction but, the entire tech team needs to commit to this not as a pet project but as a project vital to our company staying in the modern era of software development.SOON: I don't want to overload this post, will continue it in a few days!",
      :image_ref  => "images/jenkins_patrick.png")

    @post = Post.create(
      :title      => "I'm moving EVERYTHING!",
      :body       => "Well Looks like I'll be moving to NYC on July 31st, very excited for that! I'm also ditching rackspace to go with <a href='https://digitalocean.com/', 'target'='_blank'>Digital Ocean</a> I'm ditching rackspace because Digital Ocean is way cheaper I get double the RAM rackspace was giving me. <a href='https://www.youtube.com/watch?v=G05u7ihoYQA', 'target'='_blank'>BYE FELICIARACKSPACE</a>. I've been experiencing crazy amounts of burnout at work and it's beggining to really effect my free time. Typically on the weekend I usually try checking out new tools I've read about during the week or continue work on ongoing projects, but lately I just haven't felt like doing it. I've decided to put the breaks on doing work stuff during non work hours for the time being. I've been slowly getting back in to ruby and working a lot on TDD using <a href='https://github.com/test-unit/test-unit', 'target'='_blank'>test-unit</a>.",
      :image_ref  => "images/ruby_slippers.png")

    @post = Post.create(
      :title      => "twenty eyes dot org: son of 20eyes!",
      :body       => "Hello there! Since moving over to digital ocean for my web/utility VMs I've had a few upgrades. I'm currently collecting and indexing all my system logs and apache logs on cthulhu (VM1). Hastur is the second VM which does most of the behind the scenes work and is also running my jenkins instance. Eventually I'll add in a section to query live site metrics from elasticsearch. In bigger news, I've got a working alpha version of my new and improved version of this page using <a href='http://http://www.sinatrarb.com/', 'target'='_blank'>Sinatra</a> and <a href='http://getbootstrap.com/', 'target'='_blank'>Bootstrap</a>. I've still got some tweaking to do but it's a first step towards making this page a little more mobile friendly and visually appealing. I don't have to stomach to go full geocities so I'll just move up to the late 2000's B-)",
      :image_ref  => "images/frank.png")

    @post = Post.create(
      :title      => "  July 19th: navbar.. more like navBORING amirite?!",
      :body       => "So my update to this website is essentially done except the dang hamburger button won't open when the browser drops to mobile size. Needless to say I've been smashing my head against my keyboard for a little while now and the fix still escapes me. I'm almost certain the issue is a js file not being read properly,
      but I'll have to investigate more another time, since I don't want to take up my whole Sunday fiddling with a hamburger button! In other news, I made an about me page, check it out in my links!")

    @post = Post.create(
      :title      => "July 28th: NEW SITE IS GO!",
      :body       => "Finally, the navigation bar is working as it should on the sinatra / ruby / haml version of this site and I'm ready to retire the old one. I'm moving to NYC at the end of this week and welcome this fix amid being SO stressed out. But the end is approaching and I can't wait to be settled in and start my new adventure in New York.",
      :image_ref  => "images/congrat.gif")

    @post = Post.create(
      :title      => "Sept. 29th: Taking it to the max, pushing the envelope, and other extreme catch phrases!",
      :body       => "It's been quite a long time since I've been able to update this page and a lot has happened since! Lianna and I are all moved in and have settled our aparment nicely. Finally getting into the swing of a significantly different commute. I don't miss the 16th bus in DC, but comparitively the commute in DC was far more chill than NYC as NYC has no chill. I've been coding a lot lately and have got a few little pet projects going.First up is <a href='https://github.com/Whitepatrick/20eyesbot', 'target'='_blank'>a twitter bot</a> designed to basically follow anyone who matches a very low set of criteria. This was mostly an excercise to checkout the twitter API and occupy a weekend or two. It has a few unit tests and a functional test as well. I'm still toying with the idea of completely redoing it. Next is *another* bot meant to idle in a channel I sometimes idle in on irc.freenode.net called #gnudism. <a href='https://github.com/Whitepatrick/gnudism_bot', 'target'='_blank'>This bot</a> also doesn't do an incredible lot. It's got an autovoice feature that I'm trying to work into an auto-op feature, but setting up proper authorization is tricky since I want to get auto op'ed no matter where I'm signed in from. One of the bigger undertakings is revamping this site *again* to include <a href='https://github.com/Whitepatrick/twentyeyes_api', 'target'='_blank'>an API with a PostgreSQL backend</a>. Nothing crazy at all, session handling and simple CRUD operations. I've got a few unit tests in there as well.",
      :image_ref  => "images/new-york-city.jpg")

    @post = Post.create(
      :title      => "Oct 5th: Getting ready to re-re-release this site",
      :body       => "I've got the sintra pages pulling from a PostgreSQL db using datamapper. I liked the way it creates tables over activerecord, but I miss the db migrations that activerecord came with. Datamapper has a migrations library I think I'll eventually try adding in. I'm pretty happy the way this project is heading and I'm a little proud of myself I've been able to redo this site exactly how I wanted it. I've made a wrong turn here and there but oh well, those wrong turns were fun too! Upcoming work on here will include controlling how posts are displayed and in what frequency. I'm thinking just showing the latest 3 and having the user perform some action to reveal the rest. Also adding back in the search field to the navbar might be nice, but I'm not rushing to fiddle around with that navbar anytime soon.",
      :image_ref  => "images/reopening.png")
  end
end
=begin
td = UpdatePost.new
td.insert_posts

@post = Post.create(
  :title      => "",
  :body       => "",
  :image_ref  => "")
=end
