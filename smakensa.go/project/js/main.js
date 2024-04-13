// Toggle class active
const navbarnav = document.querySelector(".navbar-menu");
// ketika hamburger menu diklik
document.querySelector("#menu-outline").onclik = () => {
  navbarnav.classList.toggle("active");
};
