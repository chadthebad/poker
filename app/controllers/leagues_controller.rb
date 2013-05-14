class LeaguesController < ApplicationController
  def index
    @leagues = League.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leagues }
    end
  end

  def show
    @league = League.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @league }
    end
  end

  def new
    @league = League.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @league }
    end
  end

  def edit
    @league = League.find(params[:id])
  end

  def create
    @league = League.new(league_params)

    respond_to do |format|
      if @league.save
        format.html { redirect_to @league, notice: 'League was successfully created.' }
        format.json { render json: @league, status: :created, location: @league }
      else
        format.html { render action: "new" }
        format.json { render json: @league.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @league = League.find(params[:id])

    respond_to do |format|
      if @league.update_attributes(league_params)
        format.html { redirect_to @league, notice: 'League was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @league.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @league = League.find(params[:id])
    @league.destroy

    respond_to do |format|
      format.html { redirect_to leagues_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def league_params
      params.require(:league).permit(:name)
    end
end
