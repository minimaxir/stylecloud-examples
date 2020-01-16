# hello-world

An extremely basic example to demonstrate stylecloud's functionality. For apples-to-apples comparison, it creates a word cloud from the US Constitution as the [world_cloud hello world example](https://github.com/amueller/word_cloud/blob/master/examples/simple.py) does.

## Base stylecloud: text input only

![](stylecloud1.png)

The quickest way to create a stylecloud with no configuration:

Python:

```python
import stylecloud

stylecloud.gen_stylecloud(file_path='constitution.txt')
```

CLI:

```sh
stylecloud --file_path constitution.txt
```

## Customize Icon, Palette, and Background

![](stylecloud2.png)

You can change the icon, palette, and background to increase style.

Python:

```python
import stylecloud

stylecloud.gen_stylecloud(file_path='constitution.txt',
                          icon_name='fas fa-dog',
                          palette='colorbrewer.diverging.Spectral_11',
                          background_color='black')
```

CLI:

```sh
stylecloud --file_path constitution.txt --icon_name 'fas fa-dog' --palette colorbrewer.diverging.Spectral_11 --background_color black
```

## Add a gradient

![](stylecloud3.png)

Specifying a gradient direction (`horizontal` or `vertical`) will cause the words to behave as if affected by a color gradient.

It is strongly recommended you use a nondefault palette (i.e. a non-qualitative palette) if adding a gradient.

Python:

```python
import stylecloud

stylecloud.gen_stylecloud(file_path='constitution.txt',
                          icon_name='fas fa-dog',
                          palette='colorbrewer.diverging.Spectral_11',
                          background_color='black',
                          gradient='horizontal')
```

CLI:

```sh
stylecloud --file_path constitution.txt --icon_name 'fas fa-dog' --palette colorbrewer.diverging.Spectral_11 --background_color black --gradient horizontal
```

## Use Specific Colors For Text

![](stylecloud4.png)

You can manually specify the color(s) of the text with the `colors` parameter, overriding the palettes. This can be useful for specific branding, or high-contrast visualizations.

```python
import stylecloud

stylecloud.gen_stylecloud(file_path='constitution.txt',
                          colors='white',
                          background_color='#1A1A1A')
```

```sh
stylecloud --file_path constitution.txt --colors white --background_color '#1A1A1A'
```

### Advanced Specific Colors

![](stylecloud5.png)

Colors adapted from the [Flat UI Colors](https://flatuicolors.com/palette/defo) palette:

```python
import stylecloud

stylecloud.gen_stylecloud(file_path='constitution.txt',
                          colors=['#ecf0f1', '#3498db', '#e74c3c'],
                          background_color='#1A1A1A')
```

```sh
stylecloud --file_path constitution.txt --colors "['#ecf0f1', '#3498db', '#e74c3c']" --background_color '#1A1A1A'
```

### Nonsquare Sizes

![](stylecloud6.png)

You can specify a nonsquare size if you want the stylecloud to be more minimalist. (or make a good desktop wallpaper)

```python
import stylecloud

stylecloud.gen_stylecloud(file_path='constitution.txt',
                          icon_name='fas fa-globe',
                          colors='white'
                          background_color='#1A1A1A',
                          size=(768, 512))
```

```sh
stylecloud --file_path constitution.txt --icon_name 'fas fa-globe' --colors 'white' --background_color '#1A1A1A' --size '(768, 512)'
```

## Invert Mask

![](stylecloud7.png)

You can invert the mask such that the text occupies all the area *except* the icon mask. Works great for thinner icons and nonsquare sizes!

```python
import stylecloud

stylecloud.gen_stylecloud(file_path='constitution.txt',
                          icon_name='fas fa-globe',
                          colors='white'
                          background_color='#1A1A1A',
                          size=(768, 512),
                          invert_mask=True)
```

```sh
stylecloud --file_path constitution.txt --icon_name 'fas fa-globe' --colors 'white' --background_color '#1A1A1A' --size '(768, 512)' --invert_mask True
```