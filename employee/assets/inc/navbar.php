<?php
   /**
    *Server side code to get details of single passenger using id 
    */
    $aid=$_SESSION['emp_id'];
    $ret="select * from orrs_employee where emp_id=?";//fetch details of pasenger
    $stmt= $mysqli->prepare($ret) ;
    $stmt->bind_param('i',$aid);
    $stmt->execute() ;//ok
    $res=$stmt->get_result();
    //$cnt=1;
    while($row=$res->fetch_object())
    {
?>
    <nav class="navbar navbar-expand fixed-top be-top-header" style="background: transparent; color:#fff !important;">
        <div class="container-fluid">
          <div class="be-navbar-header"><a class="navbar-brand" href="emp-dashboard.php"></a>
          </div>
          <div class="page-title" style=" color:#fff !important;"><span>
          
          <?php 
          $welcome_string="Hello"; 
          $numeric_date=date("G");
          if($numeric_date>=0&&$numeric_date<=11) 
          $welcome_string="Good Morning!"; 
          else if($numeric_date>=12&&$numeric_date<=17) 
          $welcome_string="Good Afternoon!"; 
          else if($numeric_date>=18&&$numeric_date<=23) 
          $welcome_string="Good Evening!"; 
          echo "$welcome_string"; 
          ?>
          
          <?php echo $row->emp_uname;?></span></div>
          <div class="be-right-navbar">
            <ul class="nav navbar-nav float-right be-user-nav">
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-expanded="false"><img src="assets/img/profile/<?php echo $row->emp_dpic;?>" alt="Avatar"><span class="user-name"></span></a>
                <div class="dropdown-menu" role="menu">     
                  <a class="dropdown-item" href="emp-profile.php"><span class="icon mdi mdi-face"></span>Account</a><a class="dropdown-item" href="emp-logout.php"><span class="icon mdi mdi-power"></span>Logout</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
<?php }?>