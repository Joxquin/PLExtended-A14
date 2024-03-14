package u2;

import A2.c;
import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import com.android.systemui.shared.R;
import s2.C1394a;
/* renamed from: u2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1424a {

    /* renamed from: f  reason: collision with root package name */
    public static final int f12433f = (int) Math.round(5.1000000000000005d);

    /* renamed from: a  reason: collision with root package name */
    public final boolean f12434a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12435b;

    /* renamed from: c  reason: collision with root package name */
    public final int f12436c;

    /* renamed from: d  reason: collision with root package name */
    public final int f12437d;

    /* renamed from: e  reason: collision with root package name */
    public final float f12438e;

    public C1424a(Context context) {
        TypedValue a4 = c.a(R.attr.elevationOverlayEnabled, context);
        boolean z4 = (a4 == null || a4.type != 18 || a4.data == 0) ? false : true;
        int a5 = C1394a.a(context, R.attr.elevationOverlayColor, 0);
        int a6 = C1394a.a(context, R.attr.elevationOverlayAccentColor, 0);
        int a7 = C1394a.a(context, R.attr.colorSurface, 0);
        float f4 = context.getResources().getDisplayMetrics().density;
        this.f12434a = z4;
        this.f12435b = a5;
        this.f12436c = a6;
        this.f12437d = a7;
        this.f12438e = f4;
    }

    public final int a(float f4, int i4) {
        int i5;
        if (this.f12434a) {
            if (E.a.k(i4, 255) == this.f12437d) {
                float f5 = this.f12438e;
                float min = (f5 <= 0.0f || f4 <= 0.0f) ? 0.0f : Math.min(((((float) Math.log1p(f4 / f5)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
                int alpha = Color.alpha(i4);
                int d4 = C1394a.d(E.a.k(i4, 255), this.f12435b, min);
                if (min > 0.0f && (i5 = this.f12436c) != 0) {
                    d4 = E.a.h(E.a.k(i5, f12433f), d4);
                }
                return E.a.k(d4, alpha);
            }
        }
        return i4;
    }
}
