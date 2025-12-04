#!/bin/env bash

rsync ../hydrolysis/plots/* ./plots/qm
rsync ../hydrolysis/render/* ./figures

d="run_6/f-603/ixs-178-180/single/frame-96"
rsync ../hydrolysis/$d/*.png ./figures/
d="run_6/f-603/ixs-178-180/triple/frame-96"
rsync ../hydrolysis/$d/*.png ./figures/
d="run_6/f-603/ixs-881-883/single/frame-96"
rsync ../hydrolysis/$d/*.png ./figures/

rsync ../kimmdy-hydrolysis-examples/examples/collagen-hydrolysis/assets/*.png ./figures/
rsync ../kimmdy-hydrolysis-examples/figures/* ./figures/hyd/
rsync ../kimmdy-hydrolysis-examples/img/* ./figures/hyd/

rsync ../kimmdy-hydrolysis-examples/plots/* ./plots/kimmdy/

