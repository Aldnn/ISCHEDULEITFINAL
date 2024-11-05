let btn = document.querySelector("#btn");
                let sidebar = document.querySelector(".sidebar");
                btn.onclick = function(){
                  sidebar.classList.toggle("active");
                }


                let recordIdToDelete;


function deleteRecord(id) {

    recordIdToDelete = id; // Store the ID to delete

    document.getElementById("deleteModal").style.display = "block"; // Show the modal

}


function closeModal() {

    document.getElementById("deleteModal").style.display = "none"; // Hide the modal

}


document.getElementById("confirmDeleteBtn").onclick = function() {

    var xhr = new XMLHttpRequest();

    xhr.open("POST", "DeleteSchedule.php", true); // Ensure this points to the correct PHP file

    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    xhr.onreadystatechange = function () {

        if (xhr.readyState === 4 && xhr.status === 200) {

            alert(xhr.responseText); // Show success message

            closeModal(); // Hide the modal

            // Remove the deleted row from the table

            document.getElementById("row-" + recordIdToDelete).remove(); // Remove the row from the DOM

        }

    };

    xhr.send("id=" + recordIdToDelete);

};