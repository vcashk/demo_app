class MicropstsController < ApplicationController
  # GET /micropsts
  # GET /micropsts.xml
  def index
    @micropsts = Micropst.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @micropsts }
    end
  end

  # GET /micropsts/1
  # GET /micropsts/1.xml
  def show
    @micropst = Micropst.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @micropst }
    end
  end

  # GET /micropsts/new
  # GET /micropsts/new.xml
  def new
    @micropst = Micropst.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @micropst }
    end
  end

  # GET /micropsts/1/edit
  def edit
    @micropst = Micropst.find(params[:id])
  end

  # POST /micropsts
  # POST /micropsts.xml
  def create
    @micropst = Micropst.new(params[:micropst])

    respond_to do |format|
      if @micropst.save
        format.html { redirect_to(@micropst, :notice => 'Micropst was successfully created.') }
        format.xml  { render :xml => @micropst, :status => :created, :location => @micropst }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @micropst.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /micropsts/1
  # PUT /micropsts/1.xml
  def update
    @micropst = Micropst.find(params[:id])

    respond_to do |format|
      if @micropst.update_attributes(params[:micropst])
        format.html { redirect_to(@micropst, :notice => 'Micropst was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @micropst.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /micropsts/1
  # DELETE /micropsts/1.xml
  def destroy
    @micropst = Micropst.find(params[:id])
    @micropst.destroy

    respond_to do |format|
      format.html { redirect_to(micropsts_url) }
      format.xml  { head :ok }
    end
  end
end
