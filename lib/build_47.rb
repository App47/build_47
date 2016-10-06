require 'rest_client'

class Build47
  
  def initialize(account_token)
    @token = account_token
  end
  
  def push(app_id, platform, env, file_path, release_notes)
    build_doc = { 
     :build => { 
       :platform => platform, 
       :environment => env, 
       :upload => File.new(file_path), 
       :build_file => file_path.split('/')[-1], 
       :release_notes => release_notes,
       :active => true
       }
    }
    # response = RestClient.post  "https://cirrus.app47.com/api/apps/#{app_id}/builds", build_doc, {"X-Token"=> @token, :accept => :json}
    response = RestClient.post  "http://0.0.0.0:3000/api/apps/#{app_id}/builds", build_doc, {"X-Token"=> @token, :accept => :json}
    puts "response code: #{response.code}"
  end
  
end


