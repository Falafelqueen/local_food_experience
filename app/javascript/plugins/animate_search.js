
const animateSearch = () => {
  const searchBar = document.querySelector('.search-icon')
  searchBar.addEventListener("click", (event) => {
    console.log("clicked search bar");

    // if (document.querySelector(".search-bar").classList.contains("inactive")) {
      document.querySelector(".search-bar").classList.add("active");
      document.querySelector(".search-bar").classList.remove("inactive");

    // } else {
    //   document.querySelector(".search-bar").classList.remove("active");
    //   document.querySelector(".search-bar").classList.add("inactive");

    // }
  })
}



export { animateSearch };
