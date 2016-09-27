class EncodingsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index

  end

  def new

  end

  def show
    filtered = params.permit(:offset, :message)
    @converted_message = Caesar.encode(filtered[:offset].upcase,filtered[:message].upcase)
  end
end
