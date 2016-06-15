
Clusters
========

Generality
----------

Cluster analisys in LSST
------------------------

Get a cluster data
~~~~~~~~~~~~~~~~~~

-  Go online to

   ::

       http://www2.cadc-ccda.hia-iha.nrc-cnrc.gc.ca/en/search/?collection=CFHT&noexec=true#queryFormTab

-  Select your target in ``Spatial Constraints -> Target``, and then,
   select below using the following criteria:

   ::

       Optical -> CFHT -> MegaPrime -> All -> Calibrated -> Image -> Object

-  Click on the ``Search`` buttn. Make sure all exposure have an
   integration time of at least 200s (``Int Time`` -> ``>200``), and the
   calibration is 2 (``Cal. Lev``). ``Mark`` them all using the button
   at the top of the list, and click on ``Download``.

-  Click on ``URLS list in a file``, download the list

-  Go to your terminal, and launch
   ``wget --content-disposition -i FILE_NAME`` (see the webpage for
   details).
