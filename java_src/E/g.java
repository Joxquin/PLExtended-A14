package E;

import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import q.l;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final h f336a = new h();

    /* renamed from: b  reason: collision with root package name */
    public static final l f337b = new l(16);

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
        if (r2.equals(r4) == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface a(android.content.Context r14, D.d r15, android.content.res.Resources r16, int r17, java.lang.String r18, int r19, int r20, D.m r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: E.g.a(android.content.Context, D.d, android.content.res.Resources, int, java.lang.String, int, int, D.m, boolean):android.graphics.Typeface");
    }

    public static Typeface b(Resources resources, int i4, String str, int i5, int i6) {
        Typeface typeface;
        f336a.getClass();
        try {
            Font build = new Font.Builder(resources, i4).build();
            typeface = new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (Exception unused) {
            typeface = null;
        }
        if (typeface != null) {
            f337b.b(c(resources, i4, str, i5, i6), typeface);
        }
        return typeface;
    }

    public static String c(Resources resources, int i4, String str, int i5, int i6) {
        return resources.getResourcePackageName(i4) + '-' + str + '-' + i5 + '-' + i4 + '-' + i6;
    }
}
