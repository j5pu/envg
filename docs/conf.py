"""Sphinx configuration."""
project = "envg"
author = "José A. Puértolas"
copyright = "2023, José A. Puértolas"
extensions = [
    "sphinx.ext.autodoc",
    "sphinx.ext.napoleon",
    "sphinx_click",
    "myst_parser",
]
autodoc_typehints = "description"
html_theme = "furo"
