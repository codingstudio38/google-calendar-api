<?php
header("Expires: Tue, 01 Jan 2000 00:00:00 GMT");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
error_reporting(0);
require 'db.php';
require __DIR__ . '/vendor/autoload.php';
// if (php_sapi_name() != 'cli') {
//     throw new Exception('This application must be run on the command line.');
// }

use Google\Client;
use Google\Service\Calendar;

/**
 * Returns an authorized API client.
 * @return Client the authorized client object
 */


function getClient()
{
    $client = new Client();
    $client->setApplicationName('Google Calendar API PHP Quickstart');
    $client->setScopes(Google_Service_Calendar::CALENDAR);
    $client->setAuthConfig(__DIR__.'/credentials.json');
    $client->setAccessType('offline');
    $client->setPrompt('select_account consent');
    $tokenPath = 'token.json';
    if (isset($_GET['code']) ) {
        $client->authenticate($_GET['code']);
        $accessToken=$client->fetchAccessTokenWithAuthCode($_GET['code']);
        $client->setAccessToken($accessToken);
        if (array_key_exists('error', $accessToken)) {
                throw new Exception(join(', ', $accessToken));
            }
        if (!file_exists(dirname($tokenPath))) {
            mkdir(dirname($tokenPath), 0700, true);
        }
        file_put_contents(__DIR__ .'/'.$tokenPath, json_encode($client->getAccessToken()));
    }


    if (file_exists($tokenPath)) {
        $accessToken = json_decode(file_get_contents($tokenPath), true);
        $client->setAccessToken($accessToken);
    }
    // If there is no previous token or it's expired.
    if ($client->isAccessTokenExpired()) {
        // Refresh the token if possible, else fetch a new one.
        if ($client->getRefreshToken()) {
            $client->fetchAccessTokenWithRefreshToken($client->getRefreshToken());
        } else {
            // Request authorization from the user.
            $authUrl = $client->createAuthUrl();
            if (isset($_GET['code']) ) {
                echo '<a href="https://www.polosoftech.com/staging/google-meet/">Refresh</a>';//after get new access_token and page refresh  
            } else {
                echo '<a href="'.$authUrl.'">Click here to login: '.$authUrl.'</a>';
            }
            //print 'Enter verification code: ';
            $authCode = trim(fgets(STDIN));

            // Exchange authorization code for an access token.
            $accessToken = $client->fetchAccessTokenWithAuthCode($authCode);
            $client->setAccessToken($accessToken);

            // Check to see if there was an error.
            if (array_key_exists('error', $accessToken)) {
                throw new Exception(join(', ', $accessToken));
            }
        }
        // Save the token to a file.
        if (!file_exists(dirname($tokenPath))) {
            mkdir(dirname($tokenPath), 0700, true);
        }
        file_put_contents($tokenPath, json_encode($client->getAccessToken()));
    }
   
    return $client;
}


// Get the API client and construct the service object.
$client = getClient();
$service = new Calendar($client);
if (isset($_GET['code']) ) {
    header("Location:https://www.polosoftech.com/staging/google-meet/");//after get new access_token and page refresh   
}
function gettime($data = null)
{
 if($data==null){
  return null;
 } else {
  $ex_=explode("T",$data);
  $ex_n = explode("+",$ex_[1]);
  return date("g:i:s A", strtotime($ex_n[0]));
 }
}
function getTimezoneOffset($timezone = 'Asia/Kolkata'){ 
  $current   = timezone_open($timezone); 
  $utcTime  = new \DateTime('now', new \DateTimeZone('UTC')); 
  $offsetInSecs =  timezone_offset_get($current, $utcTime); 
  $hoursAndSec = gmdate('H:i', abs($offsetInSecs)); 
  return stripos($offsetInSecs, '-') === false ? "+{$hoursAndSec}" : "-{$hoursAndSec}"; 
} 
function setemail($var = null)
{
    if($var==null){
        return 0;
    }
    if(count($var) <= 0){
        return 0;
    } else{
        $emails=array();
        foreach($var as $key=>$val){ 
            $emails[]=$val['email'];
        } 
        return implode(",",$emails);
    }
}
$timezone_offset = getTimezoneOffset('Asia/Kolkata'); 
$timezone_offset = !empty($timezone_offset)?$timezone_offset:'07:00'; 
$events = array();
try{
    $calendarId = 'primary';
    $optParams = array(
        'maxResults' => 10,
        'orderBy' => 'startTime',
        'singleEvents' => true,
        'timeMin' => date('c'),
    );
    //'timeMin' => "0000-01-01T19:38:58+02:00",
    $results = $service->events->listEvents($calendarId, $optParams);
    $events = $results->getItems();
foreach($events as $K=>$V){
$sql24="SELECT COUNT(id) AS `checktotal` FROM `google-meet` WHERE html_link='".$V['htmlLink']."'";
foreach($dbConnection->query($sql24, PDO::FETCH_ASSOC) as $row);
    if($row['checktotal'] <= 0) {
        $sql="INSERT INTO `google-meet` SET `eid`='".$V->getId()."',`summary`='".$V->getSummary()."',`location`='".$V->getLocation()."',`description`='".$V->getDescription()."',`attendees`='".setemail($V->getAttendees())."',`start_date_time`='".$V->getStart()->dateTime."',`end_date_time`='".$V->getEnd()->dateTime."',`html_link`='".$V['htmlLink']."',`hangout_link`='".$V['hangoutLink']."'";
        $query_insert = $dbConnection->prepare($sql);
        $query_insert->execute();
    } else {
        $sq3l="UPDATE `google-meet` set `eid`='".$V->getId()."',`summary`='".$V->getSummary()."',`location`='".$V->getLocation()."',`description`='".$V->getDescription()."',`attendees`='".setemail($V->getAttendees())."',`start_date_time`='".$V->getStart()->dateTime."',`end_date_time`='".$V->getEnd()->dateTime."',`html_link`='".$V['htmlLink']."',`hangout_link`='".$V['hangoutLink']."' WHERE html_link='".$V['htmlLink']."'"; 
        $query_insert = $dbConnection->prepare( $sq3l );
        $query_insert->execute(); 
    }
}
} catch(Exception $e) {
    echo 'Message: ' .$e->getMessage();
}


