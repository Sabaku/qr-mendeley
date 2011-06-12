class PostersController < ApplicationController

  # GET /posters
  # GET /posters.xml
  def index
    @posters = Poster.all
  end

  # GET /posters/1
  # GET /posters/1.xml
  def show
    @poster = Poster.find(params[:id])
  end

  # GET /posters/new
  # GET /posters/new.xml
  def new
    @poster = Poster.new
  end

  # GET /posters/1/edit
  def edit
    @poster = Poster.find(params[:id])
  end

  # POST /posters
  # POST /posters.xml
  def create
    @poster = Poster.new(params[:poster])

    if @poster.save
      redirect_to(@poster, :notice => 'Poster was successfully registered.')
    else
      render :action => "new"
    end
  end

  # PUT /posters/1
  # PUT /posters/1.xml
  def update
    @poster = Poster.find(params[:id])

    if @poster.update_attributes(params[:poster])
      redirect_to(@poster, :notice => 'Poster was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /posters/1
  # DELETE /posters/1.xml
  def destroy
    @poster = Poster.find(params[:id])
    @poster.destroy

    redirect_to(posters_url)
  end

end
