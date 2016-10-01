class CokeZeroController < ApplicationController

  def index
  end

  def show
  end

  def create


    @address = params["q"]

    if !@address.empty?
      params = {
        term: 'Coke Zero',
        limit: 5,
      }
      @coke_dealers = Yelp.client.search(@address, params)
    else
      @address = @noaddress
    end

    render :index
  end

end
