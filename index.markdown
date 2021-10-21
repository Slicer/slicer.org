---
layout: home
hide_navbar: false
animated_navbar: true

# Hero ======================================================
logo_mark: /assets/img/3D-Slicer-Mark.svg
title: <b> 3D Slicer </b> image computing platform
subtitle: 3D Slicer is a <span class="highlight-text"><b>free</b></span>, <span class="highlight-text"><b>open source</b></span> and <span class="highlight-text"><b>multi-platform</b></span> software package widely used for medical, biomedical, and related imaging research.
hero_buttons:
  - text: Download
    link: "{{ site.slicer_download_url }}"
    icon: fa fa-download
    color: logo-blue

  - text: Documentation
    link: https://slicer.readthedocs.io
    icon: fas fa-book
    color: logo-green

  - text: Developers
    link: https://github.com/Slicer/Slicer
    icon: fab fa-github
    color: logo-red

  - text: Training
    link: https://www.slicer.org/wiki/Documentation/4.10/Training
    icon: fa fa-graduation-cap
    color: logo-orange

  - text: Forum
    link: https://discourse.slicer.org
    icon: fa fa-comments
    color: logo-yellow

  - text: Twitter
    link: https://twitter.com/3DSlicerApp
    icon: fab fa-twitter
    color: logo-brown

# About ======================================================
about:
  title: What is <b>3D Slicer</b> ?
  subtitle: See 3D Slicer in action
  description: |
    <b>Desktop software</b> to solve advanced image computing challenges with a focus on clinical and biomedical applications.<br>
    <b>Development platform</b> to quickly build and deploy custom solutions for research and commercial products, using free, open source software.<br>
    <b>Community</b> of knowledgeable users and developers working together to improve medical computing.

