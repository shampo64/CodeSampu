# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

This repository holds the source content for the owner's curriculum vitae (CV/resume) and is used to generate exports on demand in whichever format is requested: Word (.docx), PDF, or an HTML/web version.

## Working conventions

- `cv.md` is the single source of truth for the CV content (experience, education, skills). When the owner gives updates, edit `cv.md` first, then manually mirror the change into the affected template(s) under `templates/` (there is no automated markdown-to-HTML sync — the templates are hand-authored HTML that must be kept in step with `cv.md`).
- `docs/linee-guida-cv.md` has the researched rules (structure, ATS compatibility, sector conventions) that both templates are meant to follow — check it before making layout or content decisions.
- Generated export files in `exports/` (.pdf, .docx, .html) are build outputs, not the source of truth — don't hand-edit them expecting changes to persist.

## PDF generation

- `templates/cv-ats.html` — single-column layout, plain text only (no images/icons), safe for ATS/portal uploads. Renders to `exports/cv.pdf`.
- `templates/cv-visual.html` — two-column layout with a sidebar and a circular profile photo (`assets/foto-profilo.jpg`), styled for direct/human submissions. Renders to `exports/cv-visual.pdf`.
- Both are rendered with [WeasyPrint](https://weasyprint.org/) (`pip install weasyprint`) via `scripts/render_pdf.sh`, which runs `python3 -m weasyprint templates/<file>.html exports/<file>.pdf` for each template. Run it from the repo root after editing a template.
- For Word output use the `docx` skill; for a web version render an HTML/Artifact — templates/ currently only covers the PDF path.
