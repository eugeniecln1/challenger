// import $ from "jquery";

// const initVerticalNavbar = () => {
//    $(document).ready(function () {

//     $('.nav-linkCollapse').on('click', function () {
//         $('.nav-link').toggleClass('active');
//     });

// });

// export { initVerticalNavbar }

const closeNav = () => {
  document.getElementById("navbar-all").style.visibility = "hidden";
  document.getElementById("mySidenav").style.width = "70px";
  document.getElementById("main").style.marginLeft = "0";
  document.getElementById("myBtn").style.transform = "rotate(180deg)";
}

const openNav = () => {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
  document.getElementById("navbar-all").style.visibility = "visible";
  document.getElementById("myBtn").style.transform = "rotate(360deg)";
}

const toggleNav = () => {
  const button = document.getElementById("myBtn");
  if (button) {
    button.addEventListener("click", (e) => {
      if (document.getElementById("mySidenav").style.width === "250px") {
        closeNav();
      } else {
        openNav();
      }
    });
  }
}

export { toggleNav };