# Carousel ==========================================================
carousel_images:
  - image: assets/img/image-carousel/SegmentEditor.png
    title: Image segmentation
    description: Create surgical plans, create high-quality atlases, or training data sets for deep learning using the Segment Editor module. <a href="https://slicer.readthedocs.io/en/latest/user_guide/image_segmentation.html"> learn more > </a>
    button_text: learn more
  - image: assets/img/image-carousel/LungCTAnalyzer.jpg
    title: Lung CT analysis for COVID-19
    description: LungCTAnalyzer extension offers automated lung segmentation and quantative analysis for COVID-19 cases.<a href="https://youtu.be/fpLxm7uAvZQ"> video > </a> <a href="https://discourse.slicer.org/t/15006"> learn more > </a>
    button_text: learn more
  - image: assets/img/image-carousel/2016-SlicerBlog_Lumpectomy.png
    title: Surgical navigation
    description: 3D Slicer is used in real-time navigation of breast cancer surgery. <a href="https://youtu.be/90l0T1ADe_Y">video > </a> <a href="http://perk.cs.queensu.ca/sites/perkd7.cs.queensu.ca/files/Ungi2015b.pdf"> journal article > </a> <a href="http://www.slicerigt.org/wp/breast-cancer-surgery/"> learn more > </a>
    button_text: learn more
  - image: assets/img/image-carousel/SegmentationNVidiaAIAA.png
    title: AI-assisted segmentation using NVidia Clara
    description: Use NVidia AI-assisted annotation tool in Segment Editor to automatically segment anatomical structures using pre-trained models. <a href="https://youtu.be/ucnvE16pkmI?t=23"> video > </a> <a href="https://discourse.slicer.org/t/ai-assisted-segmentation-extension/9536"> learn more > </a>
    button_text: learn more
  - image: assets/img/image-carousel/2014-06-27-SlicerKuka.png
    title: Robot-assisted interventions
    description: Slicer is connected to a KUKA robot for visualization of 3D models of the robot, the anatomy, and the workspace. Demo at CARS 2014 in Fukuoka, Japan.The system is originally developed at NA-MIC Summer Project Week. <a href="https://www.na-mic.org/wiki/2013_Summer_Project_Week:kukarobot"> learn more > </a>
    button_text: learn more
  - image: assets/img/image-carousel/UKFTractography_CC.jpg
    title: Tractography
    description: UKFTractography is a module for computing tractography of DWI images using an unscented Kalman filter. Because of its 2-tensor algorithm, it is able to model fiber crossings and capture many more fibers than a single tensor algorithm. <a href="https://www.slicer.org/wiki/Documentation/Nightly/Modules/UKFTractography"> learn more > </a>
    button_text: learn more
  - image: assets/img/image-carousel/Example_Nephrostomy-1.png
    title: Tracked ultrasound for needle guidance
    description: Tracked ultrasound snapshots enhance needle guidance for percutaneous renal access. <a href="https://youtu.be/BZ2OsMOnXlk"> video > </a> <a href="http://www.slicerigt.org/wp/tracked-ultrasound-snapshots-enhance-needle-guidance-for-percutaneous-renal-access/"> learn more > </a>
    button_text: learn more
  - image: assets/img/image-carousel/1920px-SlicerRt_Montage.jpg
    title: Adaptive radiation therapy
    description: SlicerRT extension is a radiation therapy toolkit for 3D Slicer, containing DICOM RT import/export, visualization, and analysis. <a href="http://slicerrt.github.io/"> learn more > </a>
    button_text: learn more
  - image: assets/img/image-carousel/UsVolumeReconstruction.png
    title: Real-time 3D ultrasound reconstruction
    description: 3D volume is reconstructed from real-time tracked ultrasound using SlicerIGT and SlicerIGSIO extensions <a href="https://youtu.be/2vXeJxYFou4?t=131"> video > </a> <a href="https://www.slicerigt.org"> learn more > </a>
    button_text: learn more
  - image: assets/img/image-carousel/VirtualReality.png
    title: Virtual reality
    description: Everything that is shown in the 3D view (volume rendering, real-time surgical navigation, tractography, etc.) can be displayed and interacted with in virtual reality using SlicerVR extension. <a href="https://youtu.be/F_UBoE4FaoY"> video > </a> <a href="https://www.slicervr.org"> learn more > </a>
    button_text: learn more
  - image: assets/img/image-carousel/FreeSurferImport.png
    title: FreeSurfer support
    description: Import volumes, segmentations, surfaces from FreeSurfer then edit and analyze them. <a href="https://youtu.be/v0rGbno4h2M?t=27"> video > </a> <a href="https://discourse.slicer.org/t/12751"> learn more > </a>
    button_text: learn more

