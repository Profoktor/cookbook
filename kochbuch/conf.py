
import os
import sys
from datetime import date

sys.path.append(os.path.abspath('./_config'))
sys.path.append(os.path.abspath("./_ext"))

# Project Info
project = 'Kochbuch'
author = ''
current_date = date.today()
copyright = current_date.strftime("%d.%m.%Y") #+ ", " + author
version = current_date.strftime("%Y.%m.%d") 
language='de'

# Technical Settings
numfig = True

extensions = [
    'sphinxcontrib.jquery', 
    'sphinx_design'
]

# HTML output options
html_theme = 'sphinx_rtd_theme'  # Used theme. The sphinx rtd theme must be installed seperately
html_logo = 'img/kitchen.png'  # An image used in the top left of the documentation
#html_favicon = 'img/icon.ico'  # An image used as icon in the browser
html_copy_source = True  # true, to enable search result preview
html_title = project  # Title of the HTML in the browser
html_static_path = ['_static']  # Additional css files
html_css_files = ['theme_overrides.css']  # Additional css files to override wide tables
templates_path = ['_templates']
html_theme_options = {
    'style_external_links': True,
    'style_nav_header_background': '#004666',
    'prev_next_buttons_location': 'both',
    'navigation_depth': 2
}
html_context = {
    'source_url_prefix': 'https://github.com/Profoktor/cookbook/blob/main/kochbuch/'
}
