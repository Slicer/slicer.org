# slicer.org

This ``slicer-org`` branch of this repository store the static content served at the root of https://slicer.org.

# Synchronization

Every 5 minutes, the branch [slicer-org](https://github.com/Slicer/slicer.org/tree/slicer-org) is automatically pulled into the live site. There is no need to
connect to the server in order to make changes.

# Pull Request preview

A preview deployement of the site will automatically be setup using [netlify](https://www.netlify.com/blog/2016/07/20/introducing-deploy-previews-in-netlify/).

The netlify deployment has been configured by [@jcfr](https://github.com/jcfr) and since the [free plan](https://www.netlify.com/pricing/) is being used, only one user can update its configuration.

# Local Development

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


# History

Transition to GitHub for managing and serving the Slicer top level page was discussed on Slicer Discourse forum. See https://discourse.slicer.org/t/its-all-about-transitions-lets-talk-about-slicers-landing-page


# License

It is covered by the Slicer License:

https://github.com/Slicer/slicer.org/blob/master/LICENSE
