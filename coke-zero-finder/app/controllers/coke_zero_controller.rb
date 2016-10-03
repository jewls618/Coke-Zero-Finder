class CokeZeroController < ApplicationController

  def index
  end

  def show
  end

  def create
    @street = params[:a]
    @city = params[:c]
    @state = params[:s]
    @zip = params[:z]
    @output = "#{@street.strip}, #{@city.strip}, #{@state.strip}, #{@zip.strip}"

    if !@output.empty?
      params = {
        term: 'Coke Zero',
        limit: 5,
      }
      @coke_dealers = Yelp.client.search(@output, params)
    end

    render :index
  end

end
