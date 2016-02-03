class FacebookController < ApplicationController

graph = Koala::Facebook::API.new(oauth_access_token)

message = 'Test Message' # your message - will change later to be imput in text box field
image_path = "/path/to/test_image.png" #image path - will change later to be uploaded 

# getting groups of interest
def get_groups
  groups = graph.get_connections("me", "groups").select do |group|
  group_filtering_words.any? do |word|
  group["name"].downcase.include? word
  end

def get_group_indexes
  index = 0
  groups.each do |group|
    index += 1
    puts "[#{index}/#{groups.size}] Posting to group #{group["name"]}."
    graph.put_picture(
      image_path, 
      {:message => message}, 
      group['id']
    )
  end


end

