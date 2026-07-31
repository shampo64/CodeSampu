#!/bin/bash
set -euo pipefail

# Renders the HTML CV templates in templates/ to PDF in exports/, using WeasyPrint.
# Requires: pip install weasyprint

cd "$(dirname "$0")/.."

python3 -m weasyprint templates/cv-ats.html exports/cv.pdf
python3 -m weasyprint templates/cv-visual.html exports/cv-visual.pdf

echo "Generated exports/cv.pdf and exports/cv-visual.pdf"
