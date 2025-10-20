# Cristina Carrizosa Photography Website

A modern, professional Quarto website showcasing photography and creative direction work across interior, lifestyle, hospitality, travel, and product photography.

## Website Structure

### Navigation

The website includes the following main sections:

1. **Home** - Hero section with featured photos and introduction
2. **About** - Services and link to Nelo Creative
3. **Portfolio** (dropdown menu)
   - Interior
   - Lifestyle
   - Hospitality
   - Travel
   - Products
4. **Projects** (dropdown menu)
   - Dhalia Society
   - Scarves
   - Thirdworld
   - Salud Vitamins
   - Marin Homes
   - Hacienda Quito
   - TerraCycle
   - Weddings
   - Style to Watch
5. **Contact** - Contact information and inquiry form

## Files & Directories

```
Cristina-Quarto/
├── _quarto.yml           # Main configuration file
├── index.qmd             # Home page
├── about.qmd             # About page
├── contact.qmd           # Contact page
├── styles.css            # Custom styling
├── portfolio/            # Portfolio pages
│   ├── interior.qmd
│   ├── lifestyle.qmd
│   ├── hospitality.qmd
│   ├── travel.qmd
│   └── products.qmd
├── projects/             # Project pages
│   ├── dhalia-society.qmd
│   ├── scarves.qmd
│   ├── thirdworld.qmd
│   ├── salud-vitamins.qmd
│   ├── marin-homes.qmd
│   ├── hacienda-quito.qmd
│   ├── terracycle.qmd
│   ├── weddings.qmd
│   └── style-to-watch.qmd
└── images/               # All website images
    ├── home/
    ├── interior/
    ├── lifestyle/
    ├── hospitality/
    ├── travel/
    ├── products/
    └── projects/
```

## Getting Started

### Prerequisites

- R and RStudio installed
- Quarto CLI installed (comes with recent RStudio versions)

### Preview the Website

In RStudio, open this project and run:

```r
quarto::quarto_preview()
```

This will open a preview of the website in your browser with live reload.

### Build the Website

To build the static website files:

```r
quarto::quarto_render()
```

This creates a `_site/` directory with all the HTML, CSS, and image files ready for deployment.

## Adding Content

### Adding Images

1. Place images in the appropriate directories under `images/`
2. Follow the naming conventions specified in `images/README.md`
3. Recommended: 1920px width, JPEG format, optimized for web

### Editing Text Content

All content is in `.qmd` (Quarto Markdown) files. To edit:

1. Open the relevant `.qmd` file in RStudio
2. Edit the text content
3. Save the file
4. Preview updates automatically if running `quarto_preview()`

### Customizing Styles

Edit `styles.css` to customize:
- Colors (defined in CSS variables at the top)
- Typography
- Layout spacing
- Grid layouts
- Button styles

## Design Features

- **Responsive Design**: Works on desktop, tablet, and mobile
- **Modern Grid Layouts**: Photo grids with hover effects
- **Clean Typography**: Professional, minimal design
- **Smooth Animations**: Subtle hover and transition effects
- **Full-Width Project Grids**: 4-column grids for project pages
- **Client List Layout**: Special layout for Interior portfolio page

## Customization

### Changing Colors

Edit the CSS variables in `styles.css`:

```css
:root {
  --primary-color: #2c3e50;    /* Main text and borders */
  --secondary-color: #95a5a6;  /* Subtitles */
  --accent-color: #3498db;     /* Hover states */
}
```

### Adding New Portfolio Categories

1. Create a new `.qmd` file in `portfolio/`
2. Add the page to `_quarto.yml` under the Portfolio menu
3. Create corresponding image directory

### Adding New Projects

1. Create a new `.qmd` file in `projects/`
2. Add the page to `_quarto.yml` under the Projects menu
3. Create corresponding image directory under `images/projects/`

## Deployment

### GitHub Pages

1. Push the repository to GitHub
2. Enable GitHub Pages in repository settings
3. Set source to `gh-pages` branch or `/docs` folder
4. Quarto can publish directly with: `quarto publish gh-pages`

### Netlify

1. Connect repository to Netlify
2. Build command: `quarto render`
3. Publish directory: `_site`

### Custom Server

Upload the contents of `_site/` to your web server via FTP or SSH.

## Inspiration

Design inspired by:
- [haggardart.work](https://www.haggardart.work/)
- [cristinacarrizosa.com](https://www.cristinacarrizosa.com/)

## Support

For Quarto documentation: [quarto.org](https://quarto.org)

For website customization help, refer to:
- [Quarto Websites](https://quarto.org/docs/websites/)
- [Quarto HTML Theming](https://quarto.org/docs/output-formats/html-themes.html)

