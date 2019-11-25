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
        <img src="logo.png" alt="RamPark" width="200" height="200">
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

        <button class="accordion">Knock Knock</button>
            <div class="panel">
                <p>Who's There</p>
            </div>

        <button class="accordion">Who</button>
            <div class="panel" >
                <p>who who?</p>
            </div>

        <button class="accordion">o.o</button>
            <div class="panel">
                <p>What are you, an owl?</p>
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