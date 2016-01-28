class LandingController < ApplicationController
  def show
  end


  def testing

	 


		

  	# r = Net::HTTP.get_response(URI.parse("http://watergowebservices.com:8181/wm-service-test-1.1.0/wm/auth")
   #      if r.is_a? Net::HTTPSuccess
   #        r.body.force_encoding("UTF-8")
   #        jsonReturn = ActiveSupport::JSON.decode(r.body)
   #        # if jsonReturn["items"] != nil
   #          # New Google Custom Search        
   #          # thisGoogleURL = jsonReturn["items"][0]["link"]
   #          # @topTenGoogleUrl["googleUrl#{i}"] = thisGoogleURL
   #        # else
   #          # Define new spelling variable and add proper symbols for link instead of spaces then rerun search
   #          # newSpelling = jsonReturn["spelling"]["correctedQuery"]
   #          # newSearchTerm = newSpelling.gsub(' ','%20')
   #          # @topTenUrl["trend#{i}"] = "https://www.googleapis.com/customsearch/v1?key=#{api}&cx=002705105629163918517:3rklgyllvqs&q=#{newSearchTerm}"
   #          r = Net::HTTP.get_response(URI.parse())
   #          r.body.force_encoding("UTF-8")
   #          jsonReturn = ActiveSupport::JSON.decode(r.body)
            
   #          # New Google Custom Search        
   #          thisGoogleURL = jsonReturn["items"][4]["link"]
   #          @topTenGoogleUrl["googleUrl#{i}"] = thisGoogleURL
          # end









   #        	testLogin = '{"login": {"username":"rusty", "password":"rusty"}}'


   #          url = URI.parse("http://watergowebservices.com:8181/wm-service-test-1.1.0/wm/auth")
			# headers = {"host" => url }
			# req = Net::HTTP::Post.new(url.path)
			# req["Content-Type"] = "application/json"
			# req["Accept"] = "application/json"

			# # req.body = JSON.generate(testLogin)

			# req.body = testLogin

			# con = Net::HTTP.new(url.host, url.port)

			# # ssl for https
			# # if full_url.include?("https")
			# #   con.use_ssl = true
			# #   con.verify_mode = OpenSSL::SSL::VERIFY_NONE
			# # end

			# res = con.start {|http| http.request(req) }
			# res.body.force_encoding("UTF-8")
   #          @jsonReturn = ActiveSupport::JSON.decode(res.body)
   #      else
   #        nil
   #        #insert redirect instead of nil?
   #      end


   		# testLogin = '{"login": {"username":"rusty", "password":"rusty"}}'



	  	params = {'username' => 'rusty', 'password' => 'rusty'}
		json_headers = {"Content-Type" => "application/json",
		                "Accept" => "application/json"}

		uri = URI.parse('http://watergowebservices.com:8181/wm-service-test-1.1.0/wm/auth/admin')
		http = Net::HTTP.new(uri.host, uri.port)

		response = http.post(uri.path, params.to_json, json_headers)
		@jsonReturn = response.body
		binding.pry
  end
end

