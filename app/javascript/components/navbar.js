// Navbar become white when scolling
const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-challenger');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 86) {
        navbar.classList.add('navbar-challenger-white');
      } else {
        navbar.classList.remove('navbar-challenger-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