if(isset($_POST['addevent'])){
    $date = date("Y-m-d", strtotime($_POST['date']));
    $starttime = $_POST['starttime'].":00";
    $endtime = $_POST['endtime'].":00";
    $summary = $_POST['summary'];
    $location = $_POST['location'];
    $description = $_POST['description'];
  try{
  $event = new Google_Service_Calendar_Event(array(
      'summary' => $summary,
      'location' => $location,
      'description' => $description,
      'start' => array(
        'dateTime' => $date.'T'.$starttime.$timezone_offset,
        'timeZone' => 'Asia/Kolkata',
      ),
      'end' => array(
        'dateTime' => $date.'T'.$endtime.$timezone_offset,
        'timeZone' => 'Asia/Kolkata',
      ),
      'recurrence' => array(
        'RRULE:FREQ=DAILY;COUNT=1'
      ),
      'attendees' => array(
        array('email' => 'bidyutpolosoft38@gmail.com'),
        array('email' => 'vidyut.star006@gmail.com'),
      ),
      'reminders' => array(
        'useDefault' => FALSE,
        'overrides' => array(
          array('method' => 'email', 'minutes' => 24 * 60),
          array('method' => 'popup', 'minutes' => 10),
        ),
      ),
      "conferenceData" => array(
          "createRequest" => array(
            "conferenceSolutionKey" => array(
              "type" => "hangoutsMeet"
            ),
            "requestId" => "123"
          )
        ),
        "colorId"=>10
    ));
    $event = $service->events->insert('primary', $event, ['conferenceDataVersion' => 1]);
    $link = $event->htmlLink;
    $eid = $event->getId();
    // $summary = $event->getSummary();
    // $location = $event->getLocation();
    // $description = $event->getDescription();
    // $attendees = setemail($V->getAttendees());
    // $start_date_time = $event->getStart()->dateTime;
    // $end_date_time = $event->getEnd()->dateTime;
    // $html_link = $event['htmlLink'];
    // $hangout_link = $event['hangoutLink'];
    // $sql="INSERT INTO `google-meet` SET `eid`='".$eid."',`summary`='". $summary."',`location`='".$location."',`description`='".$description."',`attendees`='".$attendees."',`start_date_time`='".$start_date_time."',`end_date_time`='".$end_date_time."',`html_link`='".$html_link."',`hangout_link`='".$hangout_link."'";
    // $query_insert = $dbConnection->prepare($sql);
    // $query_insert->execute();
   header("Location:https://www.polosoftech.com/staging/google-meet/?htmlLink=$link");
  } catch(Exception $e) {
      echo 'Message: ' .$e->getMessage();
  }
}

if(isset($_GET['deleteevent'])){
    $id = $_GET['gmeetid'];
    if(!isset($_GET['gmeetid']) && $_GET['gmeetid']==""){
      header("Location:https://www.polosoftech.com/staging/google-meet/");
    }
    $service->events->delete('primary', $id);
    header("Location:https://www.polosoftech.com/staging/google-meet/?delete_status=Event successfully deleted");
 
}

?>
<!DOCTYPE html>
<html>

