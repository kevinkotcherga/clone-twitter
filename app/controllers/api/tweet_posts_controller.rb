class Api::TweetPostsController < ApplicationController
  before_action :set_tweet_post, only: %i[ show update destroy ]

  # GET /tweet_posts
  def index
    @tweet_posts = TweetPost.all

    render json: @tweet_posts
  end

  # GET /tweet_posts/1
  def show
    render json: @tweet_post
  end

  # POST /tweet_posts
  def create
    @tweet_post = TweetPost.new(tweet_post_params)

    if @tweet_post.save
      render json: @tweet_post, status: :created, location: @tweet_post
    else
      render json: @tweet_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tweet_posts/1
  def update
    if @tweet_post.update(tweet_post_params)
      render json: @tweet_post
    else
      render json: @tweet_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tweet_posts/1
  def destroy
    @tweet_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet_post
      @tweet_post = TweetPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tweet_post_params
      params.require(:tweet_post).permit(:body)
    end
end
