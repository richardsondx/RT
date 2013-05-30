class ApplicationController < ActionController::Base
  protect_from_forgery

#   before_filter :track_requests

#   def track_requests
#   	client_request = [
# 				remote_addr: 	response.request.env["REMOTE_ADDR"],
# 				remote_host: 	response.request.env["REMOTE_HOST"],
# 				request_method: response.request.request_method,
# 				request_uri: 	response.request.env["REQUEST_URI"],
# 				user_agent: 	response.request.env["HTTP_USER_AGENT"],
# 				params: 		response.request.filtered_parameters,
# 				full_path:  	response.request.fullpath,
# 				status: 		response.status
# 			]
# 	puts client_request
#   	@req = client_request
#   end
# end

# REMOTE_ADDR    	= request.env["REMOTE_ADDR"]
# REMOTE_HOST    	= request.env["REMOTE_HOST"]
# REQUEST_METHOD 	= request.env["REQUEST_METHOD"]
# REQUEST_URI    	= request.env["REQUEST_URI"]
# SERVER_NAME    	= request.env["SERVER_NAME"]
# SERVER_PORT	   	= request.env["SERVER_PORT"]

# HTTP_HOST	   	= request.env["HTTP_HOST"]
# HTTP_USER_AGENT	= request.env["HTTP_USER_AGENT"]
# HTTP_COOKIE 	= request.env["HTTP_COOKIE"]

# controller =  request.env["action_dispatch.request.path_parameters"][:controller]
# action     =  request.env["action_dispatch.request.path_parameters"][:action]

# "action_dispatch.request.path_parameters"=>
#     {:controller=>"pages", :action=>"index"}

# @_response_body=nil,
# @_status=200>



# "action_dispatch.request.path_parameters"

#  "action_controller.instance"
end