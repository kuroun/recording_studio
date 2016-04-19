class RecordingSessionsController < ApplicationController
  before_action :set_recording_session, only: [:show, :edit, :update, :destroy]
  # GET /recording_sessions
  # GET /recording_sessions.json
  def index
    @recording_sessions = RecordingSession.all
  end

  # GET /recording_sessions/1
  # GET /recording_sessions/1.json
  def show
  end

  # GET /recording_sessions/new
  def new
    @recording_session = RecordingSession.new
  end

  # GET /recording_sessions/1/edit
  def edit
  end

  # POST /recording_sessions
  # POST /recording_sessions.json
  def create
    @recording_session = RecordingSession.new(recording_session_params)

    respond_to do |format|
      if @recording_session.save
        format.html { redirect_to @recording_session, notice: 'Recording session was successfully created.' }
        format.json { render :show, status: :created, location: @recording_session }
      else
        format.html { render :new }
        format.json { render json: @recording_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recording_sessions/1
  # PATCH/PUT /recording_sessions/1.json
  def update
    respond_to do |format|
      if @recording_session.update(recording_session_params)
        format.html { redirect_to @recording_session, notice: 'Recording session was successfully updated.' }
        format.json { render :show, status: :ok, location: @recording_session }
      else
        format.html { render :edit }
        format.json { render json: @recording_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recording_sessions/1
  # DELETE /recording_sessions/1.json
  def destroy
    @recording_session.destroy
    respond_to do |format|
      format.html { redirect_to room_path(:id => session[:room_id]), notice: 'Recording session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recording_session
      @recording_session = RecordingSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recording_session_params
      params.require(:recording_session).permit(:room_id,:start_time, :end_time, :description)
    end
end
