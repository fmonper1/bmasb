class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all.page(params[:page]).per(5)
    @nuevos = Event.where(state_id: 1).page(params[:page]).per(5)
    @pendientePresupuesto = Event.where(state_id: 2).page(params[:page]).per(5)
    @presupuestoAceptado   = Event.where(state_id: 3).page(params[:page]).per(5)
    @pendienteMaterial = Event.where(state_id: 4).page(params[:page]).per(5)
    @pendienteFechaInstalacion = Event.where(state_id: 5).page(params[:page]).per(5)
    @pendienteSAT = Event.where(state_id: 6).page(params[:page]).per(5)
    @facturados = Event.where(state_id: 7).page(params[:page]).per(5)


    @render = @events

    @newCount = @nuevos.total_count
    @e2Count = @pendientePresupuesto.total_count
    @e3Count = @presupuestoAceptado.total_count
    @e4Count = @pendienteMaterial.total_count
    @e5Count = @pendienteFechaInstalacion.total_count
    @e6Count = @pendienteSAT.total_count
    @e7Count = @facturados.total_count


    # SET activeLink to set active links in the view
    @activeLink = 'todos'


    if params[:status] == "nuevos"
      @render = @nuevos
      @activeLink = 'nuevos'
    end

    if params[:status] == "penPres"
      @render = @pendientePresupuesto
      @activeLink = 'penPres'
    end

    if params[:status] == "presAcpt"
      @render = @presupuestoAceptado
      @activeLink = 'presAcpt'
    end

    if params[:status] == "penMat"
      @render = @pendienteMaterial
      @activeLink = 'penMat'
    end

    if params[:status] == "penFecha"
      @render = @pendienteFechaInstalacion
      @activeLink = 'penFecha'
    end

    if params[:status] == "penSAT"
      @render = @pendienteSAT
      @activeLink = 'penSAT'
    end


    if params[:status] == "completados"
      @render = @facturados
      @activeLink = 'completados'
    end


  end

  def completados


    @render = @completados
    @activeLink = 'completados'

    render "index"
  end


  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  def updateStatus
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated madafacka.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:titulo, :descripcion, :fecha_contacto, :nombre_contacto, :numero_contacto, :shop_id, :type_id , :state_id, :user_id)
    end
end
