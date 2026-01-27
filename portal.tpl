<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Template made for "server name" by Ipolotech.Com">
    <meta name="author" content="John @ Ipolotech.Com">
    <meta name="link" content="https://ipolotech.com">
	{if isset($FAVICON)}
	<link rel="shortcut icon" href="{$FAVICON}" type="image/x-icon" />
	{/if}
	
	<title>{$TITLE} • {$smarty.const.SITE_NAME}</title>	
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/clipboard@2/dist/clipboard.min.js"></script>
	<script src="https://unpkg.com/sweetalert@2.1.2/dist/sweetalert.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/particles.js/2.0.0/particles.min.js"></script>
{literal}
    <script>
        var clipboard = new ClipboardJS('.ipCopy');
        </script>
{/literal}

<style>
:root {
	--background-image: url(https://i.imgur.com/2ELc6qQ.png);
    --buttons-color: #27bfce;
    --border: #0e909d;
}

html, body {
    margin: 0;
    padding: 0;
    max-height: 100%;
    height: 100%;
    width: 100%;
    max-width: 100%;
    overflow-x: hidden;
}

body {
	background-color: #333;
    font-family: nunito,sans-serif;
    background: var(--background-image) no-repeat center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    backdrop-filter: blur(2px);
}
::-webkit-scrollbar {
    width: 8px;
    height: 30px;
}

::-webkit-scrollbar-corner {
    background-color: var(--main-color);
}


::selection {
    color: var(--text-color);
    background-color: var(--main-color);
}

a {
    color: #fff;
}

a:hover {
    color: #fff;
    text-decoration: none;
}
.logo {
    text-align: center;
    animation: dropin 2s ease-in-out, 5s floating 2s infinite ease-in-out;
    height: 35ch;
    margin-bottom: 25px;
}

 img {
    vertical-align: middle;
}
#particles-js {
    position: absolute;
    height: 800px;
    margin: 0 auto;
    left: 0;
    right: 0;
    margin-left: auto;
    margin-right: auto;
    pointer-events: none;
    width: 100%;
}
canvas {
    display: block;
    vertical-align: bottom;
}

@media only screen and (max-width: 1105px) {
	#particles-js {
		width: 100%;
		display: block;
	}
}
img {
    height: 360px;
}

@keyframes dropin {
    0% { transform: translate(0, -600px); }
    100%   { transform: translate(0, 0px); }    
	}
    
@keyframes fadeInDown {
   0% {
      opacity: 0;
      transform: translateY(-20px);
   }
   100% {
      opacity: 1;
      transform: translateY(0);
   }
} 

.fadeInDown {
    -webkit-animation-name: fadeInDown;
    animation-name: fadeInDown;
}
.animated.slow {
    -webkit-animation-duration: 2s;
    animation-duration: 2s;
}
.animated {
    -webkit-animation-duration: 1s;
    -webkit-animation-fill-mode: both;
    animation-duration: 1s;
    animation-fill-mode: both;
}

.fadeInUp {
    -webkit-animation-name: fadeInUp;
    animation-name: fadeInUp;
}
.animatedFadeInUp {
    opacity: 0
}
@keyframes fadeInUp {
    from {
        transform: translate3d(0,40px,0)
    }

    to {
        transform: translate3d(0,0,0);
        opacity: 1
    }
}

.swal-button:not([disabled]):hover {
    background-color: #f8780b;
}

@-webkit-keyframes fadeInUp {
    from {
        transform: translate3d(0,40px,0)
    }

    to {
        transform: translate3d(0,0,0);
        opacity: 1
    }
}

  .server-name {
    font-weight: 700;
    font-size: 1.75rem;
    font-family: nunito,sans-serif;
    color: #fff;
}
.players {
    font-family: oswald,sans-serif;
    color: #fff;
    letter-spacing: 2px;
    font-style: italic!important;
}
span#players-mc {
    font-weight: 700!important;
    margin-right: 7px;
}
.portal-links {
    margin: 30px 0;
    margin-top: 50px;
}
ul.links {
    list-style: none;
}
ul.links li {
    display: inline-block;
}
a.portal-link {
    display: block;
    font-size: 16px;
    padding: 10px;
    letter-spacing: 2px;
    margin: 0 10px;
    background: var(--buttons-color);
    border-bottom: 4px solid var(--border);
    padding: 18px 28px;
    box-shadow: 0 0 3px rgb(0 0 0 / 20%);
    border-radius: 4px;
    color: #fff;
    text-transform: uppercase;
    text-decoration: none;
    font-weight: 700;
    letter-spacing: 2px;
    transition: .25s;
    transform: scale(1);
    text-shadow: 0 0 2px rgb(0 0 0 / 25%);
}

a.portal-link:hover {
    transform: scale(1.05);
}
a.portal-link:focus {
    transform: scale(1.05);
}
.social-media {
    margin-top: 35px;
}
.social-media ul {
    list-style: none;
}
.hvr-grow {
  display: inline-block;
  vertical-align: middle;
  -webkit-transform: perspective(1px) translateZ(0);
  transform: perspective(1px) translateZ(0);
  box-shadow: 0 0 1px rgba(0, 0, 0, 0);
  -webkit-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-property: transform;
  transition-property: transform;
}
.hvr-grow:hover, .hvr-grow:focus, .hvr-grow:active {
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}
li.hvr-grow {
    display: inline-block;
}

.social-media ul li a {
    font-size: 20px;
    color: #fff;
    margin: 5px 20px;
    padding: 14px 10px;
    background: rgba(255,255,255,.15);
    display: block;
    height: 50px;
    width: 50px;
    border-radius: 50%;
    transition: .25s;
    transform: scale(1);
}
.social-text {
    font-weight: 500;
    color: rgba(255,255,255,.85);
    font-size: 14px;
    margin-top: 15px;
}
.copyright.container.text-center {
    color: #FFFFFF;
    margin-top: 15px;
    margin-bottom: 20px;
}
@media screen and (max-width: 992px;) {
    ul.links li {
    display: block;
    margin-bottom: 10px;
}
}

