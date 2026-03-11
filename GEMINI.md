# GEMINI.md - Project Context

## Project Overview
This is a personal blog and portfolio website built with **Hugo** and the **FixIt** theme. It is configured as a multi-language site with **Thai** (`th`) as the primary language and **English** (`en`) as the secondary. The project uses **Hugo Modules** to manage the theme and its various components.

### Key Technologies
- **Hugo**: Static site generator (Extended version `0.157.0`).
- **FixIt Theme**: A feature-rich Hugo theme with a focus on performance and usability (`fixit-bundle` module).
- **Hugo Modules**: Used for theme and component management.
- **Go**: Language used for Hugo and Modules (`1.26.0`).
- **Node.js/npm**: Used for convenience scripts (`24.14.0`).
- **Dart Sass**: Used for SCSS compilation (`1.97.3`).
- **Cloudflare Pages**: Hosting platform, configured via `wrangler.toml` and `build.sh`.
- **PWA**: Progressive Web App support enabled.
- **Fuse.js**: Client-side search engine.

## Directory Structure
- `config/_default/`: Detailed Hugo configuration split into multiple TOML files.
  - `hugo.toml`: Core site settings (title, language, baseURL).
  - `params.toml`: Theme-specific parameters and feature toggles (PWA, Search, Components).
  - `module.toml`: Hugo module imports and requirements.
  - `menus.toml`: Navigation menu definitions.
  - `outputs.toml`: Output format configuration.
- `content/`: Markdown files for pages and posts.
  - `posts/`: Blog posts.
  - `projects/`: Project list page.
- `data/`: YAML files for structured data.
  - `projects.yml`: Data for the projects page.
  - `rewards_log.yml`: Data for rewards/donations.
- `i18n/`: Translation files for Thai (`th.toml`) and English (`en.toml`).
- `layouts/`: Custom HTML templates and overrides.
  - `_partials/custom.html`: Custom partial overrides.
- `assets/`: Custom SCSS and JavaScript files.
  - `css/_custom.scss`, `css/_override.scss`: Custom styling.
  - `js/custom.js`: Custom scripts.
- `static/`: Static assets like images, favicons, and site manifests.
- `wrangler.toml`: Cloudflare Pages configuration.
- `build.sh`: Custom build script for Cloudflare Pages (installs toolchain).
- `package.json`: NPM scripts for development and building.
- `go.mod`: Hugo module dependencies.

## Building and Running
The project includes several helper scripts in `package.json`:

- **Development Server**:
  ```bash
  npm run server
  # or
  npm start
  ```
  Runs Hugo in server mode with drafts enabled, auto-reload, and local binding.

- **Production Build**:
  ```bash
  npm run build
  ```
  Generates the static site in the `public/` directory with minification and garbage collection.

- **Clean Build Artifacts**:
  ```bash
  npm run clean
  ```

- **Update Theme Modules**:
  ```bash
  npm run mod:update
  ```

- **Create New Content**:
  ```bash
  npm run content:new posts/my-new-post.md
  ```

- **List All Content**:
  ```bash
  npm run content:list
  ```

## Development Conventions
- **Language**: Default language is Thai (`th`). Content is primarily managed in Markdown. Multi-language support is enabled.
- **Configuration**: Site behavior and theme features are managed in `config/_default/`. Use `params.toml` for theme toggles and `hugo.toml` for core settings.
- **Components**: The site uses `fixit-bundle`. Several custom components (flyfish, mDevtools, projects) are injected via `params.toml` [customPartials].
- **Styling**: Custom styles should be added to `assets/css/_custom.scss` or `assets/css/_override.scss`.
- **Scripts**: Custom JavaScript should be added to `assets/js/custom.js`.
- **Git**: Never commit the `public/` or `resources/` directories. Hugo Modules are used instead of git submodules where possible.
