class BarsController < ApplicationController
  def index
    @bars = Bar.all
    respond_to do |format|
      format.html
      format.json
    end
  end
end
