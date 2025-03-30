document.addEventListener('DOMContentLoaded', function() {  
    window.addEventListener('message', function(event) {  
        if (event.data.action === 'openAdminMenu') {  
            document.getElementById('adminMenu').style.display = 'block';  
        } else if (event.data.action === 'updatePlayerList') {  
            updatePlayerList(event.data.players);  
        }  
    });  
});  

function closeMenu() {  
    fetch(`https://${GetParentResourceName()}/close`, { method: 'POST' });  
}  
