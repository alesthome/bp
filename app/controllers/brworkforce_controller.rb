class BrworkforceController < ApplicationController
  def index
	
	@areacodes = AreaCode.all  		

  	@json = @areacodes.to_gmaps4rails do |areacode, marker|
      marker.infowindow render_to_string(:partial => "/infowindows/areacode", :locals => { :areacode => areacode})
      marker.title areacode.city
    end

  end
end
