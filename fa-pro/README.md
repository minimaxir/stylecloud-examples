# fa-pro

Examples using Font Awesome Pro. This assumes you are using the font and CSS files in accordance with the [Font Awesome Pro License](https://fontawesome.com/license) (and subsequently those files are not included here in these examples).

You can download the Pro files, if logged in, at the [Font Awesome Download page](https://fontawesome.com/download).

stylecloud is not compatible with the FA duotone style.

## Base stylecloud w/ a FA Pro-only Icon

The command is mostly the same as the other examples, except you must provide both a `pro_icon_path` and `pro_css_path` appropriately.

![](stylecloud1.png)

Python:

```python
import stylecloud

stylecloud.gen_stylecloud(file_path='constitution.txt',
                          icon_name='fas fa-alien',
                          palette='colorbrewer.sequential.Greens_5',
                          background_color='black',
                          pro_icon_path='fa-solid-900.ttf',
                          pro_css_path='fontawesome.min.css')
```

CLI:

```sh
stylecloud --file_path constitution.txt --icon_name 'fas fa-alien' --palette colorbrewer.sequential.Greens_5 --background_color black --pro_icon_path fa-solid-900.ttf --pro_css_path fontawesome.min.css
```

![](stylecloud2.png)

Python:

```python
import stylecloud

stylecloud.gen_stylecloud(file_path='constitution.txt',
                          icon_name='fas fa-tree-large',
                          colors=['#27ae60', '#c0392b', '#bdc3c7']
                          background_color='white',
                          pro_icon_path='fa-solid-900.ttf',
                          pro_css_path='fontawesome.min.css')
```

CLI:

```sh
stylecloud --file_path constitution.txt --icon_name 'fas fa-tree-large' --colors "['#27ae60', '#c0392b', '#bdc3c7']" --background_color white --pro_icon_path fa-solid-900.ttf --pro_css_path fontawesome.min.css
```

## Light Weights

![](stylecloud3.png)

Exclusive to Font Awesome Pro are light weight icons. (however, due to low density, your mileage may vary in resulting stylecloud quality)

Python:

```python
import stylecloud

stylecloud.gen_stylecloud(file_path='constitution.txt',
                          icon_name='fal fa-meh-rolling-eyes',
                          palette='colorbrewer.sequential.YlOrRd_9',
                          background_color='black',
                          gradient='vertical'
                          pro_icon_path='fa-light-300.ttf',
                          pro_css_path='fontawesome.min.css')
```

CLI:

```sh
stylecloud --file_path constitution.txt --icon_name 'fal fa-meh-rolling-eyes' --palette colorbrewer.sequential.YlOrRd_9 --background_color black --gradient vertical --pro_icon_path fa-light-300.ttf --pro_css_path fontawesome.min.css
```

## Light Weights + Invert Mask

![](stylecloud4.png)

However, inverting the icon mask and using a light weighted icon can work well!

```python
import stylecloud

stylecloud.gen_stylecloud(file_path='constitution.txt',
                          icon_name='fal fa-meh-rolling-eyes',
                          palette='colorbrewer.sequential.YlOrRd_9',
                          background_color='black',
                          gradient='vertical'
                          pro_icon_path='fa-light-300.ttf',
                          pro_css_path='fontawesome.min.css',
                          invert_mask=True)
```

CLI:

```sh
stylecloud --file_path constitution.txt --icon_name 'fal fa-meh-rolling-eyes' --palette colorbrewer.sequential.YlOrRd_9 --background_color black --gradient vertical --pro_icon_path fa-light-300.ttf --pro_css_path fontawesome.min.css --invert_mask True
```
