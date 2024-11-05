<!DOCTYPE html>
<html lang="en">
    <head>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content ="width=device-width, initial-scale=1.0">
     <title> ISCHEDULEIT HOME</title>
     <link rel="stylesheet" href="style.css">
     <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>

    <body>
      <div class="wrapper">

        <div class="DepartmentSelect">
            <select id="select-menu1">
                <option value="">Select Department</option>
                <option value="option1">Option 1</option>
                   </select>
        </div>

        <div class="CourseSelect">
           <select id="select-menu2">
              <option value="">Select Course</option>
              <option value="option1">option 1</option>
           </select>
        </div>
         
        <div class="YearLevelSelect">
            <select id="select-menu3">
                <option value="">Select Year Level</option>
                <option value="option1">option1</option>
                
            </select>
        </div>
        <div class="button-submit">
            <button>
              SUBMIT
            </button>
            <div class="button-logout">
                <button class="logout" >
                    <i class='bx bx-power-off' style="font-size: 15px;"></i>
                      
                </button>
            </div>
 
            <table class="Schedule-Table">
              <thead>
                <tr>
                  <th>Subject Code</th>
                  <th>Subject Description</th>
                  <th>Time</th>
                  <th>Day</th>
                  <th>Teacher</th>
                  <th>Room</th>
                  
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td></td>
                  <td> </td>
                  <td> </td>
                  <td> </td>
                  <td> </td>
                  <td>  </td>
                  
                </tr>
              </tbody>
            </table>

      </div>    


    
      
      
     
      

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
          background-color:#eeeeee;
          height: 400px;
          width: 600px;
          margin-top: 150px;
          margin-left: 500px;
          display: flex;
          justify-content: center;
          align-items: center;
      }

      #select-menu1 {
  width: 200px;
  border: 2px solid #ccc;
  border-radius: 25px;
  position: relative;
  top: -160px;
  left: 245px;
}

#select-menu2 {
  width: 200px;
  border: 2px solid #ccc;
  border-radius: 25px;
  position: relative;
  top: -40px;
  left:  -55px;
}

#select-menu3 {
  width: 200px;
  border: 2px solid #ccc;
  border-radius: 25px;
  position: relative;
  top: 40px;
  left: -285px;
}


.button-submit button {
  display:flex;
  font-size: 10px;
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
  position: absolute;
  left: 855px;
  top: 200px;

 
}

.button-submit button:hover {
  background-color: #059a5f;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);  
}

.button-submitbutton:active {
  transform: translateY(-1px);

}


.button-logout button {
  display:flex;
  font-size: 5px;
  text-transform: uppercase;
  width: 65px;
  color: #fff;
  background-color:  #670d04c6;
  border: none;
  border-radius:5%;
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  position: absolute;
  left: 670px;
  top: -130px;
  text-align: center;
  justify-content: center;

 
}

.button-logout button:hover {
  background-color: #7e0703;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);  
}

.button-logoutbutton:active {
  transform: translateY(-1px);

}

.logout{
    text-align:center;
}

.logout i{
    display: inline-block;
}

.Schedule-Table{
  
  border-collapse: collapse;
  margin: 35px 0;
  font-size: 0.9em;
  width: 100%;
  margin-top: 800px;
  margin-left: -700px;
  
}

.Schedule-Table thead tr {
  background-color:#0652b5;
  color: #ffff;
  text-align: left;
  font-weight: bold;
}

.Schedule-Table th,
.Schedule-Table td{
border: 1px solid #dddddd;
text-align: left;
padding:8px;

}

.Schedule-Table tbody tr{
  border-bottom: 1px solid #eeeeee;
  background-color: #fff;
}

.Schedule-Table tbody tr:nth-of-type(even){
  background-color: #999090;
}

.Schedule-Table tbody tr:last-of-type{
  border-bottom: 2px solid #0652b5;
}
