import { ADD_TWEET, DELETE_TWEET, GET_TWEETS } from "../actions/tweet.action";

const initialState = {};

export default function tweetReducer(state = initialState, action) {
  switch (action.type) {
    case GET_TWEETS:
      return action.payload;
    case ADD_TWEET:
      return [action.payload, ...state];
    case DELETE_TWEET:
      return state.filter((tweet) => tweet.id !== action.payload.tweetId);
    default:
      return state;
  }
}
