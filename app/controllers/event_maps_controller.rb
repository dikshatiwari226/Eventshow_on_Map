class EventMapsController < ApplicationController
  before_action :set_event_map, only: [:show, :edit, :update, :destroy]

  # GET /event_maps
  # GET /event_maps.json
  def index
    @event_maps = EventMap.all
  end

  # GET /event_maps/1
  # GET /event_maps/1.json
  def show
  end

  # GET /event_maps/new
  def new
    @event_map = EventMap.new
  end

  # GET /event_maps/1/edit
  def edit
  end

  # POST /event_maps
  # POST /event_maps.json
  def create
    @event_map = EventMap.new(event_map_params)

    respond_to do |format|
      if @event_map.save
        format.html { redirect_to @event_map, notice: 'Event map was successfully created.' }
        format.json { render :show, status: :created, location: @event_map }
      else
        format.html { render :new }
        format.json { render json: @event_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_maps/1
  # PATCH/PUT /event_maps/1.json
  def update
    respond_to do |format|
      if @event_map.update(event_map_params)
        format.html { redirect_to @event_map, notice: 'Event map was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_map }
      else
        format.html { render :edit }
        format.json { render json: @event_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_maps/1
  # DELETE /event_maps/1.json
  def destroy
    @event_map.destroy
    respond_to do |format|
      format.html { redirect_to event_maps_url, notice: 'Event map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_map
      @event_map = EventMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_map_params
      params.require(:event_map).permit(:title, :address,:street, :street_number, :postal_code, :city, :state, :country, :start_date, :end_date, :lat, :lng)
    end
end
