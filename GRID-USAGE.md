# Grid System Usage Guide

This site now has two flexible grid systems for displaying images:

## 1. Portfolio Grid (Fixed Aspect Ratio)
Use this for a clean, uniform grid where all images are cropped to 4:3 aspect ratio.

## 2. Masonry Grid (Dynamic Heights) ⭐ RECOMMENDED
Use this for a Pinterest-style layout that preserves original image aspect ratios.

---

## Auto-Load Images (R Method) ⭐ RECOMMENDED

Use an R code chunk to automatically load all images from a folder:

```markdown
::: {.masonry-grid}
```{r}
#| echo: false
#| results: asis

# Auto-generate masonry grid from folder
image_files <- list.files("../images/interior", full.names = TRUE, pattern = "\\.(jpg|jpeg|png|webp|gif)$")

for (img in image_files) {
  cat(sprintf('![](%s){.gallery-img loading="lazy" group="interior-gallery"}\n\n', img))
}
```
:::
```

**Benefits:**
- ✅ Loads ALL images from the folder (any filename)
- ✅ Includes lightbox gallery functionality with `group` attribute
- ✅ Adds lazy loading for better performance
- ✅ Automatically picks up new images when you re-render

**For other portfolio pages:**
Just change the folder path and group name:
- `../images/lifestyle` with `group="lifestyle-gallery"`
- `../images/hospitality` with `group="hospitality-gallery"`
- etc.

## Quick Markup Generator (Alternative)

To quickly generate markup for all images in a folder, use the helper script:

```bash
./generate-image-markup.sh images/interior
```

This will output the masonry grid markup for all images in that folder. Copy and paste it into your QMD file!

---

## Manual Method

Control exactly which images appear and in what order:

### Masonry Grid:
```markdown
::: {.masonry-grid}
::: {.masonry-item}
![](../images/folder/photo1.jpg)
:::

::: {.masonry-item}
![](../images/folder/photo2.jpg)
:::
:::
```

### Portfolio Grid:
```markdown
::: {.portfolio-grid}
::: {.portfolio-item}
![](../images/folder/photo1.jpg)
:::

::: {.portfolio-item}
![](../images/folder/photo2.jpg)
:::
:::
```

---

## Tips

- Masonry grid shows 3 columns on desktop, 2 on tablet, 1 on mobile
- Portfolio grid crops all images to 4:3 aspect ratio
- Both grids have hover effects (slight zoom and opacity change)
- The R auto-load method works with jpg, jpeg, png, webp, and gif files

