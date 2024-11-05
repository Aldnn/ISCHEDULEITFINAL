<?php include "dbconnect.php"; ?>


<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ISCHEDULEIT HOME</title>

    <link rel="stylesheet" href="style.css">

    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

</head>

<body>


<div class="wrapper">

    <div class="UpdateSchedule">

        <form action="update.php" method="post">


            <input type="hidden" name="id" value="<?php echo $schedule_id; ?>"> <!-- Change 'schedule_id' to 'id' -->


            <select id="select-department" name="department" required>

                <option value="">Select Department</option>

                <option value="CET">CET</option>

                <option value="CASE">CASE</option>

                <option value="CHTM">CHTM</option>

                <option value="CBMA">CBMA</option>

                <option value="Law">Law</option>

                <option value="Marine">Marine</option>

                <option value="Crim">Criminology</option>

            </select>


            <select id="select-Subject" name="subject_description">

                <option value="">Select Subject</option>

                <?php include_once "GetSubject.php"; echo $options ?>

            </select>


            <select id="select-Teacher" name="teacher">

                <option value="">Select Teacher</option>

                <?php include_once "GetTeacher.php"; echo $options ?>

            </select>


            <select id="select-Day" name="day">

                <option value="">Select Day</option>

                <option value="Monday">Mon</option>

                <option value="Tuesday">Tues</option>

                <option value="Wednesday">Wed</option>

                <option value="Thursday">Thurs</option>

                <option value="Friday">Fri</option>

                <option value="Saturday">Sat</option>

            </select>


            <select id="select-Room" name="room">

                <option value="">Select Room</option>

                <?php include_once "GetRoom.php"; echo $options ?>

            </select>


            <div class="inputGroup">

                <input autocomplete="off" required="" type="text" name="time">

                <label for="Student">Input Time</label>

            </div>


            <div class="inputGroup3">

                <input autocomplete="off" required="" type="text" name="course">

                <label for="Course">Course</label>

            </div>


            <div class="button-submit">

                <button type="submit">UPDATE</button>

            </div>


        </form>

    </div>


    <div class="button-back">

        <button type="button" onclick="window.location.href='Schedule.php'">

            &lt;-

        </button>

    </div>

</div>


</body>

</html>



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
              
          }



          .wrapper{
          border-radius: 50px;
          background-color:#fff;
          height: 500px;
          width: 700px;
          margin-top: 150px;
          margin-left: 500px;
          display: flex;
          justify-content: center;
          align-items: center;
      }


      .btn {
  background-color: #4CAF50;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.btn:hover {
  background-color: #3e8e41;
}

#select-Subject {
  position: absolute;
  width: 200px;
  padding: 10px;
  border: 2px solid #ccc;
  border-radius: 5px;
  font-size: 16px;
  margin-top: -10px;
  margin-left: -180px;
}


#select-Day {
  position: absolute;
  width: 200px;
  padding: 10px;
  border: 2px solid #ccc;
  border-radius: 5px;
  font-size: 16px;
  margin-top: -150px;
  margin-left: 220px;
}

#select-Room {
  position: absolute;
  width: 200px;
  padding: 10px;
  border: 2px solid #ccc;
  border-radius: 5px;
  font-size: 16px;
  margin-top: -80px;
  margin-left: -180px;
}

#select-Teacher {
  position: absolute;
  width: 200px;
  padding: 10px;
  border: 2px solid #ccc;
  border-radius: 5px;
  font-size: 16px;
  margin-top: -150px;
  margin-left: -180px;
}

#select-menu1 option, #select-menu2 option, #select-menu3 option {

  padding: 10px;

}

.inputGroup {
  font-family:  'Montserrat', sans-serif;
  margin: 1em 0 1em 0;
  max-width: 200px;
  position: relative;
  top: -75px;
  left: 220px;
}

.inputGroup input {
  font-size: 100%;
  padding: 0.8em;
  outline: none;
  border: 2px solid rgb(200, 200, 200);
  background-color: transparent;
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
  background: #fff;
  
}

.inputGroup :is(input:focus, input:valid) {
  border-color: rgb(13, 13, 18);
}



.button-submit button{
  
  display: flex;
  padding: 1.4em 4.5em;
  font-size: 12px;
  text-align: center;
  width: 15em;
  text-transform: uppercase;
  letter-spacing: 3.5px;
  font-weight: 500;
  color: #fff;
  background-color: #0652b5c6;
  border: none;
  border-radius: 25px;
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  margin-left: 25px;
  margin-top: 100px;
  position: absolute;
}

.button-submit button:hover {
  background-color: #18bb38;
  box-shadow: 0px 15px 20px rgba(59, 202, 145, 0.4);
  color: #fff;
  transform: translateY(-7px);
}

.button-submit button:active {
  transform: translateY(-1px);

}


.button-back button {
  display:flex;
  font-size: 20px;
  text-transform: uppercase;
  width: 65px;
  color: #fff;
  background-color:  #670d04c6;
  border: none;
  border-radius:13%;
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  position: absolute;
  left: 570px;
  top: 10px;
  text-align: center;
  justify-content: center;

 
}

.button-back button:hover {
  background-color: #7e0703;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);  
}

.button-logoutbutton:active {
  transform: translateY(-1px);

}

.inputGroup3 {
  font-family:  'Montserrat', sans-serif;
  margin: 1em 0 1em 0;
  max-width: 200px;
  position: relative;
  top: -55px;
  left: 220px;
}

.inputGroup3 input {
  font-size: 100%;
  padding: 0.8em;
  outline: none;
  border: 2px solid rgb(200, 200, 200);
  background-color: transparent;
  width: 100%;
  
}

.inputGroup3 label {
  font-size: 100%;
  position: absolute;
  left: 0;
  padding: 0.8em;
  margin-left: 0.5em;
  pointer-events: none;
  transition: all 0.3s ease;
  color: rgb(100, 100, 100);
}

.inputGroup3 :is(input:focus, input:valid)~label {
  transform: translateY(-50%) scale(.9);
  margin: 0em;
  margin-left: 1.3em;
  padding: 0.4em;
  background: #fff;
  
}

.inputGroup3 :is(input:focus, input:valid) {
  border-color: rgb(13, 13, 18);
}

#select-department {
  position: absolute;
  width: 200px;
  padding: 10px;
  border: 2px solid #ccc;
  border-radius: 5px;
  font-size: 16px;
  margin-top: -60px;
  margin-left: -180px;
}
</style>