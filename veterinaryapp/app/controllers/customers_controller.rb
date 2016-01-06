class CustomersController < ApplicationController

  def index
    @appointments = Appointment.all
  end

end
