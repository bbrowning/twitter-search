# coding: utf-8
# Dan Croak, July 2008

<<<<<<< HEAD:rakefile.rb
require File.expand_path('lib/summize', File.dirname(__FILE__))
=======
require File.expand_path('lib/twitter_search', File.dirname(__FILE__))
>>>>>>> ef8ef7aaafceb04d69cdfb3963f229ec1ab666db:rakefile.rb
require 'rubygems'
require 'yaml'

namespace :yaml do
<<<<<<< HEAD:rakefile.rb
  desc "Write Summize results to yaml file so API is not hit every test."
=======
  desc "Write Twitter Search results to yaml file so API is not hit every test."
>>>>>>> ef8ef7aaafceb04d69cdfb3963f229ec1ab666db:rakefile.rb
  task :write do    
    write_yaml :tweets => 'Obama',                                     :file => 'obama'
    write_yaml :tweets => 'twitter search',                            :file => 'twitter_search'
    write_yaml :tweets => {:q => 'twitter search'},                    :file => 'twitter_search_and'
    write_yaml :tweets => {:q => '"happy hour"'},                      :file => 'happy_hour_exact'  
    write_yaml :tweets => {:q => 'obama OR hillary'},                  :file => 'obama_or_hillary'
    write_yaml :tweets => {:q => 'beer -root'},                        :file => 'beer_minus_root'
    write_yaml :tweets => {:q => '#haiku'},                            :file => 'hashtag_haiku'
    write_yaml :tweets => {:q => 'from:alexiskold'},                   :file => 'from_alexiskold'
    write_yaml :tweets => {:q => 'to:techcrunch'},                     :file => 'to_techcrunch'
    write_yaml :tweets => {:q => '@mashable'},                         :file => 'reference_mashable'
    write_yaml :tweets => {:q => '"happy hour" near:"san francisco"'}, :file => 'happy_hour_near_sf'
    write_yaml :tweets => {:q => 'near:NYC within:15mi'},              :file => 'within_15mi_nyc'
    write_yaml :tweets => {:q => 'superhero since:2008-05-01'},        :file => 'superhero_since'
    write_yaml :tweets => {:q => 'ftw until:2008-05-03'},              :file => 'ftw_until'
    write_yaml :tweets => {:q => 'movie -scary :)'},                   :file => 'movie_positive_tude'
    write_yaml :tweets => {:q => 'flight :('},                         :file => 'flight_negative_tude'
    write_yaml :tweets => {:q => 'traffic ?'},                         :file => 'traffic_question'
    write_yaml :tweets => {:q => 'hilarious filter:links'},            :file => 'hilarious_links'
    write_yaml :tweets => {:q => 'congratulations', :lang => 'en'},    :file => 'english'
    write_yaml :tweets => {:q => 'با', :lang => 'ar'},                 :file => 'arabic'
<<<<<<< HEAD:rakefile.rb
=======
    write_yaml :tweets => {:q => 'Boston Celtics', :rpp => '30'},      :file => 'results_per_page'
>>>>>>> ef8ef7aaafceb04d69cdfb3963f229ec1ab666db:rakefile.rb
  end
end

def write_yaml(opts = {})
<<<<<<< HEAD:rakefile.rb
  @client = Summize::Client.new 'ruby-summize'
=======
  @client = TwitterSearch::Client.new 'twitter-search'
>>>>>>> ef8ef7aaafceb04d69cdfb3963f229ec1ab666db:rakefile.rb
  tweets  = @client.query(opts[:tweets])
  File.open(File.join(File.dirname(__FILE__), 'test', 'yaml', "#{opts[:file]}.yaml"), 'w+') do |file| 
    file.puts tweets.to_yaml
  end
end
