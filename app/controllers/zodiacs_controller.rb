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

  def idnum

    @idnum = params[:idnum]
    @creature = Zodiac.find_by({:id => @idnum}).fortune.capitalize
    @fortune = Zodiac.find_by({:id => @idnum}).fortune.capitalize
    @sign = Zodiac.find_by({:id => @idnum}).sign.capitalize

  end

  def new_form

  end

  def create_row

    z= Zodiac.new
  # params  = {"symbol" => "crab", "animal" => "cancer", "horoscope" => "whatever"}
  z.sign = params["symbol"]
  z.creature = params["animals"]
  z.fortune = params["horoscope"]
  z.save


  end

end
