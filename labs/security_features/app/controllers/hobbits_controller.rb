class HobbitsController < ApplicationController
  # GET /hobbits
  # GET /hobbits.json
  def index
    @hobbits = Hobbit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hobbits }
    end
  end

  # GET /hobbits/1
  # GET /hobbits/1.json
  def show
    @hobbit = Hobbit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hobbit }
    end
  end

  # GET /hobbits/new
  # GET /hobbits/new.json
  def new
    @hobbit = Hobbit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hobbit }
    end
  end

  # GET /hobbits/1/edit
  def edit
    @hobbit = Hobbit.find(params[:id])
  end

  # POST /hobbits
  # POST /hobbits.json
  def create
    @hobbit = Hobbit.new(params.require(:hobbit).permit(:name))

    respond_to do |format|
      if @hobbit.save
        format.html { redirect_to @hobbit, notice: 'Hobbit was successfully created.' }
        format.json { render json: @hobbit, status: :created, location: @hobbit }
      else
        format.html { render action: "new" }
        format.json { render json: @hobbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hobbits/1
  # PUT /hobbits/1.json
  def update
    @hobbit = Hobbit.find(params[:id])

    respond_to do |format|
      if @hobbit.update_attributes(params[:hobbit])
        format.html { redirect_to @hobbit, notice: 'Hobbit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hobbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hobbits/1
  # DELETE /hobbits/1.json
  def destroy
    @hobbit = Hobbit.find(params[:id])
    @hobbit.destroy

    respond_to do |format|
      format.html { redirect_to hobbits_url }
      format.json { head :no_content }
    end
  end
end
