class WebgetController < ApplicationController
  
  def pokerstars
    
    require 'net/http'
    require 'xmlsimple'
    
    @url = 'http://www.pokerstars.com/datafeed_global/tournaments/all.xml'
    @xml_data = Net::HTTP.get_response(URI.parse(@url)).body
    @ref  = XmlSimple.xml_in(@xml_data)
    
    @ref['tournament'].each do |torneio| 
      save = Torneio.new
      save.nome = torneio['name']
      save.save()
    end

    respond_to do |format|
      format.xml { render :xml => @ref }
      format.json { render :json => @ref }
    end
    
  end
  
end
