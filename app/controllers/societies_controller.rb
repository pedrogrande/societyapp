class SocietiesController < ApplicationController
  before_filter :authenticate_user!

  def members
    @society = Society.find(params[:id])
  end

  def join
    @society = Society.find(params[:id])
    @user = User.find(params[:user])

    if not @user.is_member?(@society)
      @society.users << @user
      flash[:notice] = 'You have been added to the society'
    else
      flash[:error] = 'You are already in this society'
    end
    redirect_to @society
  end

  # POST /users/1/leave_society?society_id=2
  def leave
    @user = User.find(params[:user])
    society_id = params[:id]

    society = Society.find(society_id)
    if @user.is_member?(society)
      logger.info "Removing user from society #{society.id}"
      @user.societys.delete(society)
      flash[:notice] = 'You have left the society'
    end
    redirect_to society_path
  end

  def tagged
    if params[:tag].present?
      @societys = Society.tagged_with(params[:tag])
    else
      @societys = Society.postall
    end
  end
  # GET /societies
  # GET /societies.json
  def index
    @societies = Society.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @societies }
    end
  end

  # GET /societies/1
  # GET /societies/1.json
  def show
    @society = Society.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @society }
    end
  end

  # GET /societies/new
  # GET /societies/new.json
  def new
    @society = Society.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @society }
    end
  end

  # GET /societies/1/edit
  def edit
    @society = Society.find(params[:id])
  end

  # POST /societies
  # POST /societies.json
  def create
    @society = Society.new(params[:society])
    @society.users << current_user

    respond_to do |format|
      if @society.save
        format.html { redirect_to @society, notice: 'Society was successfully created.' }
        format.json { render json: @society, status: :created, location: @society }
      else
        format.html { render action: "new" }
        format.json { render json: @society.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /societies/1
  # PUT /societies/1.json
  def update
    @society = Society.find(params[:id])

    respond_to do |format|
      if @society.update_attributes(params[:society])
        format.html { redirect_to @society, notice: 'Society was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @society.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /societies/1
  # DELETE /societies/1.json
  def destroy
    @society = Society.find(params[:id])
    @society.destroy

    respond_to do |format|
      format.html { redirect_to societies_url }
      format.json { head :no_content }
    end
  end
end
