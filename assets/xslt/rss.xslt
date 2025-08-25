<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" encoding="utf-8" />
<xsl:template match="/rss">
	<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html &gt;</xsl:text>
	<html>
	<head>
		<xsl:text disable-output-escaping="yes"><![CDATA[
		<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>RSS Feed (Styled)</title>

    <link rel="stylesheet" type="text/css" href="https://www.hpc-carpentry.org/assets/css/styles_feeling_responsive.css">

  

	<script src="https://www.hpc-carpentry.org/assets/js/modernizr.min.js"></script>

        <link href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i|Roboto:400,400i,700,700i&display=swap" rel="stylesheet">

	<!-- Search Engine Optimization -->
	<meta name="description" content="HPC Carpentry is a set of teaching materials designed to help new users take advantage of high-performance computing systems. No prior computational experience is required - these lessons are ideal for either an in-person workshop or independent study.">
	
	
	
	
	
	
	<link rel="canonical" href="https://www.hpc-carpentry.org/assets/xslt/rss.xslt">


	<!-- Facebook Open Graph -->
	<meta property="og:title" content="RSS Feed (Styled)">
	<meta property="og:description" content="HPC Carpentry is a set of teaching materials designed to help new users take advantage of high-performance computing systems. No prior computational experience is required - these lessons are ideal for either an in-person workshop or independent study.">
	<meta property="og:url" content="https://www.hpc-carpentry.org/assets/xslt/rss.xslt">
	<meta property="og:locale" content="en_EN">
	<meta property="og:type" content="website">
	<meta property="og:site_name" content="HPC Carpentry">

	
	<meta property="og:image" content="http://www.hpc-carpentry.org/images/HPC-Carpentry-opengraph.png">
	<meta property="og:image:width" content="1200">
	<meta property="og:image:height" content="630">
	

	


	

	<link type="text/plain" rel="author" href="https://www.hpc-carpentry.org/humans.txt">

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>

	

	

	<link rel="icon" sizes="32x32" href="https://www.hpc-carpentry.org/assets/img/favicon-32x32.png">

	<link rel="icon" sizes="192x192" href="https://www.hpc-carpentry.org/assets/img/android-chrome-192x192.png">

	<link rel="apple-touch-icon-precomposed" sizes="180x180" href="https://www.hpc-carpentry.org/assets/img/apple-touch-icon.png">

	<link rel="apple-touch-icon-precomposed" sizes="152x152" href="https://www.hpc-carpentry.org/assets/img/apple-touch-icon-152x152.png">

	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://www.hpc-carpentry.org/assets/img/apple-touch-icon-144x144.png">

	<link rel="apple-touch-icon-precomposed" sizes="120x120" href="https://www.hpc-carpentry.org/assets/img/apple-touch-icon-120x120.png">

	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://www.hpc-carpentry.org/assets/img/apple-touch-icon-114x114.png">

	
	<link rel="apple-touch-icon-precomposed" sizes="76x76" href="https://www.hpc-carpentry.org/assets/img/apple-touch-icon-76x76.png">

	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://www.hpc-carpentry.org/assets/img/apple-touch-icon-72x72.png">

	<link rel="apple-touch-icon-precomposed" href="https://www.hpc-carpentry.org/assets/img/apple-touch-icon.png">	

	<meta name="msapplication-TileImage" content="https://www.hpc-carpentry.org/assets/img/mstile-150x150.png">

	<meta name="msapplication-TileColor" content="#ffffff">
        

	<link rel="manifest" href="https://www.hpc-carpentry.org/assets/img/site.webmanifest">
	<link rel="mask-icon" href="https://www.hpc-carpentry.org/assets/img/safari-pinned-tab.svg" color="#5bbad5">
  	<meta name="theme-color" content="#ffffff">


	

	<!-- Adding Font Awesome -->
    <script src="https://kit.fontawesome.com/3a6fac633d.js" crossorigin="anonymous"></script>



        <!-- mailchimp -->
        <link href="https://cdn-images.mailchimp.com/embedcode/horizontal-slim-10_7.css" rel="stylesheet" type="text/css">
        <style type="text/css">
          #mc_embed_signup{background:#fff; clear:left; font:14px; width:100%;}
          /* Add your own MailChimp form style overrides in your site stylesheet or in this style block.
          We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
        </style>
        <style type="text/css">
          #mc-embedded-subscribe-form input[type=checkbox]{display: inline; width: auto;margin-right: 10px;}
          #mergeRow-gdpr {margin-top: 20px;}
          #mergeRow-gdpr fieldset label {font-weight: normal;}
          #mc-embedded-subscribe-form .mc_fieldset{border:none;min-height: 0px;padding-bottom:0px;}
        </style>

<!-- CSS overrides -->
	<link rel="stylesheet" type="text/css" href="https://www.hpc-carpentry.org/assets/css/extras.css">

		]]></xsl:text>
	</head>
	<body id="top-of-page">
		<xsl:text disable-output-escaping="yes"><![CDATA[
		
<div id="navigation" class="sticky">
  <nav class="top-bar" role="navigation" data-topbar>
    <ul class="title-area">
      <li class="name">
      <h1 class="show-for-small-only"><a href="https://www.hpc-carpentry.org"> HPC Carpentry</a></h1>
    </li>
       <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
      <li class="toggle-topbar menu-icon"><a href="#"><span>Nav</span></a></li>
    </ul>
    <section class="top-bar-section">

      <ul class="right">
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a  href="https://www.hpc-carpentry.org/search/">Search</a></li>

            
            
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a  href="https://www.hpc-carpentry.org/contact/">Contact</a></li>

            
            
          
        
        
      </ul>

      <ul class="left">
        

              

          
          

            
            
              <li><a  href="https://www.hpc-carpentry.org/">Home</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a  href="https://www.hpc-carpentry.org/learn/">Learn</a>

                  <ul class="dropdown">
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/community-lessons/">Our Lessons</a></li>
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/upcoming-workshops/">Upcoming Workshops</a></li>
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/past-workshops/">Past Workshops</a></li>
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/register-workshop/">Register Workshop</a></li>
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/request-workshop/">Request Workshop</a></li>
                    
                  </ul>

              </li>
              <li class="divider"></li>
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a  href="https://www.hpc-carpentry.org">Teach</a>

                  <ul class="dropdown">
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/audience/">Who Attends Workshops?</a></li>
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/involved-lessons/">Help Develop Lessons</a></li>
                    
                  </ul>

              </li>
              <li class="divider"></li>
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a  href="https://www.hpc-carpentry.org/about/">About Us</a>

                  <ul class="dropdown">
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/values/">Our Values</a></li>
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/maintainers/">Our Maintainers</a></li>
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/governance/">Governance</a></li>
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/task-forces/">Task Forces</a></li>
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/testimonials/">Testimonials</a></li>
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/code-of-conduct/">Code of Conduct</a></li>
                    
                  </ul>

              </li>
              <li class="divider"></li>
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a  href="https://www.hpc-carpentry.org/connect/">Connect</a>

                  <ul class="dropdown">
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/help-wanted-issues/">Help Wanted!</a></li>
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/blog/">Blog</a></li>
                    

                      

                      <li><a  href="https://twitter.com/hpccarpentry/" target="_blank">Twitter</a></li>
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/community/#hpc-carpentry-calendar">Events Calendar</a></li>
                    

                      

                      <li><a  href="https://www.hpc-carpentry.org/regionalcoordinators/">In Your Region</a></li>
                    
                  </ul>

              </li>
              <li class="divider"></li>
            
          
        

              

          
          
        

              

          
          
        
        
      </ul>
    </section>
  </nav>
</div><!-- /#navigation -->

		

<div id="masthead-no-image-header">
	<div class="row">
		<div class="small-12 columns">
			<a id="logo" href="https://www.hpc-carpentry.org/" title="HPC Carpentry – Teaching basic skills for high-performance computing.">
				<img src="https://www.hpc-carpentry.org/assets/img/hpc-carpentry.svg" alt="HPC Carpentry – Teaching basic skills for high-performance computing.">
			</a>
		</div><!-- /.small-12.columns -->
	</div><!-- /.row -->
</div><!-- /#masthead -->











		


<div class="alert-box warning text-center"><p>This <a href="https://en.wikipedia.org/wiki/RSS" target="_blank">RSS feed</a> is meant to be used by <a href="https://en.wikipedia.org/wiki/Template:Aggregators" target="_blank">RSS reader applications and websites</a>.</p>
</div>



		]]></xsl:text>
		<header class="t30 row">
	<p class="subheadline"><xsl:value-of select="channel/description" disable-output-escaping="yes" /></p>
	<h1>
		<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="channel/link" />
			</xsl:attribute>
			<xsl:value-of select="channel/title" disable-output-escaping="yes" />
		</xsl:element>
	</h1>
</header>
<ul class="accordion row" data-accordion="">
	<xsl:for-each select="channel/item">
		<li class="accordion-navigation">
			<xsl:variable name="slug-id">
				<xsl:call-template name="slugify">
					<xsl:with-param name="text" select="guid" />
				</xsl:call-template>
			</xsl:variable>
			<xsl:element name="a">
				<xsl:attribute name="href"><xsl:value-of select="concat('#', $slug-id)"/></xsl:attribute>
				<xsl:value-of select="title"/>
				<br/>
				<small><xsl:value-of select="pubDate"/></small>
			</xsl:element>
			<xsl:element name="div">
				<xsl:attribute name="id"><xsl:value-of select="$slug-id"/></xsl:attribute>
				<xsl:attribute name="class">content</xsl:attribute>
				<h1>
					<xsl:element name="a">
						<xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
						<xsl:value-of select="title"/>
					</xsl:element>
				</h1>
				<xsl:value-of select="description" disable-output-escaping="yes" />
			</xsl:element>
		</li>
	</xsl:for-each>
</ul>

		<xsl:text disable-output-escaping="yes"><![CDATA[
		    <div id="up-to-top" class="row">
      <div class="small-12 columns" style="text-align: right;">
        <a class="iconfont" href="#top-of-page">&#xf108;</a>
      </div><!-- /.small-12.columns -->
    </div><!-- /.row -->


    <footer id="footer-content" class="bg-grau">
      <div id="footer">
        <div class="row">
          <div class="medium-6 large-5 columns">
            <h5 class="shadow-black">About HPC Carpentry</h5>

            <p class="shadow-black">
              HPC Carpentry is a set of teaching materials designed to help new users take advantage of high-performance computing systems. No prior computational experience is required - these lessons are ideal for either an in-person workshop or independent study.
              <a href="https://www.hpc-carpentry.org/about/">More ›</a>
            </p>
          </div><!-- /.large-6.columns -->


          <div class="small-6 medium-3 large-3 large-offset-1 columns">
            
              
                <h5 class="shadow-black">Services</h5>
              
            
              
            
              
            
              
            
              
            

              <ul class="no-bullet shadow-black">
		
		
		
		
		
		
                
                  <li >
                    <a href="https://www.hpc-carpentry.org/contact/"  title="Contact">Contact</a>
                  </li>
              
		
		
                
                  <li >
                    <a href="https://www.hpc-carpentry.org/feed.xml"  title="Subscribe to RSS Feed">RSS</a>
                  </li>
              
		
		
                
                  <li >
                    <a href="https://www.hpc-carpentry.org/atom.xml"  title="Subscribe to Atom Feed">Atom</a>
                  </li>
              
		
		
                
                  <li >
                    <a href="https://www.hpc-carpentry.org/sitemap.xml"  title="Sitemap for Google Webmaster Tools">sitemap.xml</a>
                  </li>
              
              </ul>
          </div><!-- /.large-4.columns -->


          <div class="small-6 medium-3 large-3 columns">
            
              
                <h5 class="shadow-black">Links</h5>
              
            
              
            
              
            
              
            

            <ul class="no-bullet shadow-black">
              
	      
		
		
	      
		

              
                <li >
                  <a href="https://www.hpc-carpentry.org/code-of-conduct/"  title="Code of Conduct">Our Code of Conduct</a>
                </li>
            
	      
		

              
                <li >
                  <a href="https://www.hpc-carpentry.org/privacy/"  title="Privacy Policy">Our Privacy Policy</a>
                </li>
            
	      
		

              
                <li >
                  <a href="https://www.hpc-carpentry.org/other-resources/"  title="Other Resources">Other resources</a>
                </li>
            
            </ul>
          </div><!-- /.large-3.columns -->
        </div><!-- /.row -->

      </div><!-- /#footer -->


      <div id="subfooter">
        <nav class="row">
          <section id="subfooter-left" class="small-12 medium-6 columns credits">
            
          </section>

          <section id="subfooter-right" class="small-12 medium-6 columns">
            <ul class="inline-list social-icons">
            
              <li><a href="https://github.com/hpc-carpentry"><i class="fab fa-github"></i></a></li>
            
              <li><a href="https://twitter.com/hpccarpentry"><i class="fab fa-twitter"></i></a></li>
            
              <li><a href="https://swc-slack-invite.herokuapp.com/"><i class="fab fa-slack"></i></a></li>
            
            </ul>
          </section>
        </nav>
      </div><!-- /#subfooter -->
    </footer>

		


<script src="https://www.hpc-carpentry.org/assets/js/javascript.min.js"></script>







<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-180687781-1', 'auto');
  ga('set', 'anonymizeIp', true);
  ga('send', 'pageview');

</script>



<!-- Only include mapping stuff if we're going to draw a map -->

<!-- page.map_url is "" -->
<!-- page.map_element is "" -->







		]]></xsl:text>
	</body>
	</html>
</xsl:template>
<xsl:template name="slugify">
	<xsl:param name="text" select="''" />
	<xsl:variable name="dodgyChars" select="' ,.#_-!?*:;=+|&amp;/\\'" />
	<xsl:variable name="replacementChar" select="'-----------------'" />
	<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
	<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
	<xsl:variable name="lowercased"><xsl:value-of select="translate( $text, $uppercase, $lowercase )" /></xsl:variable>
	<xsl:variable name="escaped"><xsl:value-of select="translate( $lowercased, $dodgyChars, $replacementChar )" /></xsl:variable>
	<xsl:value-of select="$escaped" />
</xsl:template>
</xsl:stylesheet>
