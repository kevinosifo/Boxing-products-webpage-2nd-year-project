// simple variable for input search bar
// find the xml tag which need to be searched
// create a logic or function
// iterate over all the xml products tag
// xml http request w3schools.
//reference for the search bar - https://www.youtube.com/watch?v=zvLFXtiGHqM&t=364s
const search = document.querySelector("#search");
const itemsWrap = document.querySelector(".wrapper");
const boxingitems = itemsWrap.querySelectorAll(".product");

// search input event
search.addEventListener("input", searchInput);

//filter items
function searchInput(a){
    //console.log(a.target.value)

   const prodCode = a.target.value.toLowerCase();


   Array.from(boxingitems).forEach(function(boxingitem){
        const codeForProduct = boxingitem.children[5].textContent;
        console.log(boxingitem)

        if(codeForProduct.indexOf(prodCode) != -1){
            boxingitem.style.display = "block";
        }
        else {
            boxingitem.style.display = "none";
            
        }
       
   })
}
//https://stackoverflow.com/questions/66782301/how-we-can-check-if-all-the-div-are-displayed-none

const areAllDivsDisplayNone = (divs) => {
    let allDisplayNone = true;
    for (let i in divs) {
      if (divs[i].style.display !== 'none') {
        allDisplayNone = false;
        break;
      }
    }
    return allDisplayNone;
  };
  
  const els = Array.from(document.querySelectorAll('.a'));
  const results = areAllDivsDisplayNone(els);
  
  if (results) {
    error.style.display = "block";
  } 
 
