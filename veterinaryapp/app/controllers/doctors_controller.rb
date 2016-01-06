class DoctorsController < ApplicationController 
	before_action :set_doctor, only: [:show, :edit, :update, :destroy]

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
      @doctor = Doctor.new(appointment_params)

      respond_to do |format|
        if @doctor.save
          format.html { redirect_to @doctor, notice: 'Doctor was successfully created.' }
          format.json { render :show, status: :created, location: @doctor }
        else
          format.html { render :new }
          format.json { render json: @doctor.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @doctor.update(appointment_params)
          format.html { redirect_to @doctor, notice: 'Doctor was successfully updated.' }
          format.json { render :show, status: :ok, location: @doctor }
        else
          format.html { render :edit }
          format.json { render json: @doctor.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @doctor.destroy
      respond_to do |format|
        format.html { redirect_to appointments_url, notice: 'Doctor was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
    
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def appointment_params
      params.require(:doctor).permit(:name, :address, :city, :state, :zip, :school, :years)
    end
end
