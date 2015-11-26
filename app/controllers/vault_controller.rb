class VaultController < ActionController::Base
  layout "application"

  def all
    @type = "all"
    @pageTitle = "All"
  end

  def category
    if params[:type] == 'elements' || params[:type] == 'components'
      @type = params[:type]
    end
  end

  def individual
    @patternname = params[:patternname]
    @type = "individual"
    @pageTitle = params[:pattername]
  end

  def raw
    @patternname = params[:patternname]
    @type = "raw"
    @pagetitle = params[:patternname]
  end
end
