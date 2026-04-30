# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a static portfolio/business website for Fuchs IT-Solutions, deployed to Vercel. The site is built with Vite and consists of multiple HTML pages with bilingual support (German/English).

## Stack

- **Build Tool**: Vite 5.0+
- **Deployment**: Vercel
- **Language**: HTML5, CSS3, vanilla JavaScript (no framework)
- **Styling**: Global CSS with CSS variables and flexbox/grid layouts
- **Storage**: localStorage for user preferences (language selection)

## Commands

```bash
npm run dev      # Start dev server (http://localhost:5173)
npm run build    # Build for production (output to /dist)
npm run preview  # Preview production build locally
```

## Architecture

The site uses a multi-entry Vite build (configured in `vite.config.js`) with three main pages:

- **index.html** - Main landing page (German/English toggle)
- **impressum.html** - Legal notice (German legal requirement)
- **datenschutz.html** - Privacy policy (German legal requirement)

All pages share a common `style.css` file with CSS variables for theming.

### Language System

Bilingual support is implemented via CSS classes (`lang-de`, `lang-en`) applied to `<body>`. The system:
- Uses `localStorage.preferredLang` to persist user choice
- Applies `display: none` to non-active language content via CSS class selectors
- Language buttons toggle the class and save preference on click (see `setLanguage()` in index.html)

### Contact Modal

The contact form is implemented as a modal overlay (controlled by `toggleModal()`) that closes on:
- Escape key press
- Clicking the close button
- Body scroll is prevented while modal is open

## Assets

- **Public files**: `/public/contact.vcf` (vCard, served as-is)
- **Images**: `/images` directory
- **Logo**: `logo.svg` (blue-white branding)
- **Fonts**: Google Fonts (Inter via CDN)

## Deployment

Vercel is configured via `.vercel/project.json`. The site deploys automatically on push to main. No special build configuration needed beyond what's in `vite.config.js`.

## Development Notes

- All inline JavaScript is in the HTML `<script>` tags (no separate JS files)
- CSS uses global scope with class-based organization
- No build-time dependencies beyond Vite itself (no TypeScript, frameworks, or bundled JS)
- The site is fully static after build; no server-side logic needed
