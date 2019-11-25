<!doctype html>
    <html>
        <head>
                    <!--
                        Filename: RamPark_home.html
                        Author: Deonarine Ricky Budhu
                    -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
                <title>RamPark: Parking Made Easy</title>  
                  <link href="rp_reset.css" rel="stylesheet">
                  <link href="rp_styles1.css" rel="stylesheet">  
                  <link href="rp_visual1.css" rel="stylesheet">  
                  <link href="RPD.css" rel="stylesheet">  
                  <link href="RP_FAQ_Style.css" rel="stylesheet"> 
        </head>

<body>
    <header>
        <div style="background-color: #006456; padding: 15px;">
        <img src="logo-infoSite.png" alt="RamPark" style="width: 50%; display: block; margin-left: auto; margin-right: auto;">
        </div>
            <nav class="horizontal" id="mainLinks">
                <ul>
	                <li><a href="RamPark_home.aspx">Home</a></li>
	                <li><a href="RP_Developers.aspx">Meet the Developers!</a></li>
	                <li><a href="RP_GettingStarted.aspx">Getting Started</a></li>
	                <li><a href="RP_FAQ.aspx">FAQ</a></li>
	                <li><a href="https://rampark.azurewebsites.net/">RamPark App</a></li>             
                </ul>
            </nav>
    </header>

<article>
    <header>
        <h1>RamPark FAQ </h1>
    </header>

        <button class="accordion">What is this application used for?</button>
            <div class="panel">
                <p>
                    This app was designed for college students to find spots in a reasonable amount of time. Students can queue on line for a
                    spot and will be alerted when one is found for them.
                </p>
            </div>

        <button class="accordion">How does this app work?</button>
            <div class="panel" >
                <p>
                    Both students leaving campus and just getting on campus are encouraged to use this app. Students entering the queue for a spot
                    will be matched with a student who is leaving their spot. Your personal Ram Points and your initial time joining the queue will
                    determine how quickly you get matched with a spot.
                </p>
            </div>

        <button class="accordion">How do I get a spot faster?</button>
            <div class="panel">
                <p>
                    Since your queue spot is determined mostly by your Ram Points, keeping them low should be a priority for you. This can be accomplished in
                    3 ways.
                    <br />
                    <br />
                    1) Arriving to your paired spot in a timely manor and being rated well by your paired driver.
                    <br />
                    <br />
                    2) Alerting the system that you are leaving your spot so other can be paired to it.
                    <br />
                    <br />
                    3) Alerting the campus PD of violations such as users stealing spots or your paired driver not waiting for you to trade spots.
                </p>
            </div>

    <script>
        var acc = document.getElementsByClassName("accordion");
        var i;

            for (i = 0; i < acc.length; i++) {
                acc[i].addEventListener("click", function() {
             this.classList.toggle("active");
             var panel = this.nextElementSibling;
                    if (panel.style.maxHeight) {
                        panel.style.maxHeight = null;
                    }
                    else {
                        panel.style.maxHeight = panel.scrollHeight + "px";
                    }
                });
            }
    </script>
</article>

    <footer>
        <nav class="vertical">
            <ul>
	            <li><a href="https://www.farmingdale.edu/" target="_blank">College Website</a></li>         
	            <li><a href="https://oasis.farmingdale.edu/pls/prod/twbkwbis.P_WWWLogin" target="_blank"> OASIS</a></li>
	            <li><a href="https://www.farmingdale.edu/directory.shtml" target="_blank"> Staff Directory</a></li>
	            <li><a href="https://www.farmingdale.edu/academics/academic-calendar.shtml" target="_blank">   Academic Calendar</a></li>
	            <li><a href="https://www.farmingdale.edu/academics/distance-learning/blackboard.shtml" target="_blank">Blackboard</a></li>            
            </ul>
        </nav>

        <nav class="vertical">      
        </nav>
            <div style="text-align:right;">
                <section>RamPark &copy; 2019 English (US)</section>
            </div>
    </footer>
</body>
</html>