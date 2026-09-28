# Code Design

How this repository is organized, and how to render and release the workshop
materials.

Note that this file is designed to be useful to both humans and AI coding
agents.

## What this repo is

Teaching materials for a 2-hour workshop, "Introduction to Quarto for
Reproducibility" (SCO-SOC Virtual Meeting). It is not a software project: there
are no tests or linters. The main deliverable is a Quarto revealjs slide deck,
`index.qmd`. The rendered output (`index.html` and `index_files/`) is committed
and served at https://steffilazerte.ca/intro_to_quarto/, so after rendering,
commit the regenerated output together with the `.qmd` changes. The README links
participants to the slides, PDFs, and example files at that URL.

Content is licensed GPLv3 (`LICENSE.md`).

## Rendering

`_quarto.yml` defines a project that renders only `index.qmd`. From R:

```r
quarto::quarto_render() # renders index.qmd -> index.html
```

Or from the shell: `quarto render` (full render) or `quarto preview index.qmd`
(live preview).

The `quarto` CLI may not be on `PATH` outside RStudio/Positron, and then
`quarto_render()` fails with "path not found". In that case, point it at the
copy bundled with Positron:

```bash
QUARTO_PATH=/usr/share/positron/resources/app/quarto/bin/quarto Rscript -e 'quarto::quarto_render()'
```

Code chunks in `index.qmd` use `cache: true`, and the cache lives in
`index_cache/` (gitignored). If chunk output looks stale, delete `index_cache/`
and render again.

Figures are written to `index_files/figure-revealjs/` and named after their
chunk labels. That folder is committed, so when you rename or remove a chunk
label, delete the orphaned PNG.

(For CLAUDE) To check a slide visually without opening a browser, take a
headless Chrome screenshot. Slide ids are the `<section id="...">` values in
`index.html`, and the trailing `/20` steps past the fragments so they are all
shown:

```bash
google-chrome --headless=new --window-size=1400,900 --virtual-time-budget=5000 \
  --screenshot=slide.png "file://$PWD/index.html#/getting-started/20"
```

`RENDER.R` holds the full release workflow. Run it step by step, not as a single
script:

1. Render the HTML.
2. Print the slides to `intro_to_quarto.pdf` with the decktape Docker image. The
   exact command is in a comment in `RENDER.R`.
3. Compress the PDF to `intro_to_quarto_sm.pdf` with Ghostscript. Only the small
   PDF is committed; the full PDF is gitignored.
4. Make a GitHub release with `usethis::use_github_release()`.

## Slide deck structure

- The `index.qmd` front matter configures revealjs. It uses
  `theme: [default, styles.scss]` and replaces the default title slide with the
  custom partial `title-slide.html`.
- `title-slide.html` is a Pandoc template. It reads custom front-matter keys:
  `author-steffi: true` shows the author's contact block and logo, and the
  optional `workshop` and `caption` keys add text at the top of the slide.
- `styles.scss` defines custom classes used throughout the slides (for example
  `.small`), plus revealjs overrides.
- Chunks that run are labelled with `#| label:` (kebab-case), and their options
  are written as `#|` lines rather than inside the braces, the same syntax the
  slides teach. Exceptions: the `md` example chunk takes its label inside the
  braces, because a `#|` line would be displayed as part of the example; and no
  label starts with `fig-`, which would add a "Figure N:" caption. The `{{r}}`
  chunks are only displayed as examples and are not labelled.
- Images are in `figures/`. The Font Awesome icons come from the local extension
  in `_extensions/`.
- `schedule.md` gives the planned timing of each section. Keep it in mind when
  adding or removing content.

## Example files for participants

`example.qmd` and `example_spin.R` are standalone templates that participants
download. They are not part of the Quarto project render. Each one shows the
same analysis in a different way: `example.qmd` is a Quarto document, and
`example_spin.R` is an R script with `#'` roxygen-style comments that
`quarto::quarto_render()` converts. Each file contains its own render command in
an `eval: false` chunk. Keep these two files in sync in terms of content.

Both files use Quarto-style `#|` chunk options (not the older `#+` spin syntax).
Note that RStudio's Compile Report button still renders R scripts through
`knitr::spin()` and R Markdown, not Quarto (see rstudio/rstudio#14477). So
Quarto-only options in `example_spin.R`, such as `format:` and `toc:`, apply
only when it is rendered with `quarto_render()` or from Positron.

## Other notes

- `Registration/` holds participant registration data. Treat it as private and
  never quote or publish its contents.
- In VS Code/Positron, R files are formatted on save with Air
  (`Posit.air-vscode`). Quarto files are not formatted on save.
