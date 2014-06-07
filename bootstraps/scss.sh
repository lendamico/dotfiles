# set up sass
take _scss
take vendor
bourbon install
neat install 
bitters install
cd ..
curl https://raw.githubusercontent.com/necolas/normalize.css/master/normalize.css > _normalize.scss
touch _config.scss _mixins.scss _typography.scss _links.scss _lists.scss _media.scss _buttons.scss _header.scss _nav.scss _forms.scss _footer.scss _layout.scss _shame.scss

# create manifest
echo "/* Base styles */
@import 'normalize';

/* 3rd-party frameworks */
@import 'vendor/bourbon/bourbon';
@import 'vendor/neat/neat';
@import 'vendor/base/base';

/* Setup */
@import 'config';
@import 'mixins';

@import 'typography';
@import 'links';
@import 'lists';
@import 'buttons';
@import 'media';
@import 'header';
@import 'nav';
@import 'forms';
@import 'footer';

/* Layout */
@import 'layout';

/* Clean this up later */
@import 'shame';" > manifest.scss
echo "Opening your SCSS directory…"
open .
mate .
