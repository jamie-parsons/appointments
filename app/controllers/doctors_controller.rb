class DoctorsController < ApplicationController
  before_action :set_doctor, only [:show, :edit, :update, :destroy]

  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def edit
  end

  def create
    @doctor = Doctor.new(recipe_params)

    if @doctor.save
      redirect_to @doctor, notice: 'Doctor successfully added!'
    else
      render :new
    end
  end

  def update
    if @doctor.update(doctor_params)
      redirecto_to @doctor, notice: 'Doctor successfully updated!'
    else render :edit
    end
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_url, notice: 'Doctor successfully destroyed!'
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name)
  end
end
