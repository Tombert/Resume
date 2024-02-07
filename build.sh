# Define variables
RESUME_SOURCE="resume.tex"
RESUME_OUTPUT="resume.pdf"

# Compile the resume using pdflatex
pdflatex -output-directory=out "$RESUME_SOURCE"

# Move the generated PDF to the output directory
mv out/*.pdf "$RESUME_OUTPUT"
