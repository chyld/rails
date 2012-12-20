class ComputationsController < ApplicationController
  # GET /computations
  # GET /computations.json
  def index
    @computations = Computation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @computations }
    end
  end

  # GET /computations/1
  # GET /computations/1.json
  def show
    @computation = Computation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @computation }
    end
  end

  # GET /computations/new
  # GET /computations/new.json
  def new
    @computation = Computation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @computation }
    end
  end

  # GET /computations/1/edit
  def edit
    @computation = Computation.find(params[:id])
  end

  # POST /computations
  # POST /computations.json
  def create
    calc = params[:computation][:name]
    work = Work.new
    work.delay.compute(calc)
    redirect_to '/computations'
  end

  # PUT /computations/1
  # PUT /computations/1.json
  def update
    @computation = Computation.find(params[:id])

    respond_to do |format|
      if @computation.update_attributes(params[:computation])
        format.html { redirect_to @computation, notice: 'Computation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @computation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /computations/1
  # DELETE /computations/1.json
  def destroy
    @computation = Computation.find(params[:id])
    @computation.destroy

    respond_to do |format|
      format.html { redirect_to computations_url }
      format.json { head :no_content }
    end
  end
end
