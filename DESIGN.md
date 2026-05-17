---
name: High-Contrast To-Do
colors:
  surface: '#f9f9f9'
  surface-dim: '#dadada'
  surface-bright: '#f9f9f9'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f3f3f3'
  surface-container: '#eeeeee'
  surface-container-high: '#e8e8e8'
  surface-container-highest: '#e2e2e2'
  on-surface: '#1a1c1c'
  on-surface-variant: '#4c4546'
  inverse-surface: '#2f3131'
  inverse-on-surface: '#f1f1f1'
  outline: '#7e7576'
  outline-variant: '#cfc4c5'
  surface-tint: '#5e5e5e'
  primary: '#000000'
  on-primary: '#ffffff'
  primary-container: '#1b1b1b'
  on-primary-container: '#848484'
  inverse-primary: '#c6c6c6'
  secondary: '#5d5f5f'
  on-secondary: '#ffffff'
  secondary-container: '#dfe0e0'
  on-secondary-container: '#616363'
  tertiary: '#000000'
  on-tertiary: '#ffffff'
  tertiary-container: '#1b1b1b'
  on-tertiary-container: '#848484'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#e2e2e2'
  primary-fixed-dim: '#c6c6c6'
  on-primary-fixed: '#1b1b1b'
  on-primary-fixed-variant: '#474747'
  secondary-fixed: '#e2e2e2'
  secondary-fixed-dim: '#c6c6c7'
  on-secondary-fixed: '#1a1c1c'
  on-secondary-fixed-variant: '#454747'
  tertiary-fixed: '#e2e2e2'
  tertiary-fixed-dim: '#c6c6c6'
  on-tertiary-fixed: '#1b1b1b'
  on-tertiary-fixed-variant: '#474747'
  background: '#f9f9f9'
  on-background: '#1a1c1c'
  surface-variant: '#e2e2e2'
typography:
  display:
    fontFamily: Instrument Serif
    fontSize: 48px
    fontWeight: '400'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Instrument Serif
    fontSize: 32px
    fontWeight: '400'
    lineHeight: '1.2'
  headline-md:
    fontFamily: Instrument Serif
    fontSize: 24px
    fontWeight: '400'
    lineHeight: '1.2'
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.5'
  label-bold:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '600'
    lineHeight: '1.2'
  label-sm:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '500'
    lineHeight: '1.2'
spacing:
  unit: 4px
  xs: 4px
  sm: 8px
  md: 16px
  lg: 24px
  xl: 32px
  container-margin: 20px
  stack-gap: 12px
---

## Brand & Style
The design system is built on a foundation of clarity, precision, and high-impact minimalism. It targets professionals and enthusiasts who value focus over distraction. The visual identity draws from the **High-Contrast / Bold** and **Minimalist** movements, utilizing a strict monochromatic base to elevate the content—the user's tasks. 

The emotional response should be one of "structured calm." By removing unnecessary shadows, gradients, and ornamentation, the interface feels immediate and decisive. The contrast between the editorial 'Instrument Serif' and the utilitarian 'Inter' creates a sophisticated, boutique aesthetic that feels both modern and timeless.

## Colors
The palette is intentionally restricted to emphasize hierarchy through value rather than hue.
- **Primary & Background:** A pure #FFFFFF background ensures maximum whitespace "breathing room." #000000 is used for all primary actions, headers, and essential structural lines to provide a grounded, high-contrast experience.
- **Accent Blue:** A vibrant blue (#2563EB) is used sparingly for interactive states (e.g., active toggles or progress indicators) to guide the eye without breaking the monochromatic aesthetic.
- **Soft Grey:** Used for secondary backgrounds (like task categories) or inactive states to prevent the UI from feeling overly aggressive.

## Typography
This design system employs a typographic pairing that balances personality with function. 
- **Instrument Serif:** Reserved for headings and large display moments. Its elegant, thin strokes provide an editorial feel that contrasts against the bold, black elements.
- **Inter:** Used for all functional interface elements, task descriptions, and labels. Its high x-height and neutral character ensure legibility even at small sizes within list items.
- **Scale:** Large display sizes should use negative letter spacing to feel "tighter" and more intentional.

## Layout & Spacing
The layout follows a **Fluid Grid** model with generous margins to prevent elements from feeling cramped.
- **Rhythm:** A 4px baseline grid governs all vertical spacing. 
- **Margins:** Mobile screens should maintain a minimum 20px horizontal margin to support the "clean lines" aesthetic.
- **Density:** Favor "low density" layouts. Task items should have ample padding (16px–24px) to ensure the interface feels premium and easy to navigate via touch.

## Elevation & Depth
In keeping with the minimalist high-contrast theme, this design system avoids traditional shadows. 
- **Bold Borders:** Depth is communicated through 1px or 2px solid black borders. 
- **Tonal Layering:** Instead of shadows, use "Soft Grey" (#F2F2F2) to differentiate nested elements or secondary containers from the primary white background.
- **Stark Overlays:** Modals and bottom sheets should appear as solid white blocks with a heavy black outline or a dimming "scrim" (black at 40% opacity) to separate them from the main task list.

## Shapes
The design system utilizes **Sharp** (0px) corners for a modernist, architectural feel. 
- **Consistency:** All buttons, cards, checkboxes, and input fields must feature 90-degree angles. 
- **Exceptions:** Very small icons or decorative progress bars may use minimal rounding if necessary for legibility, but the structural UI remains strictly rectangular. This reinforces the "Bold/Minimalist" brand personality.

## Components
- **Primary Buttons:** Solid black background with white 'Inter' text. Large, rectangular, and spanning the full width of the container when used as a Call to Action.
- **Secondary Buttons:** White background with a 2px black border.
- **Task List Items:** Separated by thin 1px horizontal lines or generous whitespace. Completed states use a "Soft Grey" strike-through or a subtle opacity reduction to 40%.
- **Checkboxes:** Square, 20px x 20px. When checked, they fill solid black with a white checkmark.
- **Input Fields:** Bottom-border only (1px black) or a full rectangular stroke. Floating labels in 'Inter' small caps.
- **Chips/Tags:** Small rectangular boxes with a light grey background and black text, used for categorizing tasks (e.g., "Work," "Personal").
- **FAB (Floating Action Button):** A large black square with a white "+" icon, positioned in the bottom right with no shadow.