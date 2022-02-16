import { combineReducers } from "redux";
import tweetReducer from "./tweet.reducer";
import userReducer from "./user.reducer";

export default combineReducers({
  tweetReducer,
  userReducer
});
