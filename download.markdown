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

<div markdown="0">
    <div class="tabs boxed is-centered is-4">
        <ul>
            <li class="is-active" data-target="tab-checksums" id="checksums">
                <a>
                    <span class="icon is-small"><i class="fas fa-shield-alt" aria-hidden="true"></i></span>
                    <span>Checksums</span>
                </a>
            </li>
            <li data-target="tab-package-naming-convention" id="package-naming-convention">
                <a>
                    <span class="icon is-small"><i class="far fa-file-alt" aria-hidden="true"></i></span>
                    <span>Package Naming Convention</span>
                </a>
            </li>
        </ul>
    </div>
    <div id="tab-content" class="is-size-7">
        <div id="tab-checksums">
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

            <p>It is a good practice to verify the integrity of your downloaded Slicer package by checking its checksum against the expected values.</p>

            <p>For each Slicer package listed above, we provide a SHA512 checksum. You can use this checksum to validate that your downloaded file has not been tampered with or corrupted during the download process.</p>

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
        </div>
        <div id="tab-package-naming-convention" class="is-hidden">
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
    </div>
</div>
