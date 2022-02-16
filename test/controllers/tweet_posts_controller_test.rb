require "test_helper"

class TweetPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweet_post = tweet_posts(:one)
  end

  test "should get index" do
    get tweet_posts_url, as: :json
    assert_response :success
  end

  test "should create tweet_post" do
    assert_difference("TweetPost.count") do
      post tweet_posts_url, params: { tweet_post: { body: @tweet_post.body } }, as: :json
    end

    assert_response :created
  end

  test "should show tweet_post" do
    get tweet_post_url(@tweet_post), as: :json
    assert_response :success
  end

  test "should update tweet_post" do
    patch tweet_post_url(@tweet_post), params: { tweet_post: { body: @tweet_post.body } }, as: :json
    assert_response :success
  end

  test "should destroy tweet_post" do
    assert_difference("TweetPost.count", -1) do
      delete tweet_post_url(@tweet_post), as: :json
    end

    assert_response :no_content
  end
end
