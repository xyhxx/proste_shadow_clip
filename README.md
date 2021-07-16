<img src="https://raw.githubusercontent.com/xyhxx/program_preview/master/logo/shadow_clip.png" />

Englist | <a href="https://github.com/xyhxx/proste_shadow_clip/blob/main/doc/cn.md">中文</a>

# proste_shadow_clip

Clip widget and draw shadow, which also follows the path of clip.

## Usage

> you can use <a href="https://github.com/xyhxx/flutter_bezier_curve">proste_bezier_curve</a> or <a href="https://github.com/lohanidamodar/flutter_custom_clippers">flutter_custom_clippers</a> to create clipper

| parameter | parameterType |
| :-- | :---: |
| child | Widget | 
| shadow | List\<Shadow\> | 
| clipper | CustomClipper\<Path\> |
| repaint | bool? |
| key | Key? |

``` dart

Center(
  child: ProsteShadowClip(
    child: Container(
      width: 300,
      height: 100,
      color: Colors.pink,
    ),
    shadow: [
      BoxShadow(
        blurRadius: 5,
        spreadRadius: 2,
      ),
    ],
    clipper: MultipleRoundedCurveClipper(),
  ),
);

```

If you have any suggestions or problems in used, welcome to <a href="https://github.com/xyhxx/proste_shadow_clip/issues">issues</a>,I will check and reply regularly.

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