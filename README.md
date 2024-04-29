[![Hugo build and deploy](https://github.com/attajak/FixIt/actions/workflows/deploy.yml/badge.svg)](https://github.com/attajak/FixIt/actions/workflows/deploy.yml)

<!-- # HUGO

Hugo is a static site generator that makes it easy to setup your own blog or personal website.

## Adding content

You can manually create content files (for example as `content/<CATEGORY>/<FILE>.<FORMAT>`) and provide metadata in them, however you can use the `new` command to do a few things for you (like add title and date):

```sh
$ hugo new posts/my-post.md
```

by default, this template creates a `posts/hello.md` for you, feel free to remove / rename it if you want.

## Changing themes

- Explore themes [here](https://themes.gohugo.io/)
- Download theme to `themes/<NAME>`

```sh
git clone https://github.com/siegerts/hugo-theme-basic themes/basic
```

- Change `theme` entry in `config.toml` to the theme name

For more, checkout [official documentations](https://gohugo.io/documentation/). -->

Head to the documentation page linked below for a complete guidence to get started with the [FixIt](https://github.com/hugo-fixit/FixIt) theme.

{{< link href="https://fixit.lruihao.cn/documentation/" content="All Documentation - FixIt" title="documentation of FixIt Theme" card=true >}}

## Quick Start

For a complete quick start, see this [page](https://fixit.lruihao.cn/documentation/getting-started/).

### Prerequisites

- [Go](https://go.dev/dl/)
- [Hugo](https://gohugo.io/installation/): >= 0.112.0 (extended version)

### Use this Template

1. Click **Use this template**, and create your repository on GitHub.

    <img width="913" alt="image" src="https://github.com/hugo-fixit/hugo-fixit-starter1/assets/33419593/d5fbd940-3ffd-4750-b1e6-4e87b50b0696">

2. Once the repository is created, just clone and enjoy it!

    ```bash
    # Clone with your own repository url
    git clone --recursive https://github.com/<your_name>/<your_blog_repo>.git
    ```

### Launching the Site

```bash
# Development environment
hugo server
# Production environment
hugo server -e production
```

### Build the Site

When your site is ready to deploy, run the following command:

```bash
hugo
```

### Update Theme

Afterwards you can upgrade the theme with the following command:

```bash
# Update theme manually
hugo mod get -u github.com/hugo-fixit/FixIt@latest
hugo mod tidy
```

<details>
  <summary>Start via NPM script</summary>

  ```bash
  # build the blog
  npm run build
  # run a local debugging server with watch
  npm run server
  # run a local debugging server in production environment
  npm run server:production
  # update theme submodules
  npm run update:theme
  ```

</details>

## Feedback

Whether it's questions, ideas, bugs or pull requests, all feedback is welcome!

Head over to the [issues](https://github.com/hugo-fixit/FixIt/issues) or [discussions](https://github.com/hugo-fixit/FixIt/discussions) tracker.
