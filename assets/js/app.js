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

  // Older stable release picker (on the download page)
  const releaseVersionSelect = document.getElementById('older-release-version');
  if (releaseVersionSelect) {
    const releaseOsSelect = document.getElementById('older-release-os');
    const releaseDownloadButton = document.getElementById('older-release-download');

    // Pre-select the operating system based on the visitor's platform
    const platform = (navigator.userAgent + ' ' + (navigator.platform || '')).toLowerCase();
    if (platform.indexOf('win') !== -1) {
      releaseOsSelect.value = 'win';
    } else if (platform.indexOf('mac') !== -1) {
      releaseOsSelect.value = 'macosx';
    } else {
      releaseOsSelect.value = 'linux';
    }

    // Only enable the Apple Silicon option for versions with a macOS arm64
    // package (see the "data-macos-arm64" attribute set in download.markdown).
    // The browser cannot reliably tell Apple Silicon from Intel Macs, so
    // macOS visitors are pre-selected the Intel package above.
    const arm64Option = releaseOsSelect.querySelector('option[data-arch="arm64"]');
    const updateArm64Option = () => {
      const selectedVersion = releaseVersionSelect.selectedOptions[0];
      const available = !!selectedVersion && selectedVersion.hasAttribute('data-macos-arm64');
      arm64Option.disabled = !available;
      arm64Option.title = available ? '' : 'No Apple Silicon package is available for this version';
      if (!available && arm64Option.selected) {
        releaseOsSelect.value = 'macosx';
      }
    };
    releaseVersionSelect.addEventListener('change', updateArm64Option);
    updateArm64Option();

    // The list of versions is generated at build time and rendered directly
    // into the <select> above (see download.markdown and the
    // slicer_stable_releases Jekyll plugin), so no request to the Slicer
    // packages API is made from the visitor's browser.

    // Navigate to the direct download URL for the selected version and OS
    releaseDownloadButton.addEventListener('click', (event) => {
      event.preventDefault();
      const version = releaseVersionSelect.value;
      const osOption = releaseOsSelect.selectedOptions[0];
      const os = osOption.dataset.os || osOption.value;
      const arch = osOption.dataset.arch;
      if (!version) {
        return;
      }
      window.location.href = 'https://download.slicer.org/download?version=' +
        encodeURIComponent(version) + '&os=' + encodeURIComponent(os) +
        (arch ? '&arch=' + encodeURIComponent(arch) : '') + '&stability=release';
    });
  }

  // Select tab with an ID matching the current URL's fragment
  $('div.tabs li:target').click();

  // Add event listener to select the expected tab when URL's fragment is externally updated
  window.addEventListener('hashchange', (event) => {
    $('div.tabs li:target').click();
    },
    /* useCapture */ false
  );

});