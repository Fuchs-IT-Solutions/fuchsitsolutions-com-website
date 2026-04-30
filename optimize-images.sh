#!/bin/bash
# Image Optimization Script - Convert JPG to WebP and create optimized versions

INPUT_DIR="./images"
OUTPUT_DIR="./images"

echo "🖼️  Starting image optimization..."

# Check if cwebp is installed
if ! command -v cwebp &> /dev/null; then
    echo "⚠️  cwebp not found. Skipping WebP conversion."
    echo "   Install with: brew install webp (macOS) or apt install webp (Linux)"
    echo "✅ Build continuing without image optimization."
    exit 0
fi

# Convert portrait.jpg to WebP
if [ -f "$INPUT_DIR/portrait.jpg" ]; then
    echo "Converting portrait.jpg to WebP..."
    cwebp -q 80 "$INPUT_DIR/portrait.jpg" -o "$INPUT_DIR/portrait.webp"
    echo "✓ portrait.webp created (80% quality)"

    # Get file sizes
    JPG_SIZE=$(du -h "$INPUT_DIR/portrait.jpg" | cut -f1)
    WEBP_SIZE=$(du -h "$INPUT_DIR/portrait.webp" | cut -f1)
    echo "  JPG: $JPG_SIZE → WebP: $WEBP_SIZE"
fi

echo "✅ Image optimization complete!"
