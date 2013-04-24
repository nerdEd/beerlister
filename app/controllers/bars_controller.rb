class BarsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render json: Bar.all.to_json(only: [:id, :name], 
                                                 include: [:beers]) }
    end
  end
end
