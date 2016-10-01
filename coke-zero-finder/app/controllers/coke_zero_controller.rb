class CokeZeroController < ApplicationController

  def index

  end

  def show

  end

  def create
    @address = params["q"]

    params = {
      term: 'Coke Zero',
      limit: 5,
    }
    @coke_dealers = Yelp.client.search(@address, params)

    render :index
  end

end
