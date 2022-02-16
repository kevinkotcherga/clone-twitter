import React from "react";

const Like = ({ tweet }) => {
  return (
    <>
      <div className="icon">
        <img src="./icons/like.svg" alt="clap" />
        <span>{tweet.like}</span>
      </div>

      <div className="icon">
        <img src="./icons/retweet.svg" alt="clap" />
        <span>{tweet.retweet}</span>
      </div>
    </>
  );
};

export default Like;
