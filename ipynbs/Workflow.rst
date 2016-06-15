
General analysis workflow
=========================

This page gives an overview of the command/scripts that must be run to
go from calibrated CFHT data to the cluster photometry estimate.

-  Get the calibrated images from CADT: ``wget``
-  Reorganize the data: ``ingestImages.py``
-  Get the needed astrometry data: ``get_astromerty.py``
-  processCcd.py
-  Coadition
