# Images Directory

This directory contains all images for the Cristina Carrizosa photography website.

## Directory Structure

```
images/
├── home/                  # Home page photos (home-1.jpg, home-2.jpg, home-3.jpg)
├── interior/              # Interior portfolio photos (interior-1.jpg through interior-12.jpg)
├── lifestyle/             # Lifestyle portfolio photos (lifestyle-1.jpg through lifestyle-12.jpg)
├── hospitality/           # Hospitality portfolio photos (hospitality-1.jpg through hospitality-12.jpg)
├── travel/                # Travel portfolio photos (travel-1.jpg through travel-12.jpg)
├── products/              # Product portfolio photos (products-1.jpg through products-12.jpg)
└── projects/
    ├── dhalia-society/    # Dhalia Society project photos (dhalia-1.jpg through dhalia-12.jpg)
    ├── scarves/           # Scarves project photos (scarves-1.jpg through scarves-8.jpg)
    ├── thirdworld/        # Thirdworld project photos (thirdworld-1.jpg through thirdworld-8.jpg)
    ├── salud-vitamins/    # Salud Vitamins project photos (salud-1.jpg through salud-8.jpg)
    ├── marin-homes/       # Marin Homes project photos (marin-1.jpg through marin-12.jpg)
    ├── hacienda-quito/    # Hacienda Quito project photos (hacienda-1.jpg through hacienda-12.jpg)
    ├── terracycle/        # TerraCycle project photos (terracycle-1.jpg through terracycle-8.jpg)
    ├── weddings/          # Weddings project photos (weddings-1.jpg through weddings-12.jpg)
    └── style-to-watch/    # Style to Watch project photos (style-1.jpg through style-8.jpg)
```

## Adding Images

1. **Home Page**: Add 3 images named `home-1.jpg`, `home-2.jpg`, `home-3.jpg` to the `home/` directory
2. **Portfolio Pages**: Add 12 images per category, numbered sequentially (e.g., `interior-1.jpg` to `interior-12.jpg`)
3. **Project Pages**: Add images as specified in each project subdirectory (8-12 images depending on the project)

## Image Recommendations

- **Format**: JPEG (.jpg) is recommended for photographs
- **Resolution**: 1920px on the longest edge for portfolio/project images, 2400px for hero images
- **File Size**: Optimize images to 200-500KB each for fast loading
- **Aspect Ratio**: 4:3 or 3:2 works well with the grid layout
- **Quality**: 80-85% JPEG quality is a good balance

## Image Optimization Tools

- **Online**: TinyJPG, Squoosh, ImageOptim
- **Command Line**: `imagemagick`, `jpegoptim`
- **Photoshop**: Save for Web (JPEG, 80-85 quality)

## Tips

- Use consistent naming conventions
- Keep original high-res copies in a separate backup location
- Consider adding alt text by editing the `.qmd` files: `![Alt text](path/to/image.jpg)`
- Test image loading performance after adding images
- The layout automatically adjusts to missing images, so you can add them gradually

## Customization

You can adjust the number of images displayed by editing the respective `.qmd` files in:
- `portfolio/` directory for portfolio pages
- `projects/` directory for project pages
- `index.qmd` for the home page

