package E;

import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
/* loaded from: classes.dex */
public final class h extends i {
    public static Font a(FontFamily fontFamily, int i4) {
        FontStyle fontStyle = new FontStyle((i4 & 1) != 0 ? 700 : 400, (i4 & 2) != 0 ? 1 : 0);
        Font font = fontFamily.getFont(0);
        int b4 = b(fontStyle, font.getStyle());
        for (int i5 = 1; i5 < fontFamily.getSize(); i5++) {
            Font font2 = fontFamily.getFont(i5);
            int b5 = b(fontStyle, font2.getStyle());
            if (b5 < b4) {
                font = font2;
                b4 = b5;
            }
        }
        return font;
    }

    public static int b(FontStyle fontStyle, FontStyle fontStyle2) {
        return (Math.abs(fontStyle.getWeight() - fontStyle2.getWeight()) / 100) + (fontStyle.getSlant() == fontStyle2.getSlant() ? 0 : 2);
    }
}
