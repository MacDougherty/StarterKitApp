module StarterKit
  class StarterKitsController < ApplicationController
    before_action :set_starter_kit, only: [:show, :edit, :update, :destroy]

    # GET /alert/leds
    def index
      @starter_kits = ::StarterKit::StarterKit.all
    end

    # GET /alert/leds/1
    def show
    end

    # GET /alert/leds/new
    def new
      redirect_to starter_kits_url, notice: 'You are not authorized to do that.'
    end

    # GET /alert/leds/1/edit
    def edit
    end

    # POST /alert/leds
    def create
      @starter_kit = ::StarterKit::StarterKit.new(starter_kit_params)

      if @starter_kit.save
        redirect_to starter_kit_path(@starter_kit), notice: 'StarterKit was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /alert/leds/1
    def update
      if @starter_kit.update(starter_kit_params)
        redirect_to starter_kit_path(@starter_kit), notice: 'StarterKit was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /alert/leds/1
    def destroy
      @starter_kit.destroy
      redirect_to starter_kits_url, notice: 'starter_kit was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_starter_kit
        @starter_kit = ::StarterKit::StarterKit.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def starter_kit_params
        params.fetch(:starter_kit_starter_kit, {}).permit(:id, :apiotics_instance, :buzzer_attributes => ["buzzer", "port_number", "id"], :four_digit_display_attributes => ["clock", "display", "port_number", "id"], :potentiometer_attributes => ["position", "port_number", "id"], :ultrasonic_range_sensor_attributes => ["range", "port_number", "id"], :light_sensor_attributes => ["intensity", "port_number", "id"])
      end
  end
end