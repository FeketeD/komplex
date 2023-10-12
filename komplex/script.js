/*
document.getElementById("userIcon").onmouseover = function(){
    document.getElementById("userIcon").classList.add("fa-shake")
}
document.getElementById("userIcon").onmouseleave = function(){
    document.getElementById("userIcon").classList.remove("fa-shake")
}
*/

document.getElementById("signup").onsubmit = function(event){
    
    let name = document.getElementById("name")
    let email = document.getElementById("email")
    let password = document.getElementById("password")
    let age = document.getElementById("age")
    let gender = document.getElementById("gender")
    let profession = document.getElementById("profession")
    //let sector = document.getElementById("sector")
    let sector = document.getElementsByName('sector')
    let selectedSectors = []

    for(var i=0; i<sector.length; i++)       
    {
        if(sector[i].type=='checkbox' && sector[i].checked==true)                 
        selectedSectors.push(sector[i].value)
    }


    let letters = (/^[A-Za-z]+$/)
    const emailValidation = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$/i

    //Name validation
    if (name.value != "" && name.value.match(letters) && name.value[0] === name.value[0].toUpperCase()) {
        name.classList.remove('is-invalid')
        name.classList.add('is-valid')
        
    }
    else{
        event.preventDefault()
        name.classList.remove('is-valid')
        name.classList.add('is-invalid')
        document.getElementById("userIcon").classList.add("fa-shake")
        setTimeout(function(){
            document.getElementById("userIcon").classList.remove("fa-shake")
        }, 900)
    }

    //Email validation
    if (emailValidation.test(email.value)) {
        email.classList.remove('is-invalid')
        email.classList.add('is-valid')
    }
    else{
        event.preventDefault()
        email.classList.remove('is-valid')
        email.classList.add('is-invalid')
        document.getElementById("emailIcon").classList.add("fa-shake")
        setTimeout(function(){
            document.getElementById("emailIcon").classList.remove("fa-shake")
        }, 900)
    }

    var body = JSON.stringify({
        name: name.value,
        email: email.value,
        password: password.value,
        age: age.value,
        gender : gender.value,
        profession: profession.value,
        sector: selectedSectors
    }, null, 2)
    console.log(body)
}

document.getElementById("passwordIcon").onclick = function(){
    let lock = document.getElementById("passwordIcon")
    //Password generation
    let passwordLength = 16;
    let chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789---";
    let pass = "";
    for (x = 0; x < passwordLength ; x++){
        pass += chars.charAt(Math.floor(Math.random() * chars.length));
    }
    if (lock.classList.contains("fa-lock")) {
        lock.classList.replace("fa-lock", "fa-lock-open")
        password.disabled = false
        password.value = ""
    }
    else {
        lock.classList.replace("fa-lock-open", "fa-lock")
        password.disabled = true
        password.value = pass
    }
    
}