.swal-button {
    color: #fff;
    border: none;
    box-shadow: none;
    border-radius: 5px;
    font-weight: 600;
    font-size: 14px;
    padding: 10px 24px;
    margin: 0;
    cursor: pointer;
    background: #ff7f12;
}

@media (max-width: 768px) {
ul.links {
    list-style: none;
    display: grid;
}
.logo img {
    height: 200px;
}
ul.links li {
    display: inline-block;
    margin-bottom: 1ch;
}
}

.swal-overlay {
    position: fixed;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    text-align: center;
    font-size: 0;
    overflow-y: auto;
    background-color: transparent;
    z-index: 10000;
    pointer-events: none;
    opacity: 0;
    transition: opacity .3s;
}
</style>
</head>
<body class="text-center" style="zoom: 1;">
<div class="container page cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
<div id="particles-js"></div>
  <div class="logo"><img src="{$LOGO_IMAGE}"></div>
  <div class="players-count text-center ipCopy" data-clipboard-text="play.hypixel.net"  onclick="serverjoin()">
  <div class="server-name">play.hypixel.net</div>
  <div class="players"><span id="players-mc"></span>Players Online</div>
  </div>
  <div class="portal-links animated fadeInUp">
  <ul class="links">
  <li><a href="/forum" class="portal-link" target="_blank">Forum</a></li>
  <li><a href="/bans" class="portal-link" target="_blank">Bans</a></li>
  <li><a href="/staff" class="portal-link" target="_blank">Staff</a></li>
  <li><a href="/store" class="portal-link" target="_blank">Store</a></li>
  </ul>
</div>

<div class="social-media">
<ul>
<li class="hvr-grow"><a href="#" target="_blank" class="animated fadeInLeft slow"><i class="fab fa-instagram"></i></a></li>
<li class="hvr-grow"><a href="#" target="_blank" class="animated fadeInLeft slow"><i class="fab fa-discord"></i></a></li>
<li class="hvr-grow"><a href="#" target="_blank" class="animated fadeInLeft slow"><i class="fab fa-facebook-square"></i></a></li>
<li class="hvr-grow"><a href="#" target="_blank" class="animated fadeInLeft slow"><i class="fab fa-telegram"></i></a></li>
</ul>
<div class="social-text">text</div>
</div>

<div class="copyright container text-center">
<span>© 2021 Copyright: Ipolotech</span>
</div>
</body>
  <script type="text/javascript">
{literal}
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script>
           $(function() {
            CyversMC("play.hypixel.net", document.querySelector("#players-mc"));           
        });
</script>
<script>
        function CyversMC(ip, element) {
            fetch(`https://mc-api.net/v3/server/ping/${ip}`)
            .then(res => res.json())
            .then(data => element.innerHTML = data["players"]["online"])
        }
</script>
<script>
        particlesJS("particles-js", {
            "particles": {
                "number": {
                    "value": 300,
                    "density": {
                        "enable": true,
                        "value_area": 5000
                    }
                },
                "color": {
                    "value": "#27bfce"
                },
                "shape": {
                    "type": "circle",
                    "stroke": {
                        "width": 0,
                        "color": "#000000"
                    },
                    "polygon": {
                        "nb_sides": 4
                    },
                    "image": {
                        "src": "img/github.svg",
                        "width": 100,
                        "height": 100
                    }
                },
                "opacity": {
                    "value": 0.5,
                    "random": true,
                    "anim": {
                        "enable": false,
                        "speed": 1,
                        "opacity_min": 0.1,
                        "sync": false
                    }
                },
                "size": {
                    "value": 5,
                    "random": true,
                    "anim": {
                        "enable": true,
                        "speed": 5,
                        "size_min": 0,
                        "sync": false
                    }
                },
                "line_linked": {
                    "enable": false,
                    "distance": 500,
                    "color": "#ffffff",
                    "opacity": 0.4,
                    "width": 2
                },
                "move": {
                    "enable": true,
                    "speed": 3.8914764163227265,
                    "direction": "top",
                    "random": true,
                    "straight": false,
                    "out_mode": "out",
                    "bounce": false,
                    "attract": {
                        "enable": false,
                        "rotateX": 600,
                        "rotateY": 1200
                    }
                }
            },
            "interactivity": {
                "detect_on": "canvas",
                "events": {
                    "onhover": {
                        "enable": false,
                        "mode": "bubble"
                    },
                    "onclick": {
                        "enable": false,
                        "mode": "repulse"
                    },
                    "resize": true
                },
                "modes": {
                    "grab": {
                        "distance": 400,
                        "line_linked": {
                            "opacity": 0.5
                        }
                    },
                    "bubble": {
                        "distance": 400,
                        "size": 4,
                        "duration": 0.3,
                        "opacity": 1,
                        "speed": 3
                    },
                    "repulse": {
                        "distance": 200,
                        "duration": 0.4
                    },
                    "push": {
                        "particles_nb": 4
                    },
                    "remove": {
                        "particles_nb": 2
                    }
                }
            },
            "retina_detect": true
        });
        var count_particles, stats, update;
    </script>
<script>
   function serverjoin()
    {
        swal({
            title: "IP has been copied!",
            text: "You can join the server by adding the IP to your server list!",
            icon: "success",
            button: "Join Now",
        });
    }
    </script>
    
    <script>
        var clipboard = new ClipboardJS('.ipCopy');
        </script>
{/literal}
</script>
</html>