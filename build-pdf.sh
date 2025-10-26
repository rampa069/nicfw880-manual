#!/bin/bash
set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}nicFW880 Manual PDF Builder${NC}"
echo "================================"

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo -e "${RED}Error: pandoc is not installed${NC}"
    echo "Install with: brew install pandoc (macOS) or apt-get install pandoc (Linux)"
    exit 1
fi

# Detect best available PDF engine
detect_pdf_engine() {
    # Prefer XeLaTeX for Unicode support (handles emojis)
    if command -v xelatex &> /dev/null; then
        echo "xelatex"
        return 0
    # Then try pdflatex with required packages
    elif command -v pdflatex &> /dev/null && kpsewhich framed.sty &> /dev/null; then
        echo -e "${YELLOW}Note: Using pdflatex (emojis will be removed from output)${NC}"
        echo "pdflatex"
        return 0
    # Fallback to wkhtmltopdf
    elif command -v wkhtmltopdf &> /dev/null; then
        echo "wkhtmltopdf"
        return 0
    else
        echo -e "${RED}Error: No PDF engine found${NC}"
        echo "Install one of:"
        echo "  - LaTeX: brew install basictex (macOS) or apt-get install texlive-latex-base (Linux)"
        echo "  - wkhtmltopdf: brew install wkhtmltopdf (macOS)"
        exit 1
    fi
}

# Function to clean emojis and problematic Unicode from file
clean_unicode() {
    local input_file=$1
    local output_file=$2

    # Remove emojis but keep the text
    # This regex matches most emoji ranges
    sed -E 's/[😀-🙏🌀-🗿🚀-🛿🇀-🇿✀-➿⬀-⯿]//' "$input_file" > "$output_file"
}

# Function to extract first H1 title from a markdown file and convert to anchor
get_anchor_from_file() {
    local file=$1
    # Get first H1 heading (line starting with # but not ##)
    local title=$(grep -m 1 '^# ' "$file" | sed 's/^# //' | sed 's/[😀-🙏🌀-🗿🚀-🛿🇀-🇿✀-➿⬀-⯿]//g')

    if [ -z "$title" ]; then
        # If no H1, try H2
        title=$(grep -m 1 '^## ' "$file" | sed 's/^## //' | sed 's/[😀-🙏🌀-🗿🚀-🛿🇀-🇿✀-➿⬀-⯿]//g')
    fi

    # Convert title to anchor format (lowercase, spaces to hyphens, remove special chars)
    echo "$title" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | sed 's/[^a-z0-9-]//g'
}

# Function to fix internal markdown links in a file
fix_internal_links() {
    local input_file=$1
    local output_file=$2
    local base_dir=$3

    # Copy content to temp file
    cp "$input_file" "$output_file"

    # Find all markdown links: [text](path.md) or [text](path/file.md)
    # Replace with internal anchors: [text](#anchor)

    # Common patterns to fix (based on actual H1 titles in files)
    # README
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/README\.md\)|[\1](#nicfw880-user-manual)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(README\.md\)|[\1](#nicfw880-user-manual)|g' "$output_file"

    # Guides
    sed -i '' -E 's|\[([^]]+)\]\(guides/key-mappings\.md\)|[\1](#key-mappings-controls-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/guides/key-mappings\.md\)|[\1](#key-mappings-controls-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(guides/aprs\.md\)|[\1](#aprs-system-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/guides/aprs\.md\)|[\1](#aprs-system-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(guides/gps\.md\)|[\1](#gps-navigation-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/guides/gps\.md\)|[\1](#gps-navigation-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(guides/dtmf\.md\)|[\1](#dtmf-functions-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/guides/dtmf\.md\)|[\1](#dtmf-functions-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(guides/si4732-tuner\.md\)|[\1](#si4732-tuner-module-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/guides/si4732-tuner\.md\)|[\1](#si4732-tuner-module-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(guides/spectrum-scope\.md\)|[\1](#spectrum-scope-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/guides/spectrum-scope\.md\)|[\1](#spectrum-scope-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(guides/scanning\.md\)|[\1](#scanning-features-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/guides/scanning\.md\)|[\1](#scanning-features-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(guides/multiwatch\.md\)|[\1](#multiwatch-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/guides/multiwatch\.md\)|[\1](#multiwatch-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(guides/calibration\.md\)|[\1](#calibration-setup-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/guides/calibration\.md\)|[\1](#calibration-setup-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(guides/crossband-repeater\.md\)|[\1](#crossband-repeater-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/guides/crossband-repeater\.md\)|[\1](#crossband-repeater-guide)|g' "$output_file"

    # Reference
    sed -i '' -E 's|\[([^]]+)\]\(reference/menu-structure\.md\)|[\1](#menu-structure-reference)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/reference/menu-structure\.md\)|[\1](#menu-structure-reference)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(reference/key-shortcuts\.md\)|[\1](#key-shortcuts-quick-reference)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/reference/key-shortcuts\.md\)|[\1](#key-shortcuts-quick-reference)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(reference/advanced-menu\.md\)|[\1](#advanced-menu-overview)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/reference/advanced-menu\.md\)|[\1](#advanced-menu-overview)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(reference/squelch-settings\.md\)|[\1](#squelch-settings-overview)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/reference/squelch-settings\.md\)|[\1](#squelch-settings-overview)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(reference/troubleshooting\.md\)|[\1](#troubleshooting-guide)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/reference/troubleshooting\.md\)|[\1](#troubleshooting-guide)|g' "$output_file"

    # Changelog
    sed -i '' -E 's|\[([^]]+)\]\(changelog/alpha-releases\.md\)|[\1](#alpha-releases-changelog)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/changelog/alpha-releases\.md\)|[\1](#alpha-releases-changelog)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(changelog/beta-releases\.md\)|[\1](#beta-releases-changelog)|g' "$output_file"
    sed -i '' -E 's|\[([^]]+)\]\(\.\.?/changelog/beta-releases\.md\)|[\1](#beta-releases-changelog)|g' "$output_file"

    # Generic fallback: remove any remaining .md links and convert to plain anchors
    sed -i '' -E 's|\[([^]]+)\]\([^)]*\.md\)|[\1]|g' "$output_file"
}

