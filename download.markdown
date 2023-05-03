---
title: Download 3D Slicer
subtitle:
layout: page
permalink:
show_sidebar: false
animated_navbar: false
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
    <div class="columns is-mobile is-centered">
        <table class="installers column is-three-quarters">
            <thead>
                <tr>
                    <th width="200"></th>
                    <th width="225">
                        <img src="assets/img/platforms/windows-logo.svg" alt="Windows">
                        <p>Windows</p>
                    </th>
                    <th width="225">
                        <img src="assets/img/platforms/apple-logo.svg" alt="macOS">
                        <p>macOS</p>
                    </th>
                    <th width="225">
                        <img src="assets/img/platforms/linux-logo.svg" alt="Linux">
                        <p>Linux<br><span class="table-subheader"><a href="https://slicer.readthedocs.io/en/latest/user_guide/getting_started.html#linux" target="_blank" rel="noopener noreferrer">prerequisites</a></span></p>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Stable Release<br /><span class="table-subheader"><a href="https://www.slicer.org/wiki/Documentation/Nightly/FAQ/General#Where_can_I_download_Slicer.3F">access older releases</a></span></th>

                    {%- assign release_type = "release" -%}

                    {%- assign operating_system = "win" -%}
                    {% include download_table_td.html %}

                    {%- assign operating_system = "macosx" -%}
                    {% include download_table_td.html %}

                    {%- assign operating_system = "linux" -%}
                    {% include download_table_td.html %}

                </tr>
                <tr>
                    <th>Preview Release</th>

                    {%- assign release_type = "nightly" -%}

                    {%- assign operating_system = "win" -%}
                    {% include download_table_td.html %}

                    {%- assign operating_system = "macosx" -%}
                    {% include download_table_td.html %}

                    {%- assign operating_system = "linux" -%}
                    {% include download_table_td.html %}

                </tr>
            </tbody>
        </table>
    </div>
</div>
