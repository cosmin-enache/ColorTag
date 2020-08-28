# ColorTag
### > A Ruby gem for simplified shell text colouring and formatting (using ANSI escape sequences)

### Installation:

1. Download the most recent **colortag-x.x.x.gem** file
2. Change Directory to where the gem file is located
3. `gem install colortag-x.x.x.gem`

### Set-up:

Just add:
```
require 'colortag'

include ColorTag
```

To your desired **.rb** file

### Usage:

This gem allows for the use of a simpler and more intuitive method of implementing ANSI escape sequences to color and format shell text.

Sequences are in the format **\<xxx:TEXTHERE\>**, where `xxx` stands for special format characters. These sequences should come easily to anyone who is familiar with HTML.

### Current Sequences:

**Decorations**

`<b:>` -> Emboldens text

`<u:>` -> Underlines text

`<r:>` -> ANSI reverses text


**Colours**

`<fr:>` -> Red font

`<fy:>` -> Yellow font

`<fg:>` -> Green font

`<fb:>` -> Blue font


### Example Usage:

`cputs "<b:All> we <u:need> is <fr:red>!"`

The example above prints: 

-> `All` in bold

-> `need` underlined

-> `red` in red
