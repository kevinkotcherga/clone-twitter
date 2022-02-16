import React, { useState } from "react";
import { useDispatch } from "react-redux";
import { addTweet, getTweets } from "../actions/tweet.action";

const TweetForm = () => {
  const [content, setContent] = useState('');
  const dispatch = useDispatch();

  const handleForm = async (e) => {
  e.preventDefault();

  if (content){
    const data = {
      content,
      likes: 0,
      retweet: 0
    };

    await dispatch(addTweet(data));
    setContent('');
    dispatch(getTweets());
  }
};

  return (
    <div className="form-container">
      <form onSubmit={(e) => handleForm(e)}>
        <h1>Accueil</h1>
        <textarea placeholder="Quoi de neuf ?" value={content} onChange={(e)=> setContent(e.target.value)}></textarea>
        <input type="submit" value="Tweeter" className="submit" />
      </form>
    </div>
  );
};

export default TweetForm;
