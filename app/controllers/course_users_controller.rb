class CourseUsersController < ApplicationController
  before_action :set_course_user, only: [:show, :edit, :update, :destroy]

  # GET /course_users
  # GET /course_users.json
  def index
    @course_users = CourseUser.all
  end

  # GET /course_users/1
  # GET /course_users/1.json
  def show
  end

  # GET /course_users/new
  def new
    @course_user = CourseUser.new
  end

  # GET /course_users/1/edit
  def edit
  end

  # POST /course_users
  # POST /course_users.json
  def create
    @course_user = CourseUser.new(course_user_params)

    respond_to do |format|
      if @course_user.save
        format.html { redirect_to @course_user, notice: 'Course user was successfully created.' }
        format.json { render :show, status: :created, location: @course_user }
      else
        format.html { render :new }
        format.json { render json: @course_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_users/1
  # PATCH/PUT /course_users/1.json
  def update
    respond_to do |format|
      if @course_user.update(course_user_params)
        format.html { redirect_to @course_user, notice: 'Course user was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_user }
      else
        format.html { render :edit }
        format.json { render json: @course_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_users/1
  # DELETE /course_users/1.json
  def destroy
    @course_user.destroy
    respond_to do |format|
      format.html { redirect_to course_users_url, notice: 'Course user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_user
      @course_user = CourseUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_user_params
      params.require(:course_user).permit(:course_id, :user_id, :role)
    end
end
