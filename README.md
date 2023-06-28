# Overview

The ``slicer-org`` branch of this repository stores the files deployed at https://slicer.org.

The site is implemented using [jekyll static site generator](https://jekyllrb.com/) and uses the [Bulma clean theme](https://github.com/chrisrhymes/bulma-clean-theme).

# Table of Contents

   * [Overview](#overview)
   * [Infrastructure](#infrastructure)
      * [Production](#production)
        * [Automatic Deployment](#automatic-deployment)
        * [Maintenance](#maintenance)
      * [Preview](#preview)
   * [Development](#development)
      * [Development Using GitHub UI](#development-using-github-ui)
      * [Local Development](#local-development)
      * [Source Files](#source-files)
      * [Useful links](#useful-links)
      * [Adding an internal page](#adding-an-internal-page)
      * [Regenerating favicons](#regenerating-favicons)
   * [History](#history)
   * [License](#license)

<!--
*Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc)*
-->

# Infrastructure

The site is implemented using [jekyll static site generator](https://jekyllrb.com/) and uses the [Bulma clean theme](https://github.com/chrisrhymes/bulma-clean-theme).

## Production

Each time the sources of the static site organized in the [main](https://github.com/Slicer/slicer.org/tree/main) branch are updated, the following branches are automatically updated using the GitHub Action workflow described in [.github/workflows/build-website.yml](.github/workflows/build-website.yml):
* [slicer-org][branch-slicer-org]
* [download-slicer-org][branch-download-slicer-org]
* [download-maintenance-slicer-org][branch-download-maintenance-slicer-org]

[branch-slicer-org]: https://github.com/Slicer/slicer.org/tree/slicer-org
[branch-download-slicer-org]: https://github.com/Slicer/slicer.org/tree/download-slicer-org
[branch-download-maintenance-slicer-org]: https://github.com/Slicer/slicer.org/tree/download-maintenance-slicer-org

### Automatic Deployment

These branches are automatically pulled into their respective live sites. There is no need to
connect to the server in order to make changes.

| Branch | Site | Frequency | Jekyll build configuration |
|--------|------|-----------|---------------|
| [slicer-org][branch-slicer-org] | Deployed to https://slicer.org | 5 mins | `--config _config.yml` |
| [download-slicer-org][branch-download-slicer-org] | Deployed to https://download.slicer.org | 5 mins | `--config _config.yml,_config_download.yml` |

### Maintenance

This branch is expected to be manually pulled into the download server.

| Branch | Jekyll build configuration |
|--------|----------------------------|
| [download-maintenance-slicer-org][branch-download-maintenance-slicer-org] | `--config _config.yml,_config_download.yml,_config_download_maintenance.yml` |

## Preview

### Netlify

| Link | Description |
|------|-------------|
| [Deploy Previews for slicer.org][netlify-slicer-org-preview] | Preview of `slicer.org` site automatically associated with pull requests. |
| [Preview for download.slicer.org][netlify-download-slicer-org-preview] | Preview of `download.slicer.org` automatically associated with target branch [deploy-download-preview][branch-deploy-download-preview].<br>:warning: Preview is only available for pull request originating from this repository. |
| [Preview for download.slicer.org maintenance page][netlify-download-maintenance-slicer-org-preview] | Preview of `download.slicer.org` automatically associated with target branch [deploy-download-maintenance-preview][branch-deploy-download-maintenance-preview].<br>:warning: Preview is only available for pull request originating from this repository. |

To learn more about Netlify preview, see [here][netlify-preview-doc].

[netlify-slicer-org-preview]: https://app.netlify.com/sites/slicer-org/deploys?filter=deploy%20previews
[netlify-download-slicer-org-preview]: https://deploy-download-preview--slicer-org.netlify.app/download.html
[netlify-download-maintenance-slicer-org-preview]: https://deploy-download-maintenance-preview--slicer-org.netlify.app/download.html

[netlify-preview-doc]: https://www.netlify.com/blog/2016/07/20/introducing-deploy-previews-in-netlify/
[branch-deploy-download-preview]: https://github.com/Slicer/slicer.org/tree/deploy-download-preview
[branch-deploy-download-maintenance-preview]: https://github.com/Slicer/slicer.org/tree/deploy-download-maintenance-preview

_The netlify deployment has been configured by [@jcfr](https://github.com/jcfr) and since the [free plan](https://www.netlify.com/pricing/) is being used, only one user can update its configuration._

### Website build

The website builds associated with these branches are also uploaded as GitHub Action artifacts:
* [slicer-org][branch-slicer-org]
* [download-slicer-org][branch-download-slicer-org]
* [download-maintenance-slicer-org][branch-download-maintenance-slicer-org]

# Development

## Development Using GitHub UI

1. Go to https://github.com/slicer/slicer.org

2. Edit file and create a pull request directly from your browser. See [details][gh-editing-files].

[gh-editing-files]: https://docs.github.com/en/repositories/working-with-files/managing-files/editing-files

## Local Development

1. [Fork][fork] this repository. We will assume your GitHub account is **yourname**.

2. Download the static content (Make sure to replace **yourname**):

```
git clone git@github.com:yourname/slicer.org
```

3. Update files in the directory `slicer.org` with you proposed changes.

4. Open `index.html` with your favorite browser. Go back to Step 3 until your are satisfied with the result.

5. Publish your branch and create a [pull request][pr]

[fork]: https://help.github.com/articles/fork-a-repo/
[pr]: https://help.github.com/articles/creating-a-pull-request/

## Source Files

This section described files and directories used by the static site generator.

### `_config.yml`

The `_config.yml` file contains settings that Jekyll uses as it processes the site.

See [_config.yml](_config.yml) and https://jekyllrb.com/tutorials/convert-site-to-jekyll/#what-is-a-jekyll-website

### `index.markdown`

This document describes the properties used to generate the website main page.

It includes the following sections:

| Name           | Properties |
|----------------|------------|
| Hero           | Title, subtitle and list of buttons used in top-level section |
| About          | Title, subtitle and description for the _What is 3D Slicer_ section |
| Carousel       | List of images and associated descriptions |
| Features       | List of features including title, subtitle and description of the section |
| Solutions      | Title, description and properties common to all solution. See [_data/solutions.yml](_data/solutions.yml) for the list. |
| Commercial Use | Title, subtitle and description of the section |
| Communities    | Title, subtitle and description of the section |

See [index.markdown](index.markdown)

### `_data` directory

Learn more at https://jekyllrb.com/docs/datafiles/

### `_data/footer-site-map.yml`

Describes the links used to generate the top-level navbar and footer entries.

See [_data/footer-site-map.yml](_data/footer-site-map.yml)

### `_data/solutions.yml`

List of solutions used to generate main section, navbar and footer entries

See [_data/solutions.yml](_data/solutions.yml)

### `_layout/*.html`

Layouts are templates that can be used by any page in your site and wrap around page content.

See [_layout](./_layout)

Learn more at https://jekyllrb.com/docs/step-by-step/04-layouts/

### `_includes/*.html`

The `include` tag allows you to include content from another file stored in an `_includes` folder. Includes are useful for having a single source for source code that repeats around the site or for improving the readability.

See [_includes](./_includes)

Learn more at https://jekyllrb.com/docs/step-by-step/05-includes/

### Internal pages

* Commercial Use

See [commercial-use.markdown](./commercial-use.markdown)

## Useful links

* [Bulma documentation](https://bulma.io/documentation/)
* [Bulma clean theme documentation](https://github.com/chrisrhymes/bulma-clean-theme#bulma-clean-theme)
* [Jekyll static site generator](https://jekyllrb.com/docs/)

## Adding an internal page

To add an internal site pages, create a markdown file with a front matter.

For example, see [commercial-use.markdown](./commercial-use.markdown)

* Use page layout in you markdown header:
```
  layout: page
```

* To add side menu on your page create a .yml file for the menu under _data folder and use it in markdown header like this:
```
  menubar: example_menu
```

* To add table of contents on your page use it in markdown header like this:
```
  toc: true
```

* To add sidebar on your page use it in markdown hear like this:
```
  show_sidebar: false
```

## Regenerating favicons

The configuration file [favicon.json](./favicon.json) was originally generated
using https://realfavicongenerator.net/ and uploading [3D-Slicer-Mark.svg](./assets/img/3D-Slicer-Mark.svg).

Step-by-step:

1. Review and update `favicon.json`

2. Execute the following commands:

  ```bash
  npx cli-real-favicon generate favicon.json faviconData.json assets/favicons/
  ```

  _Note: `npx` command-line is available after installing [node](https://nodejs.org/en/download/)_

3. Update [_includes/head.html](./_includes/head.html) based on content of the generated file `assets/favicons/README.md`

4. If missing, add front matter to [assets/favicons/browserconfig.xml](./assets/favicons/browserconfig.xml)

  ```
  ---
  layout: null
  ---
  ```

5. If if applies, remove the extra `?v=...` from [assets/favicons/site.webmanifest](./assets/favicons/site.webmanifest)

6. Remove extraneous files

  ```bash
  rm faviconData.json
  rm assets/favicons/README.md
  rm assets/favicons/apple-touch-icon-*.png
  ```

7. Commit changes

  ```bash
  git add favicon.json assets/favicons/* _includes/head.html
  git commit -m "ENH: Update favicons"
  ```

# History

Transition to GitHub for managing and serving the Slicer top level page was discussed on Slicer Discourse forum. See https://discourse.slicer.org/t/its-all-about-transitions-lets-talk-about-slicers-landing-page


# License

It is covered by the Slicer License:

https://github.com/Slicer/slicer.org/blob/main/LICENSE
