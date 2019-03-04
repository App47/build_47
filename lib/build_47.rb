require 'rest_client'

#
# Do the work of uploading to to the App47 server using API V1
#
class Build47

  #
  # Perform the upload to the server
  #
  def self.api_v1_upload(options)
    app_id = options.delete(:app_id)
    token = options.delete(:token)
    load_file(options)

    RestClient::Request.execute(method: :post,
                                url: "https://cirrus.app47.com/api/apps/#{app_id}/builds",
                                payload: {
                                  multipart: true,
                                  build: options
                                },
                                headers: { accept: 'application/json', 'X-Token': token },
                                raw_response: true) do |response|
      puts "response code: #{response.code}"
    end
  end

  #
  # Load file for processing, making sure it exists
  #
  def self.load_file(options)
    file_path = options.delete(:path)
    raise "File not found: #{file_path}" unless File.exist?(file_path)

    options[:build_upload] = File.new(file_path, 'rb')
    extension = file_path.split('.').last
    options[:platform] = case extension
                         when 'ipa'
                           'iOS'
                         when 'apk'
                           'Android'
                         else
                           'Windows'
                         end
    options
  end
end
