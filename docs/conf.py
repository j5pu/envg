import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parent.parent / "src"))

project = "envg"
author = "José Antonio Puértolas Montañés"
copyright = "2023, José Antonio Puértolas Montañés"
extensions = [
    "myst_parser",
    "sphinx.ext.autodoc",
    "sphinx.ext.napoleon",
    "sphinx_click",
]
autodoc_default_flags = ["members"]
autodoc_typehints = "description"
toc_object_entries = True
toc_object_entries_show_parents = "all"
html_theme = "furo"
