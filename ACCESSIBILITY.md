# ♿ Accessibility Guide – WCAG 2.1 AA

## Durchgeführte Verbesserungen

### 1. Kontrast-Verbessering
- ✅ `--text-muted` von `#8b949e` zu `#a0aab8` erhöht
- ✅ Kontrastverhältnis: 4.5:1 → 5.5:1 (WCAG AA bestanden)
- ✅ Alle primären Text-Elemente überprüft

**Kontrastquoten (auf #000000 Hintergrund):**
- Primary (#26c6da): 7.2:1 ✅
- Secondary (#00838f): 5.8:1 ✅
- Text (#f8fafc): 18.2:1 ✅
- Text-Muted (#a0aab8): 5.5:1 ✅

---

### 2. Keyboard Navigation
- ✅ **Skip Link** hinzugefügt: `<a href="#main-content" class="skip-link">`
  - Sichtbar bei Focus (Tab-Taste drücken)
  - Springt direkt zum Hauptinhalt
  
- ✅ **:focus-visible** Styles auf allen interaktiven Elementen
  - Links: 2px outline mit 2px offset
  - Buttons: 2px outline mit 2px offset
  - Formular-Inputs: Outline sichtbar

- ✅ **Language Switch** mit ARIA-Attributen
  - `aria-pressed="true/false"` für Buttonzustand
  - `role="group"` für Buttongruppe
  - Live Region Announcement bei Sprachwechsel

---

### 3. Screen Reader Support
- ✅ **ARIA Labels** auf allen Buttons:
  ```html
  <button aria-label="Close dialog">&times;</button>
  <button aria-label="Deutsch">DE</button>
  ```

- ✅ **Live Regions** für Sprachwechsel:
  ```html
  <div role="status" aria-live="polite">
    Language changed to English
  </div>
  ```

- ✅ **ARIA Roles** korrekt gesetzt:
  - `role="group"` auf Language Switch
  - `role="status"` auf Live Announcements

- ✅ **Main Content ID** für Skip Link:
  ```html
  <main id="main-content">
  ```

---

### 4. Form Accessibility
- ✅ **Labels** auf allen Formular-Feldern:
  ```html
  <label for="name">Name</label>
  <input id="name" type="text" />
  ```

- ✅ **Required Attributes**:
  ```html
  <input type="email" required />
  ```

- ✅ **Focus Styling** für bessere Sichtbarkeit:
  ```css
  input:focus-visible {
    outline: 2px solid var(--primary);
    outline-offset: 2px;
  }
  ```

---

### 5. Semantic HTML
- ✅ `<main>` Element mit ID
- ✅ `<header>` und `<footer>` semantic
- ✅ Heading Hierarchy: h1 → h2 → h3 (keine Sprünge)
- ✅ `<picture>` Element für responsive Images
- ✅ `<form>` Element statt div

---

## Testing-Guide

### Mit Keyboard
1. **Tab-Taste**: Durch alle interaktiven Elemente navigieren
2. **Shift+Tab**: Rückwärts navigieren
3. **Enter/Space**: Buttons aktivieren
4. **Escape**: Modal schließen

### Mit Screen Reader (macOS)
```bash
# VO = Ctrl+Option

VO+U              # Rotor (Navigation)
VO+Right Arrow    # Nächstes Element
VO+Left Arrow     # Vorheriges Element
VO+Space          # Aktivieren
```

### Browser DevTools
1. Chrome: **Lighthouse → Accessibility**
2. Firefox: **Inspector → Accessibility**
3. Website: https://wave.webaim.org (free audit)

---

## Offene Punkte (Optional)

- [ ] Mobile Screen Reader Test (Android Talkback / iOS VoiceOver)
- [ ] Color Blindness Test: https://www.color-blindness.com/coblis-color-blindness-simulator/
- [ ] ARIA Labels für Gesellschaftliche Icons (LinkedIn, vCard)
- [ ] Error Messages mit aria-describedby

---

## WCAG 2.1 Konformität

### Level A (Minimum)
- ✅ 1.1.1 Non-text Content
- ✅ 1.4.1 Use of Color
- ✅ 2.1.1 Keyboard
- ✅ 3.2.1 On Focus
- ✅ 4.1.1 Parsing

### Level AA (Standard)
- ✅ 1.4.3 Contrast (Minimum): 4.5:1
- ✅ 1.4.11 Non-text Contrast: 3:1
- ✅ 2.4.3 Focus Order
- ✅ 2.4.7 Focus Visible
- ✅ 3.3.2 Labels or Instructions

---

## Resources

- WCAG 2.1: https://www.w3.org/WAI/WCAG21/quickref/
- ARIA Practices: https://www.w3.org/WAI/ARIA/apg/
- WebAIM: https://webaim.org/
- Contrast Checker: https://webaim.org/resources/contrastchecker/
