class LandingController < ApplicationController
  
  def show
  end

  def testing
  end

  def dashboard
  	if session[:user_id]
  		auth = ENV['GOTRACKING_AUTH_KEY']
  	  	params = {'authentication' => auth, 'personId' => '64a9c407-2a4d-403f-909b-72e9d26c87f7', 'fromDttm' => 1430914721000, 'toDttm' => 1455256549000}
        json_headers = {"Content-Type" => "application/json",
                        "Accept" => "application/json"}
 
        r = Net::HTTP.get_response(URI.parse("http://watergowebservices.com:8181/wm-service-test-1.1.0/wm/driverlocation/all/#{auth}/93bbd5ae-fa53-487b-b6c9-cacfb1dc3d37")) 
        @zzz = ActiveSupport::JSON.decode(r.body)

        uri = URI.parse("http://watergowebservices.com:8181/wm-service-test-1.1.0/wm/shift/searchcriteria/")
        http = Net::HTTP.new(uri.host, uri.port)
        response = http.post(uri.path, params.to_json, json_headers)
        @pp = ActiveSupport::JSON.decode(response.body)

        @coordArray = []
        for i in 0..@zzz.length-1 do
        	thisObj = {
        		lat:@zzz[i]["latCoord"],
        		lng:@zzz[i]["longCoord"]
        	}

        	if @zzz.length > 100 
        		if i==0 || i%10 == 0
        			@coordArray.push(thisObj)
        		end
        	end
        end

        # binding.pry
    else
    	flash[:alert] = "Please Login To Continue"
    	redirect_to login_path
    end
  end

  def map
  		auth = ENV['GOTRACKING_AUTH_KEY']
  	  	params = {'authentication' => auth, 'personId' => '64a9c407-2a4d-403f-909b-72e9d26c87f7', 'fromDttm' => 1430914721000, 'toDttm' => 1455256549000}
        json_headers = {"Content-Type" => "application/json",
                        "Accept" => "application/json"}
 
        r = Net::HTTP.get_response(URI.parse("http://watergowebservices.com:8181/wm-service-test-1.1.0/wm/driverlocation/all/#{auth}/93bbd5ae-fa53-487b-b6c9-cacfb1dc3d37")) 
        @zzz = ActiveSupport::JSON.decode(r.body)

        uri = URI.parse("http://watergowebservices.com:8181/wm-service-test-1.1.0/wm/shift/searchcriteria/")
        http = Net::HTTP.new(uri.host, uri.port)
        response = http.post(uri.path, params.to_json, json_headers)
        @pp = ActiveSupport::JSON.decode(response.body)

        @coordArray = []
        
        for i in 0..@zzz.length-1 do
        	thisObj = {
        		lat:@zzz[i]["latCoord"],
        		lng:@zzz[i]["longCoord"]
        	}

        	if @zzz.length > 100 
        		if i==0 || i%10 == 0
        			@coordArray.push(thisObj)
        		end
        	end
        end

        # startLat = @zzz[0]["latCoord"].to_s
        # startLong = @zzz[0]["longCoord"].to_s
        # @startLatLng = startLat << ',' << startLong
        # endLat = @zzz[@zzz.length/2]["latCoord"].to_s
        # endLong = @zzz[@zzz.length/2]["longCoord"].to_s
        # @endLatLng = endLat << ',' << endLong
        # binding.pry
  end

end

