class VaultController < ActionController::Base
  layout "application"

  def all
    @type = "all"
    @pageTitle = "All"
  end

  def raw
    @type = "raw"
    @patternName = params[:pattern].split('/').last.titleize

    # abort @patternName.inspect
    @pageTitle = @patternName

    @patternType = params[:type]
    @param = params[:pattern]
  end

  def show
    @type = "individual"
    @patternName = params[:pattern].split('/').last.titleize
    @pageTitle = @patternName

    @patternType = params[:type]
    @param = params[:pattern]
  end
end
