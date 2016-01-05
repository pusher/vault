# Vault
A better way to manage your front-end patterns

![Vault Screenshot](https://www.dropbox.com/s/k2e9wpm26a7wbhm/vault-screenshot.png?raw=1)

## The High Level
Vault is a front-end pattern library, which holds patterns that are used across a site. Examples of patterns are navbars, buttons, and headings.

It is a rails implementation of [Rareloop's Primer](https://github.com/Rareloop/primer) tool.

## Quick Start
1. Clone this repo somewhere safe

  ```sh
  git clone https://github.com/pusher/vault.git
  ```

2. Bundle install

  ```sh
  bundle install
  ```

3. To run vault locally, just spin up the rails server
  
  ```sh
  rails s
  ```

4. *(optional)*. Vault works best when used in a team. In order to keep everyone on the same page, it's always a good idea to have your library set up somewhere central (Heroku's free tier is great for this kind of thing).

## Creating new patterns
Adding a new pattern is simple. Just use the built in CLI:

```sh
rails generate component navigation/global/top
```

This will generate:
- ```stylesheets/components/navigation/global/_top.scss```
- ```views/components/navigation/global/_top.html.erb```
- a reference to your scss partial in application.scss

Patterns can be nested as many levels deep as is required

Creating elements follows the same pattern:
```sh
rails generate element forms/buttons/cta
```

## About Patterns
Patterns consist of both elements and components.

Elements are the most basic patterns. Buttons, form inputs, and headings (h1, h2, h3...) are all examples of elements.

Components are standalone blocks that can be used across the site. They can consist of multiple elements. For example an image slider, or a navigation bar.

[More Information](http://patternlab.io/about.html)

## Requests and Improvements
If you have any ideas for new features or a suggestion to improve Vault, feel free to create a PR, or open a [new issue](https://github.com/pusher/vault/issues/new).