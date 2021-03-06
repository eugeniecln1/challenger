const animateChallengeButton = () => {
  const challengeButton = document.getElementById("newchallenge")
  if (challengeButton) {
    challengeButton.addEventListener('click', event => {
      event.preventDefault()
      challengeButton.classList.add("animated", "jello")
      setTimeout(() => window.location = challengeButton.getAttribute("href"), 500)
    })
  }
}

export { animateChallengeButton }
