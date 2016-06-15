#!/bin/sh
# -*- coding: utf-8 -*-
################################################################################
## Filename:          build_doc.sh 
## Version:           $Revision: 1.0 $
## Description:       
## Author:            Nicolas Chotard <nchotard@ipnl.in2p3.fr>
## Author:            $Author: nchotard $
## Created at:        $Date: 10-12-0015 18:39:12 $
## Modified at:       04-03-2016 11:34:07
## $Id: build_doc.sh, v 1.0, 10-12-0015 18:39:12 nchotard Exp $
################################################################################

scriptname=$(basename $0)
version=$(echo '$Revision: 1.0 $')

echo "INFO: Converting all ipynb files into rst files"
cd ipynbs
jupyter nbconvert --to rst *ipynb
echo 
echo "INFO: Copying all figures to the doc source and build directories"
cp *.rst ../doc/source/
cp -r *_files ../doc/source/
cp figures/* ../doc/source/figures/
cp figures/* ../doc/build/html/_images/

echo
echo "INFO: Building the codumentation"
cd ../doc
make html

# End of build_doc.sh
