import { backend } from 'declarations/backend';

const jokeText = document.getElementById('joke-text');
const newJokeBtn = document.getElementById('new-joke-btn');

async function getNewJoke() {
    try {
        const joke = await backend.getRandomJoke();
        jokeText.textContent = joke;
    } catch (error) {
        console.error("Error fetching joke:", error);
        jokeText.textContent = "Oops! Mr.ICP's joke machine is out of order. Try again later!";
    }
}

newJokeBtn.addEventListener('click', getNewJoke);

// Get initial joke on page load
getNewJoke();
