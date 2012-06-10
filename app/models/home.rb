require 'rubygems'
require 'sys/uname'
include Sys
class Home < ActiveRecord::Base

  class << self

    def agent
    	p Uname.machine
    	p Uname.version
    	p Uname.uname
  	
  end
end

end
