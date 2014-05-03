class TestimonialsController < ApplicationController
  # GET /testimonials
  # GET /testimonials.json
  def index
    @testimonials = Testimonial.live.page(params[:page]).per(5)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @testimonials }
    end
  end

  # GET /testimonials/1
  # GET /testimonials/1.json
  def show
    @testimonial = Testimonial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testimonial }
    end
  end


end