PDF_ENGINE=$(detect_pdf_engine)
echo "Using PDF engine: $PDF_ENGINE"
echo ""

# Create output directory
OUTPUT_DIR="pdf-output"
mkdir -p "$OUTPUT_DIR"

# Version info (can be overridden by environment variable)
VERSION="${VERSION:-$(git describe --tags --always 2>/dev/null || echo 'dev')}"
BUILD_DATE=$(date +"%Y-%m-%d")

echo "Version: $VERSION"
echo "Build Date: $BUILD_DATE"
echo ""

# Function to build a manual
build_manual() {
    local lang=$1
    local wiki_dir=$2
    local output_file=$3
    local title=$4
    local author=${5:-"nicsure"}

    echo -e "${YELLOW}Building $title...${NC}"

    # Set subtitle based on language
    if [[ "$lang" == "es" ]]; then
        local subtitle="Para Radtel RT-880, RT-880G, e iRadio UV-98 Plus"
        local lang_option="-V lang=es"
    else
        local subtitle="For Radtel RT-880, RT-880G, and iRadio UV-98 Plus"
        local lang_option="-V lang=en"
    fi

    # Create temporary directory for processing
    TMP_DIR=$(mktemp -d)

    # Define file order for concatenation
    FILES=(
        "$wiki_dir/README.md"
        "$wiki_dir/guides/key-mappings.md"
        "$wiki_dir/guides/aprs.md"
        "$wiki_dir/guides/gps.md"
        "$wiki_dir/guides/dtmf.md"
        "$wiki_dir/guides/si4732-tuner.md"
        "$wiki_dir/guides/spectrum-scope.md"
        "$wiki_dir/guides/scanning.md"
        "$wiki_dir/guides/multiwatch.md"
        "$wiki_dir/guides/calibration.md"
        "$wiki_dir/guides/crossband-repeater.md"
        "$wiki_dir/reference/menu-structure.md"
        "$wiki_dir/reference/key-shortcuts.md"
        "$wiki_dir/reference/advanced-menu.md"
        "$wiki_dir/reference/squelch-settings.md"
        "$wiki_dir/reference/troubleshooting.md"
        "$wiki_dir/changelog/alpha-releases.md"
        "$wiki_dir/changelog/beta-releases.md"
    )

    # Check if all files exist
    MISSING_FILES=0
    for file in "${FILES[@]}"; do
        if [ ! -f "$file" ]; then
            echo -e "${RED}  Missing: $file${NC}"
            MISSING_FILES=$((MISSING_FILES + 1))
        fi
    done

    if [ $MISSING_FILES -gt 0 ]; then
        echo -e "${RED}  Error: $MISSING_FILES file(s) missing. Skipping $title${NC}"
        rm -rf "$TMP_DIR"
        return 1
    fi

    # Concatenate all files
    COMBINED="$TMP_DIR/combined.md"

    # Add title page with language-specific content
    if [[ "$lang" == "es" ]]; then
        cat > "$COMBINED" << EOF
---
title: "$title"
subtitle: "$subtitle"
author: "$author"
date: "$BUILD_DATE"
version: "$VERSION"
lang: es
toc: true
toc-depth: 3
numbersections: true
documentclass: report
geometry: margin=1in
fontsize: 11pt
---

\newpage

EOF
    else
        cat > "$COMBINED" << EOF
---
title: "$title"
subtitle: "$subtitle"
author: "$author"
date: "$BUILD_DATE"
version: "$VERSION"
lang: en
toc: true
toc-depth: 3
numbersections: true
documentclass: report
geometry: margin=1in
fontsize: 11pt
---

\newpage

EOF
    fi

    # Append all markdown files (fix links, clean emojis if using pdflatex)
    for file in "${FILES[@]}"; do
        echo "" >> "$COMBINED"
        echo "\newpage" >> "$COMBINED"
        echo "" >> "$COMBINED"

        # First, fix internal markdown links
        TEMP_FIXED="$TMP_DIR/fixed_links.md"
        fix_internal_links "$file" "$TEMP_FIXED" "$wiki_dir"

        if [[ "$PDF_ENGINE" == "pdflatex" ]]; then
            # Remove emojis for pdflatex
            clean_unicode "$TEMP_FIXED" "$TMP_DIR/cleaned.md"
            cat "$TMP_DIR/cleaned.md" >> "$COMBINED"
        else
            # Keep emojis for XeLaTeX and other engines
            cat "$TEMP_FIXED" >> "$COMBINED"
        fi
        echo "" >> "$COMBINED"
    done

    # Generate PDF with appropriate options based on engine
    if [[ "$PDF_ENGINE" == "wkhtmltopdf" ]]; then
        # Simplified options for wkhtmltopdf
        pandoc "$COMBINED" \
            -o "$OUTPUT_DIR/$output_file" \
            --pdf-engine="$PDF_ENGINE" \
            --toc \
            --toc-depth=3 \
            --metadata title="$title" \
            --metadata subtitle="$subtitle" \
            --metadata author="$author" \
            --metadata date="$BUILD_DATE" \
            --metadata version="$VERSION"
    elif [[ "$PDF_ENGINE" == "xelatex" ]]; then
        # XeLaTeX with Unicode support
        # Check if DejaVu Sans is available
        if fc-list | grep -q "DejaVu Sans"; then
            echo "  Using DejaVu fonts (better Unicode/emoji support)"
            pandoc "$COMBINED" \
                -o "$OUTPUT_DIR/$output_file" \
                --pdf-engine="$PDF_ENGINE" \
                --toc \
                --toc-depth=3 \
                --number-sections \
                $lang_option \
                -V mainfont="DejaVu Sans" \
                -V monofont="DejaVu Sans Mono" \
                -V linkcolor:blue \
                -V geometry:a4paper \
                -V geometry:margin=2cm \
                --syntax-highlighting=tango \
                --metadata-file=<(cat << METADATA
---
title: "$title"
subtitle: "$subtitle"
author: "$author"
date: "$BUILD_DATE"
version: "$VERSION"
---
METADATA
)
        else
            echo "  Using system default fonts (install DejaVu for better results: ./install-dejavu-fonts.sh)"
            pandoc "$COMBINED" \
                -o "$OUTPUT_DIR/$output_file" \
                --pdf-engine="$PDF_ENGINE" \
                --toc \
                --toc-depth=3 \
                --number-sections \
                $lang_option \
                -V linkcolor:blue \
                -V geometry:a4paper \
                -V geometry:margin=2cm \
                --syntax-highlighting=tango \
                --metadata-file=<(cat << METADATA
---
title: "$title"
subtitle: "$subtitle"
author: "$author"
date: "$BUILD_DATE"
version: "$VERSION"
---
METADATA
)
        fi
    else
        # pdflatex (with emoji filtering already applied)
        pandoc "$COMBINED" \
            -o "$OUTPUT_DIR/$output_file" \
            --pdf-engine="$PDF_ENGINE" \
            --toc \
            --toc-depth=3 \
            --number-sections \
            $lang_option \
            -V linkcolor:blue \
            -V geometry:a4paper \
            -V geometry:margin=2cm \
            --syntax-highlighting=tango \
            --metadata-file=<(cat << METADATA
---
title: "$title"
subtitle: "$subtitle"
author: "$author"
date: "$BUILD_DATE"
version: "$VERSION"
---
METADATA
)
    fi

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}  ✓ Created: $OUTPUT_DIR/$output_file${NC}"
        FILE_SIZE=$(du -h "$OUTPUT_DIR/$output_file" | cut -f1)
        echo -e "    Size: $FILE_SIZE"
    else
        echo -e "${RED}  ✗ Failed to create $output_file${NC}"
    fi

    # Cleanup
    rm -rf "$TMP_DIR"
    echo ""
}

# Build English manual
build_manual \
    "en" \
    "wiki" \
    "nicFW880-Manual-EN-${VERSION}.pdf" \
    "nicFW880 User Manual"

# Build Spanish manual
build_manual \
    "es" \
    "wiki-es" \
    "nicFW880-Manual-ES-${VERSION}.pdf" \
    "nicFW880 Manual de Usuario"

echo -e "${GREEN}================================${NC}"
echo -e "${GREEN}Build complete!${NC}"
echo ""
echo "Output files:"
ls -lh "$OUTPUT_DIR"/*.pdf 2>/dev/null || echo "No PDFs were generated"
echo ""
echo -e "${YELLOW}Note: PDFs are in the $OUTPUT_DIR/ directory${NC}"
