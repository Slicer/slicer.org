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

{% if site.slicer_download_maintenance.enabled %}
    <div class="columns is-mobile is-centered has-text-centered">

      <div class="column is-12">
        <div class="notification is-warning">
            <p class="title is-4">
            We&rsquo;ll be back very soon! Scheduled maintenance happening on {{ site.slicer_download_maintenance.date }}.
            </p>
            <p class="content">
            Sorry for the inconvenience, but we are performing some maintenance at the moment.
            If you have questions or would like to learn more, see <a href="{{ site.slicer_download_maintenance.info_url }}">here</a>, otherwise we anticipate the maintenance to last for approximately {{ site.slicer_download_maintenance.duration }}, from {{ site.slicer_download_maintenance.start_time }} to {{ site.slicer_download_maintenance.end_time }} {{ site.slicer_download_maintenance.timezone }} on {{ site.slicer_download_maintenance.date }}.
            </p>
            <p class="content">
            In the meantime, explore our <a href="https://slicer.readthedocs.io/">documentation</a> for tips on how to use Slicer or join our <a href="https://discourse.slicer.org/">forum</a> to connect with other users.
            </p>
        </div>
      </div>
    </div>
{% else %}
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
                    <th>Stable Release<br /><span class="table-subheader"><a href="#access-older-releases">access older releases</a></span></th>

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

    <div class="tabs boxed is-centered is-4">
        <ul>
            <li data-target="tab-checksums" id="checksums">
                <a>
                    <span class="icon is-small"><i class="fas fa-shield-alt" aria-hidden="true"></i></span>
                    <span>Checksums</span>
                </a>
            </li>
            <li class="is-active" data-target="tab-package-naming-convention" id="package-naming-convention">
                <a>
                    <span class="icon is-small"><i class="far fa-file-alt" aria-hidden="true"></i></span>
                    <span>Package Naming Convention</span>
                </a>
            </li>
            <li data-target="tab-access-older-releases" id="access-older-releases">
                <a>
                    <span class="icon is-small"><i class="fas fa-history" aria-hidden="true"></i></span>
                    <span>Access Older Releases</span>
                </a>
            </li>
        </ul>
    </div>
    <div id="tab-content" class="is-size-7">
        <div id="tab-checksums" class="is-hidden">

            <p>It is a good practice to verify the integrity of your downloaded Slicer package by checking its checksum against the expected values.</p>

            <table class="table">
                <thead>
                    <tr>
                        <th>Package</th>
                        <th>SHA512 Checksum</th>
                    </tr>
                </thead>
                <tbody>
                    {%- assign release_type = "release" -%}

                    {%- assign package = "Windows" -%}
                    {%- assign operating_system = "win" -%}
                    {% include download_checksum_table_tr.html %}

                    {%- assign package = "macOS" -%}
                    {%- assign operating_system = "macosx" -%}
                    {% include download_checksum_table_tr.html %}

                    {%- assign package = "Linux" -%}
                    {%- assign operating_system = "linux" -%}
                    {% include download_checksum_table_tr.html %}

                    {%- assign release_type = "nightly" -%}

                    {%- assign package = "Windows (preview)" -%}
                    {%- assign operating_system = "win" -%}
                    {% include download_checksum_table_tr.html %}

                    {%- assign package = "macOS (preview)" -%}
                    {%- assign operating_system = "macosx" -%}
                    {% include download_checksum_table_tr.html %}

                    {%- assign package = "Linux (preview)" -%}
                    {%- assign operating_system = "linux" -%}
                    {% include download_checksum_table_tr.html %}
                </tbody>
            </table>

            <p>For each Slicer package listed above, we provide a SHA512 checksum. You can use this checksum to validate that your downloaded file has not been tampered with or corrupted during the download process.</p>

            <details>
                <summary title="Click to display per-platform instructions for verifying the integrity of your downloaded package">How to verify the integrity of your downloaded package?</summary>

                <p>To verify the integrity of your downloaded package using the checksum, follow these general steps:</p>
                <ol>
                    <li>Open a terminal window or command prompt.</li>
                    <li>Navigate to the directory where your downloaded package is located.</li>
                    <li>Calculate the checksum of your downloaded package by running the appropriate command for your operating system:
                        <ul>
                        <li>Windows (using PowerShell): <code>Get-FileHash {package filename} -Algorithm SHA512</code></li>
                        <li>macOS: <code>shasum -a 512 {package filename}</code></li>
                        <li>Linux: <code>sha512sum {package filename}</code></li>
                        </ul>
                    </li>
                    <li>Compare the calculated checksum to the expected checksum listed above to ensure they match.</li>
                </ol>

                <p>By verifying the checksum of your downloaded package, you can ensure that it has not been tampered with during the download process or otherwise corrupted.</p>
            </details>
        </div>
        <div id="tab-package-naming-convention">
            <p class="">Slicer packages are named based on the following naming convention:</p>

            <p class=""><strong>For Stable Builds:</strong></p>

            <pre>Slicer-X.Y.Z-&lt;os&gt;-&lt;arch&gt;.&lt;extension&gt;</pre>

            <p class=""><strong>For Preview Builds:</strong></p>

            <pre>Slicer-X.Y.Z-YYYY-MM-DD-&lt;os&gt;-&lt;arch&gt;.&lt;extension&gt;</pre>

            <p>
            where:
            </p>

            <table class="table">
                <tbody>
                <tr>
                    <td><code>X.Y.Z</code></td>
                    <td>The version number of the application</td>
                </tr>
                <tr>
                    <td><code>YYYY-MM-DD</code></td>
                    <td>(only for Preview Builds) The date of the commit from which the package was built</td>
                </tr>
                <tr>
                    <td><code>&lt;os&gt;</code></td>
                    <td>The operating system for which the package was built (e.g. "win" for Windows, "macosx" for macOS, and "linux" for Linux)</td>
                </tr>
                <tr>
                    <td><code>&lt;arch&gt;</code></td>
                    <td>The architecture for which the package was built (e.g. "amd64" for 64-bit x86 architecture, and "arm64" for 64-bit ARM architecture)</td>
                </tr>
                <tr>
                    <td><code>&lt;extension&gt;</code></td>
                    <td>The extension indicating the file format of the package (e.g. ".tar.gz" for a compressed archive, or ".exe" for a Windows executable)</td>
                </tr>
                </tbody>
            </table>
        </div>
        <div id="tab-access-older-releases"  class="is-hidden">
            <p class=""><strong>Get older Slicer Stable Releases:</strong></p>

            <p class="">A list of older releases is available here:<a href="https://github.com/Slicer/Slicer/wiki/Release-Details">https://github.com/Slicer/Slicer/wiki/Release-Details</a>.</p>

            <p class="">The installable binaries can be <a href="https://slicer-packages.kitware.com/#collection/5f4474d0e1d8c75dfc70547e/folder/5f4474d0e1d8c75dfc705482">found here</a>.</p>
             
            <p class="">You can add <code>version</code> parameter to the download page address. For example, use this link to get latest Slicer-5.8 release (i.e., Slicer-5.8.1): <a href="http://download.slicer.org/?version=5.8">http://download.slicer.org/?version=5.8</a>.</p>

            <p class="">To get a direct download URL, set <code>version</code> to the desired version (such as <code>5.8</code>), <code>os</code> (<code>win</code>, <code>macosx</code>, or <code>linux</code>), and <code>stability=release</code>. For example: <a href="https://download.slicer.org/download?version=5.8&os=win&stability=release">https://download.slicer.org/download?version=5.8&os=win&stability=release</a></p>

            <p class=""><strong>Get older Slicer Preview Releases:</strong></p>

            <p class="">Older Slicer Preview Releases can be accessed by adding the <code>offset</code> parameter to the download page URL. For example, to get Slicer Preview Release from 7 days ago: <a href="http://download.slicer.org/?offset=-7">http://download.slicer.org/?offset=-7</a>.</p>

            <p class="">All available options:</p>
            <ul>
              <li><code>stability</code>: can be <code>release</code>, <code>nightly</code>, or <code>any</code></li>
              <li><code>os</code>: can be <code>win</code>, <code>macosx</code>, or <code>linux</code></li>
              <li><code>date</code>: revision built before or on the date, for example <code>date=2015-01-01</code></li>
              <li><code>checkout-date</code>: revision checked out before or on the date, for example <code>checkout-date=2015-01-01</code></li>
              <li><code>revision</code>: exact revision, for example <code>revision=27000</code></li>
              <li><code>closest-revision</code>: revision less than or equal, for example <code>closest-revision=26000</code></li>
              <li><code>version</code>: latest revision of branch, can include patch as well, for example <code>version=4.3</code> offers download of Slicer-4.3.1</li>
              <li><code>offset</code>: can be combined with <code>date</code>, <code>checkout-date</code>, <code>revision</code>, <code>closest-revision</code>, <code>version</code> to get version days, revisions, or versions before or after the specified, for example <a href="https://download.slicer.org/?version=5.6.2&offset=-1">https://download.slicer.org/?version=5.6.2&offset=-1</a> provides version 5.6.1, one version before the specified 5.6.2 release.</li>
            </ul>

            <p class=""><strong>Get older Slicer Extensions:</strong></p>

            <p class="">Extensions can be downloaded for old Slicer releases manually from the Extensions Catalog at the URL: <code>https://extensions.slicer.org/catalog/All/(revision_number)/(operating_system)</code>.
            Revision number is available on this download page or in an installed Slicer application in menu: Help / About Slicer. Operating system can be: <code>win</code>, <code>macosx</code>, or <code>linux</code>.
            For example, for Slicer-4.8.0 on Windows extensions are available at: <a href="https://extensions.slicer.org/catalog/All/26489/win">https://extensions.slicer.org/catalog/All/26489/win</a>.</p>
        </div>
    </div>
{% endif %}
</div>
