let click = 0
document.getElementById('logo').onclick = function(){
    click++
    if (click == 10) {
        alert("Made by: Dániel Fekete, Máté Balázs")
        click = 0
    }
}

document.getElementById("signup").onsubmit = function(event){
    
    let name = document.getElementById("name")
    let email = document.getElementById("email")
    let password = document.getElementById("password")
    let age = document.getElementById("age")
    let gender = document.getElementById("gender")
    let profession = document.getElementById("profession")
    let sector = document.getElementsByName('sector')
    let selectedSectors = []

    for(var i=0; i<sector.length; i++)       
    {
        if(sector[i].type=='checkbox' && sector[i].checked==true)                 
        selectedSectors.push(sector[i].value)
    }


    let letters = (/^[A-Za-z]+$/)
    const emailValidation = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.(?:com|hu|net|edu)$/i

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

    //Password validation
    let passwordBox = document.getElementById('passwordBox')
    if (password.value != "") {
        passwordBox.classList.add('is-valid')
        passwordBox.classList.remove('is-invalid')
    }
    else{
        event.preventDefault()
        passwordBox.classList.remove('is-valid')
        passwordBox.classList.add('is-invalid')
        document.getElementById("passwordIcon").classList.add("fa-shake")
        setTimeout(function(){
            document.getElementById("passwordIcon").classList.remove("fa-shake")
        }, 900)
    }

    //Age validation
    if (age.value != "") {
        age.classList.add('is-valid')
        age.classList.remove('is-invalid')
    }
    else{
        event.preventDefault()
        age.classList.remove('is-valid')
        age.classList.add('is-invalid')
        document.getElementById("ageIcon").classList.add("fa-shake")
        setTimeout(function(){
            document.getElementById("ageIcon").classList.remove("fa-shake")
        }, 900)
    }

    //Gender validation
    if (gender.value != "") {
        gender.classList.add('is-valid')
        gender.classList.remove('is-invalid')
    }
    else{
        event.preventDefault()
        gender.classList.remove('is-valid')
        gender.classList.add('is-invalid')
        document.getElementById("genderIcon").classList.add("fa-shake")
        setTimeout(function(){
            document.getElementById("genderIcon").classList.remove("fa-shake")
        }, 900)
    }

    //Profession validation
    if (profession.value != "") {
        profession.classList.add('is-valid')
        profession.classList.remove('is-invalid')
    }
    else{
        event.preventDefault()
        profession.classList.remove('is-valid')
        profession.classList.add('is-invalid')
        document.getElementById("profIcon").classList.add("fa-shake")
        setTimeout(function(){
            document.getElementById("profIcon").classList.remove("fa-shake")
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

document.getElementById('passwordToggle').onclick = function(){
    let check = document.getElementById('passwordToggle')
    if (password.type == "password") {
        password.type = "text"
        check.classList.replace("fa-eye-slash", "fa-eye")
    }
    else{
        password.type = "password"
        check.classList.replace("fa-eye", "fa-eye-slash")
    }
}

function valami(){
    let box = document.getElementById('passwordBox')
    box.style.boxShadow = "0 0 0 0 transparent"
}

document.getElementById('password').onfocus = function(){
    let box = document.getElementById('passwordBox')
    box.style.boxShadow = "0 0 0 0.25rem rgba(0, 0, 255, 0.249)"
}