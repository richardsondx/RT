class Retrack
	def initialize(app)
		@app = app 
	end

	def call(env)
		start = Time.now
		status, headers, response = @app.call(env)
		if headers["Content-Type"].include? "text/html"
			stop = Time.now
			client_1 = [
				remote_addr: 	response.request.env["REMOTE_ADDR"],
				remote_host: 	response.request.env["REMOTE_HOST"],
				request_method: response.request.request_method,
				request_uri: 	response.request.env["REQUEST_URI"],
				user_agent: 	response.request.env["HTTP_USER_AGENT"],
				params: 		response.request.filtered_parameters,
				full_path:  	response.request.fullpath,
				status: 		response.status
			]
			[status, headers, ["<!-- Response Time: #{stop - start} -->\n" + client_1.to_s + response.body]]
		else
			[status, headers, response]
		end
		# [200, {"Content-Type" => "text/html"}, ["Hello, World!"]]
	end
end