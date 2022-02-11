<?php


session_start();




include "../config/db.php";
include "../config/config.php";

$msg = "";
use PHPMailer\PHPMailer\PHPMailer;



if(isset($_SESSION['email'])){

    $email = $_SESSION['email'];
		 $sql = "UPDATE users SET session='1' WHERE email='$email'";

	  mysqli_query($link, $sql) or die(mysqli_error($link));


	}
else{


	header("location:../login.php");
}




$pdbalance = 0;
$pdprofit = 0;
$percentage = 0;
$wbtc1 = 0;




$sql2= "SELECT * FROM users WHERE email= '$email'";
$result2 = mysqli_query($link,$sql2);
if(mysqli_num_rows($result2) > 0){
 $row = mysqli_fetch_assoc($result2);
 $pdate = $row['pdate'];
 $duration = $row['duration'];
 $increase = $row['increase'];
 $usd = $row['usd'];
 $refcode = $row['refcode'];
}


if(isset($row['pdate']) &&  $row['pdate'] != '0' && isset($row['duration'])  && isset($row['increase'])  && isset($row['usd']) ){
         
    $endpackage = new DateTime($pdate);
    $endpackage->modify( '+ '.$duration. 'day');
$Date2 = $endpackage->format('Y-m-d');
$current=date("Y/m/d");

$diff = abs(strtotime($Date2) - strtotime($current));
$one = 1;

    $date3 = new DateTime($Date2);
     $date3->modify( '+'. $one.'day');
     $date4 = $date3->format('Y-m-d');

$days=floor($diff / (60*60*24));


$daily = $duration - $days;
$percentage = ($increase/100) * $daily * $usd;











$one = 1;
$f = date('Y-m-d', strtotime($Date2 . ' + '. $one.'day'));

if(isset($days) && $days == 0 || $Date2 == (date("Y/m/d"))  ){

 $pp =   $percentage;     


$sql = "UPDATE users SET activate = '0',pdate = '0',walletbalance= walletbalance + $pp, profit = profit + $pp  WHERE email='$email'";


if(mysqli_query($link, $sql)){

$percentage = $pp = 0;


}
}else{
$_SESSION['pprofit'] = $percentage;
}






$add="days";
 
}else {
$daily ="";
$percentage ="0";

}
 



$sql21= "SELECT * FROM users WHERE email= '$email'";
$result21 = mysqli_query($link,$sql21);
if(mysqli_num_rows($result21) > 0){
$row1 = mysqli_fetch_assoc($result21);
$pdbalance = $row1['walletbalance'];
$pdprofit = $row1['profit'];
$fname = $row1['fname'];
$lname = $row1['lname'];
}

$sql211= "SELECT SUM(moni) as total_value FROM wbtc WHERE email= '$email' and status= 'completed'";
$result211 = mysqli_query($link,$sql211);
$row11 = mysqli_fetch_assoc($result211);
if($row11['total_value'] != ""){
$wbtc1 = $row11['total_value'];
}else{
$wbtc1 = 0;
}






