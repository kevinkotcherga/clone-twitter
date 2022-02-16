import { useSelector } from 'react-redux';
import TweetForm from './components/TweetForm';
import Tweet from './components/Tweet';
import { isEmpty } from './components/Utils';

function App() {
	const tweets = useSelector(state => state.tweetReducer);

	return (
		<div className="container">
			<div className="container-navbar">
				<nav>
					<ul>
						<li>Accueil</li>
						<li>Profil</li>
					</ul>
				</nav>
			</div>

			<div className="container-home">
				<TweetForm />
				<div className="content">
					<div className="post-container">
						{!isEmpty(tweets) &&
							tweets.map((tweet, index) => <Tweet tweet={tweet} key={index} />)}
					</div>
				</div>
			</div>

			<div className="container-search">
				<div>
					<h2>Recherche</h2>
				</div>
			</div>
		</div>
	);
}

export default App;
