


<!DOCTYPE html>
<html lang="en">
    <head>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content ="width=device-width, initial-scale=1.0">
     <title> ISCHEDULEIT HOME</title>
     <link rel="stylesheet" href="style.css">
     <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    </head>
    <body>
      <div class="sidebar">
        <div class="logo_content">
           <div class = "title">
            <div class ="title_name">ISCHEDULEIT</div>
           </div>
           <i class='bx bx-menu' id="btn" style='color:#ffffff'  ></i>
           </div>
              <ul class="nav list">
                <li>
                  <a href="hometest.php">
                    <i class='bx bx-home-alt' style='color:#ffffff'  ></i>
                    <span class="links_name">Home</span>
                  </a>
                  <span class="tooltip">Home</span>
                </li>
                <li>
                   <a href="Schedule.php">
                    <i class='bx bx-time-five' style='color:#ffffff' ></i>
                    <span class="links_name">Schedules</span>
                   </a>
                   <span class="tooltip">Schedules</span>
                </li>
                <li>
                  <a href="#">
                    <i class='bx bx-power-off' id="log out" style="color:#ffffff" ></i>
                    <span class="links_name">Log Out</span>
                  </a>
                  <span class="tooltip">Log Out</span>
                </li>
              </ul>
             </div>
             
          <div id="wrapper">
            <div class="button-container">
              <div class="button-create"> 
                <button type="button" onclick ="window.location.href='AddSchedule.php'">
                 <i class='bx bxs-time'></i>
                 Create Schedule
                </button>
                </div>
               
                <div class="button-print">
                  <button>
                    <i class='bx bxs-printer'></i>
                    PRINT
                  </button>
                </div>
            </div>

               
           
                <form method="POST" action="">

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

<div class="button-go">
    <button type="submit">GO</button>

</div>

</form>
            
            <div class="table-container">
              <table class="content-table">
                <thead>
                  <th>Teacher</th> 
                  <th>Subject</th>
                  <th>Day</th>
                  <th>Time</th>
                  <th>Room</th>
                  <th>Course</th>
                  <th>Actions</th>
                  
                </thead>
                <tbody>
                 <?php include_once "GetTable.php";?>
                 

              </tbody>
              </table>
  
              <div id="deleteModal" class="modal">

      <div class="modal-content">
         <span class="close" onclick="closeModal()">&times;</span>
         <p id="modalMessage">Delete this Schedule?</p>
          <button id="confirmDeleteBtn">Yes</button>
          

</div>

</div>
            </div>

<script src="script.js"></script>
    </body>



    
</html>


<style> 
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Montserrat", sans-serif;
  
}

div#wrapper{
  background-color:#f4f2f2;
  border-radius: 25px;
  height: 800px;
  width: 90%;
  margin-left: 232px;
  margin-top: 60px;
  
}
body{
  position: relative;
  min-height: 100vh;
  width: 90%;
  overflow:none;
  background:rgba(226, 218, 218, 0.955)
  
  
}
.sidebar{
  position: fixed;
  top: 0;
  left: 0;
  height: 100%;
  width: 90px;
  background:#0652b5c6;
  padding: 6px 20px;
  transition: all 0.5s ease;
}

.sidebar.active{
  width: 230px;

}

.sidebar .logo_content .title{
  color: #ffffff;
  display: flex;
  height: 60px;
  width: 100%;
  align-items: center;
  opacity: 0;
  pointer-events: none;
}

.sidebar.active .logo_content .title{
  opacity: 1;
  pointer-events: none;

}
.logo_content .title{
  font-size: 21px;
  margin-right: 5px;

}
.logo_content .title .title_name{
  font-size: 20px;
  font-weight: 500;
}
.sidebar #btn{
  color: #ffffff;
  position: absolute;
  left: 55%;
  top: 6px;
  font-size: 20px;
  height: 50px;
  width: 50px;
  text-align: center;
  line-height: 50px;
  transform: translate(-50%);
}

.sidebar.active #btn{
  left: 91%;
}
.sidebar ul{
  margin-top: 20px;

}
.sidebar ul li{
  position: relative;
  height: 60px;
  width:100%;
  list-style:none;
  margin: 0 5px;
  line-height: 40px; 
}

