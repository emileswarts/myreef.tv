class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all

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
    @creature = Creature.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @creature }
    end
  end

  def edit
    @creature = Creature.find(params[:id])
  end

  def create
    @creature = Creature.new(params[:creature])

    respond_to do |format|
      if @creature.save
        format.html { redirect_to @creature, notice: 'Creature was successfully created.' }
        format.json { render json: @creature, status: :created, location: @creature }
      else
        format.html { render action: "new" }
        format.json { render json: @creature.errors, status: :unprocessable_entity }
      end
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
