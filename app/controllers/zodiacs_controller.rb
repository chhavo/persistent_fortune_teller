class ZodiacsController < ApplicationController

def sign

@the_sign = params[:the_sign]
@fortune = Zodiac.find_by({:sign => @the_sign}).fortune
end

end
