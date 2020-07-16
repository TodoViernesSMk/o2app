
// window.addEventListener('DOMContentLoaded', function() {
//   console.log('window - DOMContentLoaded - capture');

//   document.querySelectorAll("a.redeem-code").forEach(ele => {
//     ele.addEventListener('click', function(e){
//       var request = new XMLHttpRequest();
//       request.responseType = 'json';
//       request.open( 'POST', '/redeem', true );
//       // set headers
//       request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
//       request.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'));
      
//       request.onreadystatechange = function() { // Call a function when the state changes.
//         if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
//           // debugger;
//           // do some stuff here like update the redemption button visibility
//         }
//       }

//       request.onload = function(){
//         // finished request, change the redeem link to disabled and to say redeemed
//         debugger;
//       };
//       // debugger;
//       request.send( 'code_id=' + this.dataset.codeId );
//     })
//   });
// }, true);