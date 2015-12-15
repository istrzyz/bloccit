class Api::V1::CommentssControlelr <Api::V1::BaseController
  before_filter :authenticate_user, except: [:index, :show]
  before_filter :authorize_user, except: [:index, :show]

  def index
    comments = Comment.all
    render json: posts.to_join, status: 200
  end

  def show
    comments = Comment.find(params[:id])
    render json: post.to_json(include: :comments), status: 200
  end
end
