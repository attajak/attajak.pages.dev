Head to the documentation page linked below for a complete guidence to get started with the [FixIt](https://github.com/hugo-fixit/FixIt) theme.

[All Documentation - FixIt](https://fixit.lruihao.cn/documentation)

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
