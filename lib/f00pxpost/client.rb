module F00pxpost
  class Client
    
    attr_accessor :token, :secret

    def initialize(token, secret)
      @token = token
      @secret = secret
      @client = OAuth::AccessToken.new(oauth_consumer, token,secret)               
    end

    def post_photo(file, title, description, category)
      response = JSON.parse @client.post("/v1/photos", 
                                         {name: title, 
                                          description: description, 
                                          category: category}).body
      
      upload_key = response["upload_key"]
      photo_id = response["photo"]["id"]
    
      response = RestClient.post 'https://api.500px.com/v1/upload', 
                                  file: file.rewind, 
                                  photo_id: photo_id,
                                  upload_key: upload_key,
                                  consumer_key: F00pxpost.consumer_key,
                                  access_key: @token

      puts response.body
                    
      {key: upload_key, id: photo_id}
    end
        
    def oauth_consumer
      @oauth_consumer ||= begin 
        key = F00pxpost.consumer_key
        secret = F00pxpost.consumer_secret
        opts = {:site => "https://api.500px.com"}
        OAuth::Consumer.new(key, secret, opts)
      end
       
    end
  end
end
