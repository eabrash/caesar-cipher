class DecodingsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def new

  end

  def show
    filtered = params.permit(:offset, :message)
    @converted_message = Caesar.decode(filtered[:offset].upcase,filtered[:message].upcase)
  end
end