<head>
    <title>Google Meet</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        .register {
            background: -webkit-linear-gradient(left, #3931af, #00c6ff);
            margin-top: 3%;
            padding: 3%;
        }
        
        .register-left {
            text-align: center;
            color: #fff;
            margin-top: 4%;
        }
        
        .register-left input {
            border: none;
            border-radius: 1.5rem;
            padding: 2%;
            width: 60%;
            background: #f8f9fa;
            font-weight: bold;
            color: #383d41;
            margin-top: 30%;
            margin-bottom: 3%;
            cursor: pointer;
        }
        
        .register-right {
            background: #f8f9fa;
            border-top-left-radius: 10% 50%;
            border-bottom-left-radius: 10% 50%;
        }
        
        .register-left img {
            margin-top: 15%;
            margin-bottom: 5%;
            width: 50%;
            -webkit-animation: mover 2s infinite alternate;
            animation: mover 1s infinite alternate;
        }
        
        @-webkit-keyframes mover {
            0% {
                transform: translateY(0);
            }
            100% {
                transform: translateY(-20px);
            }
        }
        
        @keyframes mover {
            0% {
                transform: translateY(0);
            }
            100% {
                transform: translateY(-20px);
            }
        }
        
        .register-left p {
            font-weight: lighter;
            padding: 12%;
            margin-top: -9%;
        }
        
        .register .register-form {
            padding: 10%;
            margin-top: 10%;
        }
        
        .btnRegister {
            float: right;
            margin-top: 10%;
            border: none;
            border-radius: 1.5rem;
            padding: 2%;
            background: #0062cc;
            color: #fff;
            font-weight: 600;
            width: 50%;
            cursor: pointer;
        }
        
        .register .nav-tabs {
            margin-top: 3%;
            border: none;
            background: #0062cc;
            border-radius: 1.5rem;
            width: 28%;
            float: right;
        }
        
        .register .nav-tabs .nav-link {
            padding: 2%;
            height: 34px;
            font-weight: 600;
            color: #fff;
            border-top-right-radius: 1.5rem;
            border-bottom-right-radius: 1.5rem;
        }
        
        .register .nav-tabs .nav-link:hover {
            border: none;
        }
        
        .register .nav-tabs .nav-link.active {
            width: 100px;
            color: #0062cc;
            border: 2px solid #0062cc;
            border-top-left-radius: 1.5rem;
            border-bottom-left-radius: 1.5rem;
        }
        
        .register-heading {
            text-align: center;
            margin-top: 8%;
            margin-bottom: -15%;
            color: #495057;
        }
    </style>
</head>

<body>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<div class="container register">
        <div class="row">
            <div class="col-md-3 register-left">
              <img src="icon.png" alt="" />

            </div>
            <div class="col-md-9 register-right">
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <h3 class="register-heading">Create Event</h3>
                        <div class="row register-form">
                            <div class="col-md-12">
                                <form action="#" method="POST" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <input type="date" id="date" name="date" class="form-control" placeholder="Date *" required />
                                    </div>
                                    <div class="form-group">
                                        <input type="time" id="starttime" name="starttime" class="form-control" placeholder="Start Time *" required />
                                    </div>
                                    <div class="form-group">
                                        <input type="time" id="endtime" name="endtime" class="form-control" placeholder="End Time *" required />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Summary *" name="summary" id="summary" required/>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Location *" name="location" id="location" required/>
                                    </div>
                                    <div class="form-group">
                                        <textarea name="description" id="description" placeholder="Description *" class="form-control" required></textarea>

                                    </div>

                                    <div class="form-group">
                                        <input type="submit" class="btn btn-primary" id="addevent" name="addevent" value="Apply" />
                                    </div>
                                </form>
                            </div>


                        </div>

                    </div>

                </div>
            </div>
        </div>


    </div>
    
    <br>



    <div class="container">
        <div class="col-md-12 table-responsive">

        
<table>
  <tr>
    <th>Sl No</th>
    <th>Summery</th>
    <th>Location</th>
    <th>Description</th>
    <th>Attendees</th>
    <th>Start Date/Time</th>
    <th>End Date/Time</th>
    <th>Link</th>
    <th>Google Meet Link</th>
    <th>Action</th>

  </tr>
  <?php if (count($events) < 0) { ?>
    <tr>
    <td collspan="9">No upcoming events found.</td>
  </tr>
    <?php } else { ?>

    <?php $i=1; ?>
    <?php foreach ($events as $event) { ?>
    <tr>
        <td><?= $i++; ?></td>
        <td><textarea><?php printf($event->getSummary());?></textarea></td>
        <td><textarea><?php printf($event->getLocation());?></textarea></td>
        <td><textarea><?php echo $event->getDescription();?></textarea></td>
    <td>
      <ol>
        <?php if(count($event->getAttendees()) > 0) {?>
            <?php foreach($event->getAttendees() as $key=>$val){ ?>
                <li><?=$val['email']?></li>
        <?php }} ?>
      </ol>      
    </td>
        <td><?php echo date("Y/m/d", strtotime($event->getStart()->dateTime)); ?>,<?=gettime($event->getStart()->dateTime)?></td>
        <td><?php echo date("Y/m/d", strtotime($event->getEnd()->dateTime)); ?>,<?=gettime($event->getEnd()->dateTime)?></td>
        <td><a target="_blank" href="<?php printf($event['htmlLink']);?>">Link</a></td>
        <td><a target="_blank" href="<?php printf($event['hangoutLink']);?>">Google Meet</a></td>
        <td><a href="https://www.polosoftech.com/staging/google-meet/?deleteevent=1&gmeetid=<?=$event->getId();?>">Delete</a></td>
    </tr>
    <?php } ?>

    <?php } ?>
        
  
  
</table>
</div>
          </div>




          </body>
          
</html>