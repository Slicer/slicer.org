---
title: Download 3D Slicer
subtitle:
layout: page
permalink:
show_sidebar: false
animated_navbar: false
download_mock:
  stable:
    version: 4.11.20210226
    revision: 29738
    built: 2021-02-27
    url: "javascript: alert('download stable package');"
  preview:
    version: 4.13.0
    revision: 30057
    built: 2021-07-18
    url: "javascript: alert('download preview package');"
---
<div class="download" markdown="0">


    <div class="box callout">
    You are one click away from downloading 3D Slicer, a free and open-source platform for analyzing and understanding medical image data.
    Created through multiple grants from the US National Institutes of Health (NIH) over almost two decades, Slicer brings powerful medical image processing, visualization, and data analysis tools within reach of everyone.
    <br/><br/>
    Slicer is built and tested on many hardware and software platforms. 3D Slicer runs on modern Windows, macOS, and a variety of Linux distributions.<br/>
    Read about <a href="https://slicer.readthedocs.io/en/latest/user_guide/getting_started.html#system-requirements">system requirements</a>.
    </div>

    <!-- This section contains jinja2 templates intended to be used in https://github.com/Slicer/slicer_download -->
    <h2>Installers</h2>
    <div class="columns is-mobile is-centered">
    <table class="installers column is-three-quarters">
        <thead>
            <tr>
                <th width="200"></th>
                <th width="225">Windows</th>
                <th width="225">macOS</th>
                <th width="225">Linux</th>
            </tr>
        </thead>
        <tbody>
        <tr>
            <th>Stable Release<br /><span class="table-subheader"><a href="https://www.slicer.org/wiki/Documentation/Nightly/FAQ/General#Where_can_I_download_Slicer.3F">access older releases</a></span></th>
            <td><a href="{% if site.slicer_download_mock_enabled %}{{ page.download_mock.stable.url }}{% else %}{% raw %}{{R.win.release.download_url}}{% endraw %}{% endif %}" class="button-download expanded hollow">
                    <span class="header">version {% if site.slicer_download_mock_enabled %}{{ page.download_mock.stable.version }}{% else %}{% raw %}{{R.win.release.version}}{% endraw %}{% endif %}</span>
                    <br/>revision {% if site.slicer_download_mock_enabled %}{{ page.download_mock.stable.revision }}{% else %}{% raw %}{{R.win.release.revision}}{% endraw %}{% endif %}
                    <br/>built {% if site.slicer_download_mock_enabled %}{{ page.download_mock.stable.built }}{% else %}{% raw %}{{R.win.release.build_date_ymd}}{% endraw %}{% endif %}
                </a>
            </td>
            <td><a href="{% if site.slicer_download_mock_enabled %}{{ page.download_mock.stable.url }}{% else %}{% raw %}{{R.macosx.release.download_url}}{% endraw %}{% endif %}" class="button-download expanded hollow">
                    <span class="header">version {% if site.slicer_download_mock_enabled %}{{ page.download_mock.stable.version }}{% else %}{% raw %}{{R.macosx.release.version}}{% endraw %}{% endif %}</span>
                    <br/>revision {% if site.slicer_download_mock_enabled %}{{ page.download_mock.stable.revision }}{% else %}{% raw %}{{R.macosx.release.revision}}{% endraw %}{% endif %}
                    <br/>built {% if site.slicer_download_mock_enabled %}{{ page.download_mock.stable.built }}{% else %}{% raw %}{{R.macosx.release.build_date_ymd}}{% endraw %}{% endif %}
                </a>
            </td>
            <td><a href="{% if site.slicer_download_mock_enabled %}{{ page.download_mock.stable.url }}{% else %}{% raw %}{{R.linux.release.download_url}}{% endraw %}{% endif %}" class="button-download expanded hollow">
                    <span class="header">version {% if site.slicer_download_mock_enabled %}{{ page.download_mock.stable.version }}{% else %}{% raw %}{{R.linux.release.version}}{% endraw %}{% endif %}</span>
                    <br/>revision {% if site.slicer_download_mock_enabled %}{{ page.download_mock.stable.revision }}{% else %}{% raw %}{{R.linux.release.revision}}{% endraw %}{% endif %}
                    <br/>built {% if site.slicer_download_mock_enabled %}{{ page.download_mock.stable.built }}{% else %}{% raw %}{{R.linux.release.build_date_ymd}}{% endraw %}{% endif %}
                </a>
            </td>
        </tr>
        <tr>
            <th>Preview Release</th>
            <td><a href="{% if site.slicer_download_mock_enabled %}{{ page.download_mock.preview.url }}{% else %}{% raw %}{{R.win.nightly.download_url}}{% endraw %}{% endif %}" class="button-download expanded hollow warning">
                    <span class="header">version {% if site.slicer_download_mock_enabled %}{{ page.download_mock.preview.version }}{% else %}{% raw %}{{R.win.nightly.version}}{% endraw %}{% endif %}</span>
                    <br/>revision {% if site.slicer_download_mock_enabled %}{{ page.download_mock.preview.revision }}{% else %}{% raw %}{{R.win.nightly.revision}}{% endraw %}{% endif %}
                    <br/>built {% if site.slicer_download_mock_enabled %}{{ page.download_mock.preview.built }}{% else %}{% raw %}{{R.win.nightly.build_date_ymd}}{% endraw %}{% endif %}</a></td>
            <td><a href="{% if site.slicer_download_mock_enabled %}{{ page.download_mock.preview.url }}{% else %}{% raw %}{{R.macosx.nightly.download_url}}{% endraw %}{% endif %}" class="button-download expanded hollow warning">
                    <span class="header">version {% if site.slicer_download_mock_enabled %}{{ page.download_mock.preview.version }}{% else %}{% raw %}{{R.macosx.nightly.version}}{% endraw %}{% endif %}</span>
                    <br/>revision {% if site.slicer_download_mock_enabled %}{{ page.download_mock.preview.revision }}{% else %}{% raw %}{{R.macosx.nightly.revision}}{% endraw %}{% endif %}
                    <br/>built {% if site.slicer_download_mock_enabled %}{{ page.download_mock.preview.built }}{% else %}{% raw %}{{R.macosx.nightly.build_date_ymd}}{% endraw %}{% endif %}</a></td>
            <td><a href="{% if site.slicer_download_mock_enabled %}{{ page.download_mock.preview.url }}{% else %}{% raw %}{{R.linux.nightly.download_url}}{% endraw %}{% endif %}" class="button-download expanded hollow warning">
                    <span class="header">version {% if site.slicer_download_mock_enabled %}{{ page.download_mock.preview.version }}{% else %}{% raw %}{{R.linux.nightly.version}}{% endraw %}{% endif %}</span>
                    <br/>revision {% if site.slicer_download_mock_enabled %}{{ page.download_mock.preview.revision }}{% else %}{% raw %}{{R.linux.nightly.revision}}{% endraw %}{% endif %}
                    <br/>built {% if site.slicer_download_mock_enabled %}{{ page.download_mock.preview.built }}{% else %}{% raw %}{{R.linux.nightly.build_date_ymd}}{% endraw %}{% endif %}</a></td>
        </tr>
    </tbody>
    </table>
    </div>
</div>
