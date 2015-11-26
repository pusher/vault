class VaultController < ActionController::Base
  layout "application"

  def all
    @type = "all"
  end

  def category
    if params[:type] == 'elements' || params[:type] == 'components'
      @type = params[:type]
    end
  end

  def individual
    @patternname = params[:patternname]
    @type = "individual"
  end

  def raw
    @patternname = params[:patternname]
    @type = "raw"
  end
end
