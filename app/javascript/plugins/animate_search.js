
const animateSearch = () => {
  const searchBar = document.querySelector('.search-icon')
  searchBar.addEventListener("click", (event) => {
    console.log("clicked search bar");
    document.querySelector(".search-bar").style.display = "block";
  })
}



export { animateSearch };
