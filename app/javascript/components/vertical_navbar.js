// import $ from "jquery";

// const initVerticalNavbar = () => {
//    $(document).ready(function () {

//     $('.nav-linkCollapse').on('click', function () {
//         $('.nav-link').toggleClass('active');
//     });

// });

// export { initVerticalNavbar }

const closeNav = () => {
  document.getElementById("mySidenav").style.width = "70px";
  document.getElementById("main").style.marginLeft = "0";
  document.body.style.backgroundColor = "white";
  document.querySelector(".logo").style.visibility = "hidden";
  document.querySelector("p").style.visibility = "hidden";
  document.querySelector(".element-navbar").style.visibility = "hidden";
}

const openNav = () => {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
  document.querySelector(".logo").style.visibility = "visible";
  document.querySelector("p").style.visibility = "visible";
  document.querySelector(".element-navbar").style.visibility = "visible";
}

const toggleNav = () => {
  const button = document.getElementById("myBtn");
  button.addEventListener("click", (e) => {
    if (document.getElementById("mySidenav").style.width === "250px") {
      closeNav();
    } else {
      openNav();
    }
  });

  const button2 = document.getElementById("myBtn-2");
  button2.addEventListener("click", (e) => {

  });
}

export { toggleNav };

