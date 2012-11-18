class CreaturesController < ApplicationController
	
	before_filter :signed_in_user, only: [:update, :edit, :create, :destroy]

  def index

		 @creatures = Creature.search(params)

		 @display_tag_cloud = true
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @creatures }
    end
  end

  def show
    @creature = Creature.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @creature }
    end
  end

  def new
	@fishtank = Fishtank.find(params[:fishtank_id])
    @creature = Creature.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @creature }
    end
  end

  def edit
			unless logged_in?
					redirect_to @creature
			end
    @creature = Creature.find(params[:id])
  end

  def create
    @creature = Creature.new(params[:creature])

	if @creature.save
		flash[:success] = 'Creature was successfully created.' 
		redirect_to @creature  
	else
		flash[:error] = "Error"
		redirect_to @creature
	end

  end

  def update
    @creature = Creature.find(params[:id])

    respond_to do |format|
      if @creature.update_attributes(params[:creature])
        format.html { redirect_to @creature, notice: 'Creature was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @creature.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @creature = Creature.find(params[:id])
    @creature.destroy

    respond_to do |format|
      format.html { redirect_to creatures_url }
      format.json { head :no_content }
    end
  end
end
