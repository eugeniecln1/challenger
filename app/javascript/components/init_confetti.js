import confetti from "canvas-confetti"

const initConfetti = () => {
 const modals = document.querySelectorAll(".modal")
  if (modals) {
    modals.forEach((modal) => {
    const id = modal.dataset.participation
    const confettiButton = document.getElementById(`btn-confetti${id}`)
      if (confettiButton) {
        console.log("hello");
        console.log(confettiButton);
        confettiButton.addEventListener('click', (event) => {
          event.preventDefault();
          console.log(event);
          confetti({
              particleCount: 150,
              spread: 75,
              origin: {
                  y: 0.6
              },
              zIndex: 100000000
          });
          const editParticipationForm = document.getElementById(`edit_participation_${id}`)
          setTimeout(() => {
            editParticipationForm.submit()
          }, 650)
        })
      }
    })
  }
}

export default initConfetti