.sidebar ul li .tooltip{
  position: absolute;
  left: 130px;
  top: 0%;
  transform: translate(-50%, -50%);
  height: 60px;
  width: 122px;
  background: #ffff;
  box-shadow:0 5px 10px rgba(0, 0, 0, 0.2);
  border-radius: 5px;
  line-height:60px;
  text-align: center;
  transition: 0s;
  opacity: 0;
  pointer-events: none;
  display: block;
}
.sidebar.active ul li .tooltip{
  display: none;
}
.sidebar ul li:hover .tooltip{
 top: 50%;
 transition: all 0.6s ease;
 opacity: 1;
}
.sidebar ul li a{
  color: #fef5f5;
  display: flex;
  align-items: center;
  text-decoration: none;
  transition: all 0.3s ease;
  border-radius: 14px;
  white-space: nowrap;
}
.sidebar ul li a:hover{
  color: #1b0505;
  background: #f7f7f7c3;
}
.sidebar ul li  i{
  height: 14px;
  min-width: 50px;
  border-radius: 12px;
  text-align: center;
}
.sidebar .links_name{
  opacity:0;
}

.sidebar.active .links_name{
  opacity: 1;
  pointer-events:auto;
}

.button-container{
  display: flex;
  align-items:center;
}

.button-create button {
  position: absolute;
  display: flex;
  flex-wrap: wrap;
  padding: 1.3em 1em;
  font-size: 9px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #fff;
  background-color: #0652b5c6;
  border: none;
  border-radius: 45px;
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  align-items:center;
  margin-left: 290px;
  margin-top: 30px;
}

.button-create button:hover {
  background-color: #059a5f;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
}

.button-create button:active {
  transform: translateY(-1px);

}


.button-print button {
  position:absolute;
  display: flex;
  flex-wrap: wrap;
  padding: 1.3em 1em;
  font-size: 9px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #fff;
  background-color:  #0652b5c6;
  border: none;
  border-radius: 45px;
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  align-items:first baseline center;
  margin-left: 500px;
  margin-top: 30px;
}

.button-print button:hover {
  background-color: #07a26e;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
}

.button-print button:active {
  transform: translateY(-1px);
}

.button-go button {
  position: absolute;
  display: flex;
  flex-wrap: wrap;
  padding: 1.3em 1em;
  font-size: 10px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #fff;
  background-color:  #0652b5c6;
  border: none;
  border-radius: 35px;
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  align-items:first baseline center;
  margin-left: 500px;
  margin-top: 100px;
}

.button-go button:hover {
  background-color: #07a26e;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
}

.button-go button:active {
  transform: translateY(-1px);
}

.content-table {
  position:absolute;
  border-collapse: collapse;
  min-width: 150px; /* Added 'px' to the min-width */
  font-size: 0.9em;
  margin-top: 150px;
  margin-left: 50px; /* This can be adjusted for smaller screens */
}


.content-table thead tr {
  background-color: #0652b5;
  color: #ffff;
  text-align: left;
  font-weight: bold;
}


.content-table th {
  padding: 12px 15px;
  width:14%;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}


.content-table td {
  padding: 15px 0px;
}


.content-table tbody tr {
  border-bottom: 1px solid #eeeeee;
  background-color: #fff;
}


.content-table tbody tr:nth-of-type(even) {
  background-color: #eddddd;
}

.content-table tbody tr:last-of-type {
  border-bottom: 2px solid #0652b5;
}
.edit-btn, .delete-btn {

padding: 5px 10px;

border: none;

border-radius: 5px;

cursor: pointer;

}


.edit-btn {

background-color: #4CAF50;

color: #fff;

}


.delete-btn {

background-color: #e74c3c;

color: #fff;

}


.modal {

display: none; 
position: fixed; 
z-index: 1; 
left: 0;
top: 0;
width: 100%; 
height: 100%; 
overflow: auto; 
background-color: rgb(0,0,0); 
background-color: rgba(0,0,0,0.4); 

}


.modal-content {

background-color: #fefefe;

margin: 15% auto; 

padding: 20px;

border: 1px solid #888;

width: 30%; 

}


.close {

color: #aaa;

float: right;

font-size: 28px;

font-weight: bold;

}


.close:hover,

.close:focus {

color: black;

text-decoration: none;

cursor: pointer;

}

#select-department {
  position: absolute;
  width: 200px;
  padding: 10px;
  border: 2px solid #ccc;
  border-radius: 5px;
  font-size: 16px;
  margin-top: 100px;
  margin-left: 290px;
}
</style>

