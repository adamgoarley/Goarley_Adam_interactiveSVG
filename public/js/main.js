(() => {
    // try to get the object and do stuff 
    const seeMoreButtons = document.querySelectorAll('.see-more'),
      popOver = document.querySelector('.popover');

    const waypoint = new Waypoint({
        // what element the wayo=point is looking for 
        // the handler will fire when it scrolls into view
        element: document.getElementById('mirroless'),
        // what should we do when we hit the way point?? this is up to you
        // you can trigger animation, do an ajax call... whatever
        handler: function(direction) {
          console.log('Scrolled to waypoint!')
          // this.element.innerHTML += `<p>ADDED WITH WAYPOINTS! we are scrolling ${direction}</p>`;
        }
    })

    const waypoint2 = new Waypoint({
        element: document.getElementById('polaroid'),
        handler: function(direction) {
          console.log('Scrolled to waypoint 3!');
        },

        offset: 200
    })
    
    // function buildPopover(beerdata, el) {
    //   popOver.querySelector(".ipa-rating").textContent = `IPA Rathing: ${beerdata.Iparating}`;
    //   popOver.querySelector(".ratings").textContent = `Average Rathing: ${beerdata.ratings}`;
    //   popOver.querySelector(".beer-description").textContent = beerdata.description;

    //   popOver.classList.add('show-popover');
    //   el.appendChild(popOver);
    // }

    function buildPopover(beerdata, el) {
      popOver.querySelector(".point1").textContent = `1 ${beerdata.point1}`;
      popOver.querySelector(".point2").textContent = `2 ${beerdata.point2}`;
      popOver.querySelector(".point3").textContent = `3 ${beerdata.point3}`;

      popOver.classList.add('show-popover');
      el.parentNode.appendChild(popOver);
    }

    // run the fetch API and the DB data
    function fetchData() {
      let targetEl = this, 
        url = `/svgdata/${this.dataset.target}`;
        
        fetch(url)
        .then(res => res.json())
        .then(data => {
            console.log(data);

            // populate the popover
            buildPopover(data, targetEl);
        })
        .catch((err) => console.log(err));
    }

    const svgGraphic = document.querySelector('.svg-wrapper');

    // svgGraphic.addEventListener("click", () => {
    //     console.log(this);
    // })

    seeMoreButtons.forEach(button => button.addEventListener("click", fetchData));

    // -----------------------------Animation----------------------------------

    // console.log("hello!");

    // // var tl = new TimelineMax();
    // // $('.play').click(function() {
    // //   tl.from('#bottom', 0.5, {scaleY: 0, transformOrigin: "bottom", ease: Power2.easeOut})
    // // })
    
    // const hamburger = document.querySelector('#bottom')

    // TweenMax.from(hamburger, 2, {x: 100});
    

})();