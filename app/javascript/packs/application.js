import "bootstrap";

// extrenal search for searchbar

AlgoliaSearch.configuration = {
  application_id: 'Y6BJDF6ZNO',
  api_key: '79f7cf05865c8da9a5bc525f18c227bd',
  index_name: 'fantasy_politics'
}

// alert timeOut function
  document.addEventListener("DOMContentLoaded", () => {
    const alert = document.querySelector(".alert")
    window.setTimeout(() => {
      if (alert) {
        alert.style.display = 'none';
      }

    }, 4000);
  })


  // scrit for sweet Alert bos ( add class.swal_test if you want it to be in use)
let toDestroy;
let arrayDestroy = Array.from(document.querySelectorAll('.swal-test'))
if (arrayDestroy.length > 0) {
  arrayDestroy.forEach( element  => {
    element.addEventListener("click", (e) => {
      // toDestroy = arrayDestroy.indexOf(element)
    e.preventDefault();
    e.stopPropagation();
    testAlert()
    let old_element = element;
    let new_element = old_element.cloneNode(true);
    console.log(new_element)
    old_element.parentNode.replaceChild(new_element, old_element);
    toDestroy = new_element
   });
  })
}
function testAlert() {
  swal({
    title: 'Are you sure?',
    text: "You won't be able to revert this!",
    type: 'warning',
    imageUrl: '././images/logo.png',
    imageWidth: 200,
    imageHeight: 200,
    showCancelButton: true,
    showCloseButton: true,
    confirmButtonColor: '#67E191',
    cancelButtonColor: '#55DDE0',
    confirmButtonText: 'Yes, do it!'
  }).then((result) => {
    if (result.value) {

      swal(
        'Deleted!',
        'Ok hall done for you.',
        'success'
      )
      toDestroy.click()
    }
  })
}


// search.addWidget(
//   instantsearch.widgets.searchBox({
//     container: '#search-input'
//   })
// );

// search.addWidget(
//   instantsearch.widgets.hits({
//     container: '#hits',
//     templates: {
//       item: document.getElementById('hit-template').innerHTML,
//       empty: "We didn't find any results for the search <em>\"{{query}}\"</em>"
//     }
//   })
// );
// search.addWidget(
//   instantsearch.widgets.pagination({
//     container: '#pagination'
//   })
// );
// search.start();

//Override the default confirm dialog by rails
// $.rails.allowAction = function(link){
//   if (link.data("confirm") == undefined){
//     return true;
//   }
//   $.rails.showConfirmationDialog(link);
//   return false;
// }

// //User click confirm button
// $.rails.confirmed = function(link){
//   link.data("confirm", null);
//   link.trigger("click.rails");
// }

// //Display the confirmation dialog
// $.rails.showConfirmationDialog = function(link){
//   var message = link.data("confirm");
//   swal({
//     title: message,
//     type: 'warning',
//     confirmButtonText: 'Sure',
//     confirmButtonColor: '#2acbb3',
//     showCancelButton: true
//   }).then(function(e){
//     $.rails.confirmed(link);
//   });
// };
