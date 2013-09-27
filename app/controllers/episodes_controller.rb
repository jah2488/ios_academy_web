class EpisodesController < InheritedResources::Base
  before_filter :authenticate_user!, except: :index

  private
  def permitted_params
    params.permit(:episode => %i[title description video_id, image])
  end

end

