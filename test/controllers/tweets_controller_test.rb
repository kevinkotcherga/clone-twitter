require "test_helper"

class TweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweet = tweets(:one)
  end

  test "should get index" do
    get tweets_url, as: :json
    assert_response :success
  end

  test "should create tweet" do
    assert_difference("Tweet.count") do
      post tweets_url, params: { tweet: { body: @tweet.body } }, as: :json
    end

    assert_response :created
  end

  test "should show tweet" do
    get tweet_url(@tweet), as: :json
    assert_response :success
  end

  test "should update tweet" do
    patch tweet_url(@tweet), params: { tweet: { body: @tweet.body } }, as: :json
    assert_response :success
  end

  test "should destroy tweet" do
    assert_difference("Tweet.count", -1) do
      delete tweet_url(@tweet), as: :json
    end

    assert_response :no_content
  end
end
