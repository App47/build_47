require 'rest_client'

class Build47
  
  def initialize(account_token)
    @token = account_token
  end
  
  def push(app_id, platform, env, file_path, release_notes)
    
    RestClient.log = Logger.new(STDOUT)
    
    build_doc = { 
     :build => { 
       :platform => platform, 
       :environment => env, 
       :upload => File.new(file_path), 
       :build_file => file_path.split('/')[-1], 
       :release_notes => release_notes },
    }
    RestClient.post  "https://cirrus.app47.com/api/apps/#{app_id}/builds", build_doc, {"X-Token"=> @token, :accept => :json}
  end
  
end


