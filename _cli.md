---
title: KIMMDY CLI
toc-title: Table of contents
---

:::: {.cell execution_count="1"}
``` {.python .cell-code}
!kimmdy --help
```

::: {.cell-output .cell-output-stdout}
    usage: kimmdy [-h] [--input INPUT] [--restart] [--loglevel LOGLEVEL]
                  [--logfile LOGFILE] [--show-plugins] [--generate-jobscript]
                  [--version] [--debug] [--callgraph]

    Welcome to KIMMDY. `kimmdy` runs KIMMDY. Additinal tools are available as
    `kimmdy-...` commands. These are `-analysis`, `-modify-top` and `-build-
    examples`. Access their help with `kimmdy-... -h.`Visit the documentation
    online at <https://graeter-group.github.io/kimmdy/>

    options:
      -h, --help            show this help message and exit
      --input INPUT, -i INPUT
                            Kimmdy input file. Defaults to `kimmdy.yml`. See
                            <https://graeter-
                            group.github.io/kimmdy/guide/references/input.html>
                            for all options. CLI flags (e.g. --restart or
                            --loglevel) have precedence over their counterparts in
                            the input file.
      --restart, -r         Restart or continue from a previous run instead of
                            incrementing the run number for the output directory.
                            It the output directory does not exist, it will be
                            like a regular fresh run.
      --loglevel LOGLEVEL, -l LOGLEVEL
                            Logging level (CRITICAL, ERROR, WARNING, INFO, DEBUG)
      --logfile LOGFILE, -f LOGFILE
                            Logfile
      --show-plugins        List available plugins
      --generate-jobscript  Instead of running KIMMDY directly, generate the
                            output directory and a jobscript `jobscript.sh` for
                            slurm HPC clusters. You can then run this jobscript
                            with sbatch jobscript.sh.
      --version             Show version and exit.
      --debug               On error, drop into debugger
      --callgraph           Generate a visualization of function calls for
                            debugging and documentation.
:::
::::

:::: {.cell execution_count="2"}
``` {.python .cell-code}
from kimmdy.topology.topology import Topology
top = Topology.from_path("./assets/gly-hoh.top",
                         ffdir="./assets/amber99sb-star-ildnp.ff",
                         is_reactive_predicate_f=lambda _: True)
top
```

::: {.cell-output .cell-output-display execution_count="2"}
    Topology with the following molecules: 
    Reactive: 1

    With Moleculetype Reactive with:
    11 atoms,
    9 bonds,
    13 angles,
    6 pairs,
    0 settles,
    0 exclusions,
    16 proper dihedrals
    0 improper dihedrals
    0 position restraints
    0 dihedral restraints

    ForceField parameters with
    66 atomtypes,
    98 bondtypes,
    257 angletypes,
    134 proper dihedraltypes
    58 improper dihedraltypes
    153 residuetypes
:::
::::

:::: {.cell execution_count="3"}
``` {.python .cell-code}
top.atoms['4']
```

::: {.cell-output .cell-output-display execution_count="3"}
    Atom(nr='4', type='C', resnr='2', residue='GLY', atom='C', cgnr='12', charge='0.5973', mass='12.01', typeB=None, chargeB=None, massB=None, bound_to_nrs=['1', '5', '6'], is_radical=False, comment=None)
:::
::::

:::: {.cell execution_count="4"}
``` {.python .cell-code}
top.bonds[('4','6')]
```

::: {.cell-output .cell-output-display execution_count="4"}
    Bond(ai='4', aj='6', funct='1', c0=None, c1=None, c2=None, c3=None, c4=None, c5=None, comment=None)
:::
::::

:::: {.cell execution_count="5"}
``` {.python .cell-code}
top.ff
```

::: {.cell-output .cell-output-display execution_count="5"}

    ForceField parameters with
    66 atomtypes,
    98 bondtypes,
    257 angletypes,
    134 proper dihedraltypes
    58 improper dihedraltypes
    153 residuetypes
:::
::::