# Features ======================================================
features:
  title: Features
  description: The development of 3D Slicer—including its numerous modules, extensions, datasets, pull requests, patches, issues reports, suggestions—is made possible by users, developers, contributors and commercial partners around the world. The National Institutes of Health(NIH) of the USA has been a major contributor through a variety of competitive grants and contracts. See more information about funding sources <a href="https://slicer.readthedocs.io/en/latest/user_guide/about.html#funding-sources">here</a>.
  list:
    - title: <b>DICOM standard interoperability</b>
      description: <a href="https://slicer.readthedocs.io/en/latest/user_guide/modules/dicom.html">DICOM import and export, DICOMweb and classic DIMSE networking.</a> Support of a wide range of DICOM information objects, such as 2D, 3D, 4D images, segmentation objects, registration objects, structured reports, parametric maps, RT structure sets, RT plans, RT images, RT dose maps.
    - title: <b>Artificial Intelligence</b>
      description: <a href="https://discourse.slicer.org/t/ai-assisted-segmentation-extension/9536">NVidia Clara AI-based automatic segmentation</a>, <a href="https://slicer.readthedocs.io/en/latest/user_guide/image_segmentation.html">segmentation tools</a> for ground truth training data generation, <a href="https://www.slicer.org/wiki/Documentation/Nightly/Modules/DeepInfer">DeepInfer extension</a> for Deep Learning, Tensorflow and MONAI compatibility.
    - title: <b>Image segmentation</b>
      description: Capabilities for 2D/3D/4D image supporting hundreds of segments per image using <a href="https://slicer.readthedocs.io/en/latest/user_guide/image_segmentation.html">Segment Editor</a>.
    - title: <b>Spatial registration</b>
      description: Many <a href="https://slicer.readthedocs.io/en/latest/user_guide/registration.html">tools for manual and automatic registration</a> for images, image sequences, and models.
    - title: <b>3D markups</b>
      description: Define point sets, lines, curves, angles, planes, region of interests and use them for measurements or as inputs in various software modules using <a href="https://slicer.readthedocs.io/en/latest/user_guide/modules/markups.html">Markups module</a>.
    - title: <b>Cloud-based computing</b>
      description: <a href="https://discourse.slicer.org/t/how-to-run-slicer-on-the-cloud-and-access-in-a-web-browser/16401">3D Slicer in web browser</a>, <a href="https://github.com/Slicer/SlicerDocker">Docker container</a>, or <a href="https://discourse.slicer.org/t/run-slicer-in-your-web-browser-as-a-jupyter-notebook-or-as-a-full-application/11569">Jupyter notebook kernel</a>. <b><a href="https://mybinder.org/v2/gh/Slicer/SlicerNotebooks/master?filepath=SlicerWeb.ipynb">Click here to run Slicer in your web browser now</a></b> (using free Binder service, may take 1-2 minutes to start).
    - title: <b>Extensions</b>
      description: Over 150 extensions that can be installed and used with the application using the <a href="https://slicer.readthedocs.io/en/latest/user_guide/extensions_manager.html">3D Slicer App Store</a>.
    - title: <b>Python scripting</b>
      description: Live introspection, interface scripting, any Python 3 packages can be installed. <a href="https://www.slicer.org/wiki/Documentation/Nightly/Training#PerkLab.27s_Slicer_bootcamp_training_materials">Tutorials.</a>
    - title: <b>3D printing friendly</b>
      description: <a href="https://slicer.readthedocs.io/en/latest/user_guide/modules/segmentations.html#export-segmentation-to-model-surface-mesh-file">3D-printable mesh export</a>, <a href="https://github.com/SlicerFab/SlicerFab">voxel printing support</a>.
    - title: <b>4D data support</b>
      description: Time sequence visualization and analysis of any data types (volumes, models, segmentations, markups, etc.).
    - title: <b>Virtual Reality and Augmented Reality</b>
      description: <a href="https://www.slicervr.org">Interact with scenes in HTC, Oculus, Windows Mixed Reality systems</a>. Export data to HoloLens.
    - title: <b>Surgical planning and guidance</b>
      description: <a href="https://www.slicerigt.org">Real-time data recording, analysis and replay from surgical navigation systems, ultrasound scanners cameras and trackers, OpenIGTLink connection with trackers, scanners</a>.

# Solutions ======================================================
solutions:
  title: Solutions
  description: Each solution represents an application area of 3D Slicer, which may include collection of extensions, tutorials, forum sub-communities, and even custom software distributions tailored to the needs of a specific community. Custom distributions can provide self-contained, end-to-end implementation of specific workflows with simplified user interface.
  button_icon: fa fa-link
  button_text: Visit Website
# Solutions listed in _data/solutions.yml

# Commercial Use ======================================================
commercial_use:
  title: Commercial Use
  description: We invite commercial entities to use 3D Slicer. 3D Slicer is a Free Open Source Software distributed under a BSD style license.<br> The license does not impose restrictions on the use of the software. For details, please see the <a href="https://slicer.readthedocs.io/en/latest/user_guide/about.html#license">3D Slicer Software License Agreement</a>.<br> Learn more about our commercial partners and 3D Slicer based products and product prototypes.
  button_text: Learn More
  page_url: /commercial-use.html

# Community ======================================================
community:
  title: Community
  description: 3D Slicer is supported by a growing international user and developer community. <br> Visit the <a href="https://discourse.slicer.org">3D Slicer Forum</a> to connect with community members.<br> To acknowledge 3D Slicer as a platform, please see <a href="https://slicer.readthedocs.io/en/latest/user_guide/about.html#how-to-cite">Citing Slicer</a>.
  button_text: Learn more about 3D Slicer Community
  button_link: https://www.slicer.org/wiki/Main_Page/SlicerCommunity
---
