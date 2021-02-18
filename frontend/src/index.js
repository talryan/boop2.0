document.addEventListener('DOMContentLoaded', () => {
   fetchUsers()
})
   
// read - fetch users index



//  create- new user
const baseUrl = "http://localhost:3000"
function fetchUsers (){
    fetch(`${baseUrl}/users`)
    .then(response => response.json())
    .then(users => console.log(users) )
}

function fetchDoggos (){
    fetch(`${baseUrl}/doggos`)
    .then(response => response.json())
    .then(doggos=> for(const doggo of doggos) )
}
//create - new game 