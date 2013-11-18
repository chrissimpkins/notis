require "notis/version"
require 'open3'

module Notis
    def Notis.runit(command)
	  	begin
		    stdout_str, stderr_str, status = Open3.capture3(command)
		    if status.exitstatus == 0
		    	return "#{stdout_str}"
		    else
		      	STDERR.puts stderr_str #if the primary application fails, pass the error message to the user
		      	exit 1
		    end
	  	rescue => e
		    STDERR.puts e.message
		    exit 1
		end #end begin/rescue blocks
	end #end runit
end #end Notis module
