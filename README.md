# Custom R Quarto report for nf-core/rnasplice pipeline

The purpose of this report is to collect and visualize differential splicing tools outputs from [nf-core rnasplice](https://nf-co.re/rnasplice/dev/) pipeline.

The report uses development version of the pipeline which contains isoformSwitchAnalyzer tool.

## How to use:

You will need an R environment - necessary packages are listed in `renv.lock` file. We recommend setting up this environment once as an R project and rendering reports from there as opposed to setting it up in every rnasplice results sub-directory.

Use the `render_rnasplice_report_default.sh` script as a template. Currently the adjustable parameters are:

-   `base_dir` - provide full path to the core directory of the rnasplice output - default "."
-   `gtf` - optional - path to your annotation for highlighting gene names in plots - default none
-   `fdrThreshold`: default 0.05
-   `effect_size_cutoff`: default 0.1
-   `topN`: how many top hits to show in interactive tables - default 50

## TODO

-   [ ] fix errors when knitting with empty gtf
-   [ ] add overlap between tools for significant AS *events*
-   [ ] clean up chunk labels 
-   [ ] make html tables uniformly formatted throughout
-   [ ] make adjustable figsize for all faceted plots based on the number of samples
-   [ ] add more `logger::log_info` messages