?>
<!doctype html>
            <html lang="en">
                <head>
                    <meta charset="utf-8" />
                    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

                    <title>Dashboard AliCryptoFx</title>

                    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
                    <meta name="viewport" content="width=device-width" />


                    <!-- Bootstrap core CSS     -->
                    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

                    <!-- Animation library for notifications   -->
                    <link href="assets/css/animate.min.css" rel="stylesheet"/>

                    <!--  Light Bootstrap Table core CSS    -->
                    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


                    <!--  CSS for Demo Purpose, don't include it in your project     -->
                    <link href="assets/css/demo.css" rel="stylesheet" />


                    <!--     Fonts and icons     -->
                    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
                    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
                    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

                </head>
                <body>

                    <div class="wrapper">
                        <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">

                            <!--
                        
                                Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
                                Tip 2: you can also add an image using data-image tag
                        
                            -->

                            <div class="sidebar-wrapper">
                                <div class="logo">
                                    <a href="../" class="simple-text">
                                        <img class="img-responsive" alt="logo" src="../images/logo-dark.png">
                                    </a>
                                </div>

                                <ul class="nav">
                                    <li class="active">
                                        <a href="./">
                                            <i class="pe-7s-graph"></i>
                                            <p>Dashboard</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="profile.php">
                                            <i class="pe-7s-user"></i>
                                            <p>User Profile</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="message.php">
                                            <i class="pe-7s-mail"></i>
                                            <p>Messages</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="wallet.php">
                                            <i class="pe-7s-wallet"></i>
                                            <p>Wallet</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="packages.php">
                                            <i class="pe-7s-photo-gallery"></i>
                                            <p>Investment plans</p>
                                        </a>
                                    </li>
                                    <li>
                            <a href="mypackages.php">
                                <i class="pe-7s-photo-gallery"></i>
                                <p>My Package</p>
                            </a>
                        </li>
                        <li>
                            <a href="referral.php">
                                <i class="pe-7s-user"></i>
                                <p>Downlines</p>
                            </a>
                        </li>
                                    <li>
                                        <a href="withdrawal.php">
                                            <i class="pe-7s-cash"></i>
                                            <p>Withdrawals</p>
                                        </a>
                                    </li>
                                    <li class="active-pro">
                                        <a href="logout.php">
                                            <i class="pe-7s-user"></i>
                                            <p>Logout</p>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="main-panel">
                            <nav class="navbar navbar-default navbar-fixed">
                                <div class="container-fluid">
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>
                                        <a class="navbar-brand" href="#">Dashboard</a>
                                    </div>
                                    <div class="collapse navbar-collapse">
                                        <ul class="nav navbar-nav navbar-left">
                                            <li>
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                    <i class="fa fa-dashboard"></i>
                                                    <p class="hidden-lg hidden-md">Dashboard</p>
                                                </a>
                                            </li>
                                        </ul>

                                        <ul class="nav navbar-nav navbar-right">
                                            <li>
                                                <a href="profile.php">
                                                    <p>Account</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="logout.php">
                                                    <p>Log out</p>
                                                </a>
                                            </li>
                                            <li class="separator hidden-lg"></li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>


                            <div class="content">
                                <div class="container-fluid">

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="card">

                                                <!-- Trading View Widget BEGIN -->
                                                <div class="tradingview-widget-container">
                                                    <div id="tradingview_c3b97" style="height:500px"></div>
                                                    <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
                                                    <script type="text/javascript">
                                                        new TradingView.widget(
                                                                {
                                                                    "autosize": true,
                                                                    "symbol": "NASDAQ:AAPL",
                                                                    "timezone": "Etc/UTC",
                                                                    "theme": "light",
                                                                    "style": "1",
                                                                    "locale": "en",
                                                                    "toolbar_bg": "#f1f3f6",
                                                                    "enable_publishing": false,
                                                                    "withdateranges": true,
                                                                    "range": "ytd",
                                                                    "hide_side_toolbar": false,
                                                                    "allow_symbol_change": true,
                                                                    "details": true,
                                                                    "hotlist": true,
                                                                    "calendar": true,
                                                                    "news": [
                                                                        "stocktwits",
                                                                        "headlines"
                                                                    ],
                                                                    "container_id": "tradingview_c3b97"
                                                                }
                                                        );
                                                    </script>
                                                </div>
                                                <!-- Trading View Widget END -->

                                            </div>
                                        </div>
                                    </div>

                                                                                <div class="row">
                                                <div class="col-md-4">
                                                    <div class="card">

                                                        <div class="header">
                                                            <h4 class="title">Wallet Balance</h4>
                                                            <p class="category">current available balance</p>
                                                        </div>
                                                        <div class="content" style="text-align: center">
                                                            <h1>$<?php echo round($pdbalance,2) + round($percentage,2);?></h1>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="card">

                                                        <div class="header">
                                                            <h4 class="title">Total Earnings</h4>
                                                            <p class="category">total earnings so far</p>
                                                        </div>
                                                        <div class="content" style="text-align: center">
                                                            <h1>$<?php echo round($pdprofit,2) + round($percentage,2);?></h1>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="card">

                                                        <div class="header">
                                                            <h4 class="title">Total Withdrawn</h4>
                                                            <p class="category">total earnings withdrawn so far</p>
                                                        </div>
                                                        <div class="content" style="text-align: center">
                                                            <h1>$<?php echo $wbtc1;?></h1>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            
                                    <center><a href="wallet.php" class="btn btn-link" style="color: green;border-color: green">Add Funds to Wallet</a></center><br>
<div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                <div class="content">

                                <p style="text-align: center;">
                                                    
                                               
                                                <div class="row">
                                                
          </br>
                                                <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <p>Referral Link: </p>
                                                                    <input type="text" class="form-control" value="https://<?php echo $bankurl;?>/register.php?ref=<?php echo $refcode;?>" id="myInputs" >
                                                                    <button onclick="myFunctions()" class="btn btn-info btn-fill"> Copy Referral Link </button>
                                                                    <script>
                                                                    function myFunctions() {
                                                                    var copyText = document.getElementById("myInputs");
                                                                    copyText.select();
                                                                    document.execCommand("copy");
                                                                    alert("Referral link copied: " + copyText.value);
                                                                    }
                                                                    </script>
                                                                </div>
                                                            </div>
                                               
                                               
                                            </div>
                                </div>
                                </div>
                                </div>
                                </div>
                                    <center><h3>Trading Account</h3></center>
                                    <br>

                                    <center><b>User has no trading account.</b></center><br>                                    </div>
                                </div>
                            </div>


                            <footer class="footer">
                                <div class="container-fluid">
                                    <p class="copyright pull-right">
                                        &copy; <script>document.write(new Date().getFullYear())</script> <a>AliCryptoFx</a>
                                    </p>
                                </div>
                            </footer>

                        </div>
                    </div>


                </body>

                <!--   Core JS Files   -->
                <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
                <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

                <!--  Charts Plugin -->
                <script src="assets/js/chartist.min.js"></script>

                <!--  Notifications Plugin    -->
                <script src="assets/js/bootstrap-notify.js"></script>

                <!--  Google Maps Plugin    -->
                <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

                <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
                <script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

                <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
                <script src="assets/js/demo.js"></script>

                <script type="text/javascript">
                                            $(document).ready(function () {

                                                demo.initChartist();

                                                $.notify({
                                                    icon: 'pe-7s-user',
                                                    message: "Welcome back <b><?php echo $fname.' '.$lname;?></b>"

                                                }, {
                                                    type: 'warning',
                                                    timer: 4000
                                                });

                                            });
                </script>

            </html>
            