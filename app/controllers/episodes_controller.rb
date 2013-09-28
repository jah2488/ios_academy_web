class EpisodesController < InheritedResources::Base
  before_filter :authenticate_all!,  except: %i(index show)

  def show
    authenticate_user! if Episode.find(params[:id]).paid && !current_admin
    show!
  end

  private
  def permitted_params
    params.permit!
  end

end

