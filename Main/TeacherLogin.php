<!DOCTYPE html>
<html lang="en">
    <head>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content ="width=device-width, initial-scale=1.0">
     <title> ISCHEDULEIT HOME</title>
     <link rel="stylesheet" href="style.css">
    </head>

    <body>
      <div class="wrapper">
       
      <form>
        <div class="inputGroup">
            <input autocomplete="off" required="" type="text">
            <label for="Student">Student Name</label>
        </div>
        <div class="inputGroup2">
            <input autocomplete="off" required="" type="text">
            <label for="Password">Password</label>
        </div>
        <div class="button-login">
            <button>
              LOGIN
            </button>


       </form>
      </div>
       
    </body>
























    <style>
  @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
*{
  font-family: "Montserrat", sans-serif;
}
body {
        background-image: url("cpc4.jpg");
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
        overflow: hidden;
    }


.wrapper{
    border-radius: 50px;
    background-color:#eeeeee;
    height: 400px;
    width: 700px;
    margin-top: 150px;
    margin-left: 450px;
    display: flex;
    justify-content: center;
    align-items: center;

}
.image-icon{
    position: absolute;
    margin-right: 400px;
    margin-top: -70px;
}
.inputGroup {
  font-family:  'Montserrat', sans-serif;
  margin: 1em 0 1em 0;
  max-width: 190px;
  position: relative;
  top: -20px;
  left: 50px;
}

.inputGroup input {
  font-size: 100%;
  padding: 0.8em;
  outline: none;
  border: 2px solid rgb(200, 200, 200);
  background-color: transparent;
  border-radius: 20px;
  width: 100%;
  
}

.inputGroup label {
  font-size: 100%;
  position: absolute;
  left: 0;
  padding: 0.8em;
  margin-left: 0.5em;
  pointer-events: none;
  transition: all 0.3s ease;
  color: rgb(100, 100, 100);
}

.inputGroup :is(input:focus, input:valid)~label {
  transform: translateY(-50%) scale(.9);
  margin: 0em;
  margin-left: 1.3em;
  padding: 0.4em;
  background-color: #eeeeee;
}

.inputGroup :is(input:focus, input:valid) {
  border-color: rgb(13, 13, 18);
}


.inputGroup2 {
  font-family:  'Montserrat', sans-serif;
  margin: 1em 0 1em 0;
  max-width: 190px;
  position: relative;
  left: 50px;
  top: -15px;
  
}

.inputGroup2 input {
  font-size: 100%;
  padding: 0.8em;
  outline: none;
  border: 2px solid rgb(200, 200, 200);
  background-color: transparent;
  border-radius: 20px;
  width: 100%;
 
  
}

.inputGroup2 label {
  font-size: 100%;
  position: absolute;
  left: 0;
  padding: 0.8em;
  margin-left: 0.5em;
  pointer-events: none;
  transition: all 0.3s ease;
  color: rgb(100, 100, 100);
}

.inputGroup2 :is(input:focus, input:valid)~label {
  transform: translateY(-50%) scale(.9);
  margin: 0em;
  margin-left: 1.3em;
  padding: 0.4em;
  background-color: #eeeeee;
}

.inputGroup2 :is(input:focus, input:valid) {
  border-color: rgb(13, 13, 18);
}


.button-login button {
  display:flex;
  padding: 1.3em 1em;
  font-size: 14px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #fff;
  background-color:  #069332c6;
  border: none;
  border-radius: 45px;
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  position: relative;
  left: 95px;

 
}

.button-login button:hover {
  background-color: #059a5f;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
}

.button-loginbutton:active {
  transform: translateY(-1px);

}


/* Responsive adjustments */

@media (max-width: 768px) {

.wrapper {

  width: 90%; /* Adjust width to be more flexible */

  margin-left: auto; /* Center the wrapper */

  margin-right: auto; /* Center the wrapper */

  margin-top: 50px; /* Adjust top margin */

}


.inputGroup, .inputGroup2 {

  max-width: 80%; /* Make input groups wider on smaller screens */

  left: 0; /* Center inputs */

  top: 0; /* Reset vertical positioning */

}


.button-login button {

  left: 0; /* Center the button */

  width: 100%; /* Make button full width */

}


.image-icon {

  margin-right: 0; /* Adjust icon position */

  margin-top: -30px; /* Adjust icon position */

}

}


@media (max-width: 480px) {

.wrapper {

  height: auto; /* Allow wrapper to adjust height */

  padding: 20px; /* Add some padding */

}


.inputGroup, .inputGroup2 {

  max-width: 100%; /* Full width for smaller screens */

  left: 0; /* Center inputs */

}


.button-login button {

  padding: 1em; /* Adjust padding for smaller screens */

}

}
    </style>
