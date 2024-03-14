package p;

import android.graphics.drawable.Drawable;
/* renamed from: p.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1338c extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    public static final double f11895a = Math.cos(Math.toRadians(45.0d));

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f11896b = 0;

    public static float a(float f4, float f5, boolean z4) {
        if (z4) {
            return (float) (((1.0d - f11895a) * f5) + (f4 * 1.5f));
        }
        return f4 * 1.5f;
    }
}
