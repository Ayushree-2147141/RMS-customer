App = {
    getmenu : function() {
        var b="";
         const api_url ="http://localhost:3000/menu";
         // console.log(api_url);
         Menu.innerHTML = b;
         data =this.getapi(api_url).then(data=>{
             // console.log("y");
             //console.log(data.length);
             for(var i = 0; i <= data.length; i++) {
                  //var a ="<tr ><td>"+data[i].menu_id+"</td><td><img src='assets/"+data[i].image+".png'/></td><td>"+data[i].price+"</td></tr>";
                  var a ="<tr><td><img class='foodimg' src='assets/"+data[i].image+".png'/></td><td id='foodcol'><p id='foodname'>"+data[i].name+"</p><p id='fooddesc'>"+data[i].food_des+"</p></td><td class='price-button'><p class='price'>"+data[i].price+"<p><p><button type='button' class='btn btn-warning add-button' onclick='addToCart();'>Add</button></p></td></tr>";
                 // console.log(data[i]);
                 Menu.innerHTML += a;
             }
             // console.log("a")    
         });
     },
 
    
    getapi:async function(url) {
 
        // Storing response
        const response = await fetch(url);
        // Storing data in form of JSON
        var data = await response.json();
        // console.log(data);
        return data;
    }


   

}

// var addItemId = 0;
// function addToCart(item)
// {
//     addItemId++;
//     var selectedItem = document.createElement('div');
//     selectedItem.classList.add('cartImg');
//     selectedItem.setAttribute('id',addItemId);
//     var img = document.createElement('img');
//     img.setAttribute('src',item.children[0].currentSrc);
//     var cartItems = document.getElementById('title');
//     cartItems.append(selectedItem);
//     selectedItem.append(img);
// }