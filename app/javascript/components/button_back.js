import $ from "jquery";

const buttonBack = () => {
  const buttonBack = document.querySelector(".btn-3d")
  if (buttonBack) {
    $(".btn-3d").click(function(event){
      event.preventDefault();
      window.location = buttonBack.getAttribute("href")
    });
  }
}

export { buttonBack }
