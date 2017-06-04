class VideosController < ApplicationController
  def index
     @hwappsViews = Hwapp.order("views DESC").first(4)
     @hwappsLikes = Hwapp.order("likes DESC").first(4)


  end

  def search

    if !params[:search].blank?
      @hwapps = Hwapp.search(params[:search]).order("created_at DESC")
      respond_to do |format|
        if !@hwapps.empty?
          format.html {render action: 'index'}
          format.json { render json: @hwapps, status: :unprocessable_entity }
        else

          format.html { redirect_to root_url, notice: "Video not found" }
          format.json { render action: 'index', status: :created }
        end
      end
    else
      render html: "Result not found"
      #@hwapps = Hwapp.all.order('created_at DESC')
    end






  end






end



