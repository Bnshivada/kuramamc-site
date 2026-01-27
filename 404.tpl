{include file='header.tpl'}
<style>
#particles-js {
    position: absolute;
    height: var(--particle-height);
    margin: 0 auto;
    left: 0;
    right: 0;
    margin-left: auto;
    margin-right: auto;
    pointer-events: none;
    width: 100%;
}

@media only screen and (max-width: 1105px) {
	#particles-js {
		width: 100%;
		display: block;
	}
}

#error-404 .ui.buttons button.ui.primary.button {
    margin-right: 20px;
}

.ui.buttons .button:last-child {
    border-radius: .28571429rem;
}

.ui.buttons .button:first-child {
    border-radius: .28571429rem;
}
</style>
<div id="particles-js"></div>
    <div class="ui container" id="error-404">
      <div class="ui segment">
        <h2 class="ui header">{$404_TITLE}</h2>
        <div class="ui divider"></div>
        <p>{$CONTENT}</p>
        <div class="ui buttons">
          <button class="ui primary button" onclick="javascript:history.go(-1)">{$BACK}</button>
          
          <a class="ui positive button" href="{$SITE_HOME}">{$HOME}</a>
        </div>
        <div class="ui divider"></div>
        <p>{$ERROR}</p>
      </div>
    </div>
<script type="text/javascript">
{literal}
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
 {/literal}
 </script>
  </body>
</html>