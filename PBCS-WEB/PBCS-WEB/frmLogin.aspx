
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    
    <script>
        // Ignore this in your implementation
        window.isMbscDemo = true;
    </script>

    <title>Basic</title>

    <!-- Mobiscroll JS and CSS Includes -->
    <link rel="stylesheet" href="css/mobiscroll.javascript.min.css">
    <script src="js/mobiscroll.javascript.min.js"></script>

    <style type="text/css">
    body {
        margin: 0;
        padding: 0;
    }

    .md-content-scroll .mbsc-fr-c {
        height: 400px;
        overflow: auto;
        -webkit-overflow-scrolling: touch;
    }
    </style>

</head>
<body>
    
     <div class="picture">
     <center>
    <img src="img/user.png" class="img-rounded" ; style="width:150px; height:150px;">
         </center>
</div>

<div mbsc-page class="demo-basic">
    <div mbsc-form>
        <div class="mbsc-form-group">
            <div class="mbsc-form-group-title">Without return value</div>
            <div class="mbsc-btn-group-block">
                <button id="showAccount">Login</button>
            </div>
        </div>
        <!--
        <div class="mbsc-form-group">
            <div class="mbsc-form-group-title">With return value</div>
            <label> Update
                <input id="showPopup" placeholder="Please Select..." readonly />
            </label>
        </div>
        <div class="mbsc-form-group">
            <div class="mbsc-form-group-title">With scrollable content</div>
            <div class="mbsc-btn-group-block">
                <button id="showScrollable">Show Popup</button>
            </div>
        </div
        -->
    </div>
    
    <div id="demo" class="mbsc-cloak">
        <div class="mbsc-align-center mbsc-padding">
            <img src="https://img.mobiscroll.com/demos/f1.png">
            <h3>Liza Taylor</h3>
            <p>liza.taylor@mobiscroll.com <br> (202) 555-0127</p>
        </div>
    </div>
    <!--
    <div id="list" class="mbsc-cloak">
        <div mbsc-form>
            <div class="mbsc-form-group-inset">
                <p>Some updates are available for you. <br> When would you like to install them?</p>
            </div>
            <div class="mbsc-form-group-inset">
                <label>
                    <input type="radio" name="update" value="Right now" checked /> Right now
                </label>
                <label>
                    <input type="radio" name="update" value="Later on today" /> Later on today
                </label>
                <label>
                    <input type="radio" name="update" value="Remind me tomorrow" /> Remind me tomorrow
                </label>
            </div>
        </div>
    </div>
    
    
    <div id="scrollable" class="mbsc-cloak">
        <ul id="listview" class="mbsc-cloak">
            <li data-icon="connection">Wifi</li>
            <li data-icon="location">Location</li>
            <li data-icon="volume-medium">Sound</li>
            <li data-icon="fa-rotate-left">Rotation</li>
            <li data-icon="ion-bluetooth">Bluetooth</li>
            <li data-icon="cogs">Settings</li>
            <li data-icon="user4">Reading</li>
            <li data-icon="download">Data</li>
            <li data-icon="eye">Eye comfort</li>
            <li data-icon="mobile">Screenshot</li>
            <li data-icon="airplane">Airplane Mode</li>
            <li data-icon="alarm2">Alarm</li>
            <li data-icon="material-message">Messages</li>
            <li data-icon="meteo-weather4">Weather</li>
            <li data-icon="camera">Camera</li>
            <li data-icon="material-photo-size-select-large">Edit</li>
        </ul>
    </div>

    -->
</div>

<script>
    mobiscroll.settings = {
        lang: 'en',                                         // Specify language like: lang: 'pl' or omit setting to use default
        theme: 'ios'                                        // Specify theme like: theme: 'ios' or omit setting to use default
    };

    var account = mobiscroll.popup('#demo', {
        display: 'center'                               // Specify display mode like: display: 'bottom' or omit setting to use default
    }),
        popup = mobiscroll.popup('#list', {
            display: 'center',                              // Specify display mode like: display: 'bottom' or omit setting to use default
            onSet: function (event, inst) {                 // More info about onSet: https://docs.mobiscroll.com/4-7-3/javascript/popup#event-onSet
                var checked = document.querySelector('input[name="update"]:checked');
                document.getElementById('showPopup').value = checked ? checked.value : '';
            }
        }),
        scrollable = mobiscroll.popup('#scrollable', {
            display: 'center',                              // Specify display mode like: display: 'bottom' or omit setting to use default
            scrollLock: false,                              // More info about scrollLock: https://docs.mobiscroll.com/4-7-3/javascript/popup#opt-scrollLock
            cssClass: 'mbsc-no-padding md-content-scroll',  // More info about cssClass: https://docs.mobiscroll.com/4-7-3/javascript/popup#opt-cssClass
            buttons: []                                     // More info about buttons: https://docs.mobiscroll.com/4-7-3/javascript/popup#opt-buttons
        });

    mobiscroll.listview('#listview', {
        enhance: true,
        swipe: false,
        onItemTap: function () {
            scrollable.hide();
            mobiscroll.toast({

                message: event.target.textContent + ' clicked'
            });
        }
    });

    document
        .getElementById('showAccount')
        .addEventListener('click', function () {
            account.show();
        }, false);

    document
        .getElementById('showPopup')
        .addEventListener('click', function () {
            popup.show();
        }, false);

    document
        .getElementById('showScrollable')
        .addEventListener('click', function () {
            scrollable.show();
        }, false);
</script>

</body>
</html>




<!--

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="PBCS_WEB.frmLogin" %>

<!DOCTYPE html>
<!--
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        
  <title>PBCS 2.0 - Login page</title>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>

<body>

    <div class="container">
  <h2>Login Page</h2>


 <div class="picture">
     <center>
    <img src="img/user.png" class="img-rounded" ; style="width:150px; height:150px;">
         </center>
</div>
 
        
        <form action="/action_page.php">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
    </div>
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>


<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>
</head>
<body>

<h2>Popup Form</h2>
<p>Click on the button at the bottom of this page to open the contact form.</p>
<p>Note that the button and the form is fixed - they will always be positioned to the bottom of the browser window.</p>

<button class="open-button" onclick="openForm()">Open Form</button>

<div class="form-popup" id="myForm">
  <form action="/action_page.php" class="form-container">
    <h1>Login</h1>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <button type="submit" class="btn">Login</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>

<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>

</body>
</html>
-->
