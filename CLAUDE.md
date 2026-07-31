# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

This repository holds the source content for the owner's curriculum vitae (CV/resume) and is used to generate exports on demand in whichever format is requested: Word (.docx), PDF, or an HTML/web version.

## Working conventions

- `cv.md` is the single source of truth for the CV content (experience, education, skills). Generate docx/PDF/HTML outputs from it on request rather than maintaining separate copies by hand; when the owner gives updates, edit `cv.md` first, then regenerate exports.
- Use the `docx` skill for Word output, the `pdf` skill for PDF output, and an HTML/Artifact for a web version.
- Generated export files (.docx, .pdf, .html) are build outputs, not the source of truth — don't hand-edit them expecting changes to persist; edit the source content and regenerate instead.
