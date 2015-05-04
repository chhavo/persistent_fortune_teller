class ZodiacsController < ApplicationController

def sign

@the_sign = params[:the_sign]
@fortune = Zodiac.find_by({:sign => @the_sign}).fortune
end

def creature

@the_creature = params[:the_creature]
@fortune = Zodiac.find_by({:creature => @the_creature}).fortune.capitalize
@sign = Zodiac.find_by({:creature => @the_creature}).sign.capitalize

end

end
