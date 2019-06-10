const animateChallengeButton = () => {
  const challengeButton = document.querySelector(".navlink.new")
  if (challengeButton) {
    challengeButton.addEventListener('submit', event => {
      event.preventDefault()
      challengeButton.classList.add("animated", "jello")
      setTimeout(() => window.location = challengeButton.getAttribute("href"), 500)
    })
  }
}

export { animateChallengeButton }
