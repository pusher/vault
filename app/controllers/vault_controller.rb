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
    @pageTitle = params[:patternname]
  end




  def show
    @pageTitle = 'test'
    @type = "individual"

    @param = params[:path].first

    abort @param.inspect
  end
end
