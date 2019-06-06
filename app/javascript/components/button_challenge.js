const animateChallengeButton = () => {
  const challengeButton = document.querySelector(".navlink.new")
  if (challengeButton) {
    challengeButton.addEventListener('click', event => {
      event.preventDefault()
      challengeButton.classList.add("animated", "jello")
      setTimeout(() => window.location = challengeButton.getAttribute("href"), 500)
    })
  }
}

export { animateChallengeButton }
