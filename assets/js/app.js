document.addEventListener('DOMContentLoaded', () => {

  // Get all "navbar-burger" elements
  const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  // Check if there are any navbar burgers
  if ($navbarBurgers.length > 0) {

    // Add a click event on each of them
    $navbarBurgers.forEach( el => {
      el.addEventListener('click', () => {

        // Get the target from the "data-target" attribute
        const target = el.dataset.target;
        const $target = document.getElementById(target);

        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        el.classList.toggle('is-active');
        $target.classList.toggle('is-active');

      });
    });
  }

  // Get all tab elements
  const tabs = document.querySelectorAll('.tabs li');
  const tabContentBoxes = document.querySelectorAll('#tab-content > div');

  // Add a click event on each of them
  tabs.forEach(tab => {
    tab.addEventListener('click', (event) => {

      event.preventDefault();

      // Skip if "clicked" tab is already active
      if ($('.tabs li.is-active').attr('id') === tab.id) {
        return;
      }

      tabs.forEach(item => item.classList.remove('is-active'));

      tab.classList.add('is-active');

      // Get the target from the "data-target" attribute
      const target = tab.dataset.target;

      // console.log(target);
      tabContentBoxes.forEach(box => {
        if (box.getAttribute('id') === target) {
          box.classList.remove('is-hidden');
        } else {
          box.classList.add('is-hidden');
        }
      });

      // Update URL's fragment to match the tab id
      // See https://lea.verou.me/2011/05/change-url-hash-without-page-jump/
      if(window.history.pushState) {
        window.history.pushState(null, null, '#' + tab.id);
      } else {
        window.location.hash = '#' + tab.id;
      }
      document.querySelector('div.tabs').scrollIntoView({behavior: 'smooth'});
    })
  });

  // Select tab with an ID matching the current URL's fragment
  $('div.tabs li:target').click();

  // Add event listener to select the expected tab when URL's fragment is externally updated
  window.addEventListener('hashchange', (event) => {
    $('div.tabs li:target').click();
    },
    /* useCapture */ false
  );

});