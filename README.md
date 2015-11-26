# Vault

## Introduction
Vault is a front-end pattern library, which holds patterns that are used across a site. Examples of patterns are navbars, buttons, and headings.

It is a rails implementation of [Rareloop's Primer](https://github.com/Rareloop/primer) tool.

#### Key Features
- Quick access to raw HTML
- View components/elements in isolation
- Encourages modular development (DRY)

#### Notes
- Patterns (where possible (see nav)) should be free of any grid bias. Columns and rows should be added at template level, rather than pattern level.

## What makes this different to the existing style guide?
This is more suited to working on patterns from a development standpoint. It also encourages modular design by forcing patterns in to their own partials.

## About Patterns
Patterns consist of both elements and components.

Elements are the most basic patterns. Buttons, form inputs, and headings (h1, h2, h3...) are all examples of elements.

Components are standalone blocks that can be used across the site. They can consist of multiple elements. For example an image slider, or a navigation bar.

[More Information](http://patternlab.io/about.html)