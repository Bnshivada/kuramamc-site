// @license magnet:?xt=urn:btih:d3d9a9a6595521f9666a5e94cc830dab83b65699&dn=expat.txt Expat/MIT
function fixFooter() {
    var footerHeight = $("#footer").outerHeight() + "px";
    var wrapperHeight = "calc(100vh - " + footerHeight + ")";
    $("#wrapper").css({'min-height': wrapperHeight});
}

$(document).ready(fixFooter);
$(window).resize(fixFooter);
// @license-end

          $(function() {
            CyversMC("play.hypixel.net", document.querySelector("#cyvers-mc"));
            CyversDiscord("308240379247984650", document.querySelector("#cyvers-discord"));
            
        });

  function serverjoin()
    {
        swal({
            title: "IP has been copied!",
            text: "You can join the server by adding the IP to your server list!",
            icon: "success",
            button: "Join Now",
        });
    }

    var clipboard = new ClipboardJS('.ipCopy');

$(window).scroll(function() {
    if ($(this).scrollTop() >= 50) { 
        $('#return-to-top').fadeIn(200);
    } else {
        $('#return-to-top').fadeOut(200);
    }
});
$('#return-to-top').click(function() {
    $('body,html').animate({
        scrollTop : 0
    }, 500);
});

            function openMobile() {
                $(".dd-bg").addClass("active");
                $(".header-menu ul#cyvers-menu").addClass("open");
            }
            function closeMobile() {
                $(".dd-bg").removeClass("active");
                $(".header-menu ul#cyvers-menu").removeClass("open");
            }




   function login()
    {
        swal({
            title: "Login",
            text:"Enter",
            input:"Minecraft name",
            button: "Continue",
        });
    }

    var clipboard = new ClipboardJS('.login');
    



    $(function () {
      $("#preloader").addClass("loaded");
    });



   window.onload = function() {
       let preloader = document.getElementById('preloader');
       preloader.style.display = 'none';
   }


    

    
        jQuery(function(){
            var countdowns = $(".countdown-to");
            countdowns.each(function(){
               setInterval(function(ele) {
                   timeLeft = parseInt(ele.attr("data-countdown"));
                   if (timeLeft == 0) {
                       ele.html("Time Expired!");
                   } else {
                   timeLeft--;
                   ele.attr("data-countdown", timeLeft);
                  var days = Math.floor(timeLeft / (60 * 60 * 24));
                  var hours = Math.floor((timeLeft % (60 * 60 * 24)) / (60 * 60));
                  var minutes = Math.floor((timeLeft % (60 * 60)) / (60));
                  var seconds = Math.floor((timeLeft % 60));
                  ele.html(days + "d " + hours + "h " + minutes + "m " + seconds + "s");
                   }
               }, 1000, jQuery(this));
            });
        });

   
    

        function CyversMC(ip, element) {
            fetch(`https://mc-api.net/v3/server/ping/${ip}`)
            .then(res => res.json())
            .then(data => element.innerHTML = data["players"]["online"])
        }
        
                function CyversDiscord(id, element) {
            $.get(`https://discordapp.com/api/guilds/${id}/embed.json`, function (data) {
                element.innerHTML = data["presence_count"];
            });
        }



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

    

    

$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();
});


function myFunction() {

  document.getElementById("myDropdown").classList.toggle("show");

}

window.onclick = function(event) {

  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");

    var i;

    for (i = 0; i < dropdowns.length; i++) {

      var openDropdown = dropdowns[i];

      if (openDropdown.classList.contains('show')) {

        openDropdown.classList.remove('show');

      }

    }

  }

}