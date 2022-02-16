import React from "react";
import { useDispatch } from "react-redux";
import { deleteTweet } from "../actions/tweet.action";

const Like = ({ tweet }) => {
  const dispatch = useDispatch();

  return (
		<>
			<div className="icon">
				<img src="./icons/like.svg" alt="like" />
				<span>{tweet.like}</span>
			</div>

			<div className="icon">
				<img src="./icons/retweet.svg" alt="retweet" />
				<span>{tweet.retweet}</span>
			</div>

			<div className="icon">
				<img src="./icons/delete.svg" alt="delete" onClick={() => dispatch(deleteTweet(tweet.id))} />
				<span>{tweet.retweet}</span>
			</div>
		</>
	);
};

export default Like;
