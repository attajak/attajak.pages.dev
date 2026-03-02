# GEMINI.md - Project Context

## Project Overview
This is a personal blog and portfolio website built with **Hugo** and the **FixIt** theme. It is configured as a multi-language site with **Thai** as the primary language. The project uses **Hugo Modules** to manage the theme and its various components.

### Key Technologies
- **Hugo**: Static site generator.
- **FixIt Theme**: A feature-rich Hugo theme with a focus on performance and usability.
- **Hugo Modules**: Used for theme and component management.
- **Node.js/npm**: Used for convenience scripts.
- **GitHub Actions**: Automated build and deployment to GitHub Pages/Cloudflare Pages.
- **PWA**: Progressive Web App support enabled.
- **Fuse.js**: Client-side search engine.

## Directory Structure
- `config/_default/`: Detailed Hugo configuration split into multiple TOML files.
  - `hugo.toml`: Core site settings (title, language, baseURL).
  - `params.toml`: Theme-specific parameters and feature toggles.
  - `module.toml`: Hugo module imports (theme components).
  - `menus.toml`: Navigation menu definitions.
- `content/`: Markdown files for pages and posts.
  - `posts/`: Blog posts.
  - `projects/`: Project list page.
- `data/`: YAML files for structured data (e.g., `projects.yml`).
- `layouts/`: Custom HTML templates and overrides.
- `assets/`: Custom SCSS and JavaScript files.
- `static/`: Static assets like images, favicons, and site manifests.

## Building and Running
The project includes a `package.json` with several helper scripts:

- **Development Server**:
  ```bash
  npm start
  # or
  npm run server
  ```
  Runs Hugo in server mode with drafts enabled and auto-reload.

- **Production Build**:
  ```bash
  npm run build
  ```
  Generates the static site in the `public/` directory with minification and garbage collection.

- **Create New Post**:
  ```bash
  npm run create posts/my-new-post.md
  ```

- **Update Theme Modules**:
  ```bash
  npm run update
  ```

## Development Conventions
- **Language**: Default language is Thai (`th`). Content is primarily managed in Markdown.
- **Configuration**: Changes to site behavior or theme features should be made in `config/_default/`. Avoid modifying `hugo.toml` directly if the change belongs in `params.toml`.
- **Components**: The site uses several `hugo-fixit` components (e.g., `fixit-bundle`, `component-projects`). Check `config/_default/module.toml` for imported modules.
- **Styling**: Custom styles should be added to `assets/css/_custom.scss`.
- **Scripts**: Custom JavaScript should be added to `assets/js/custom.js`.
- **Git**: Never commit the `public/` or `resources/` directories as they are generated during build.
