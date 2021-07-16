<img src="https://raw.githubusercontent.com/xyhxx/program_preview/master/logo/shadow_clip.png" />

# proste_shadow_clip

使用clip裁剪widget并包裹阴影，阴影的裁剪路径也会遵循clipper的路径

## Usage

> 你可以使用 <a href="https://github.com/xyhxx/flutter_bezier_curve">proste_bezier_curve</a> or <a href="https://github.com/lohanidamodar/flutter_custom_clippers">flutter_custom_clippers</a> 创建 clipper

| parameter | parameterType |
| :-- | :---: |
| child | Widget | 
| shadow | List\<Shadow\> | 
| clipper | CustomClipper\<Path\> |
| repaint | bool? |
| key | Key? |

``` dart

ProsteShadowClip(
  child: ...(widget),
  shadow: [
    ...BoxShadow(),
  ],
  clipper: ...(clipper),
);

```

如果你在使用中有任何的问题或者建议，欢迎到 <a href="https://github.com/xyhxx/proste_shadow_clip/issues">issues</a>,我会在看到的第一时间进行回复.

```
MIT License

Copyright (c) 2021 xyhxx

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

```