package j2;

import android.animation.TypeEvaluator;
/* renamed from: j2.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1116c implements TypeEvaluator {

    /* renamed from: a  reason: collision with root package name */
    public static final C1116c f10705a = new C1116c();

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f4, Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        float f5 = ((intValue >> 24) & 255) / 255.0f;
        int intValue2 = ((Integer) obj2).intValue();
        float pow = (float) Math.pow(((intValue >> 16) & 255) / 255.0f, 2.2d);
        float pow2 = (float) Math.pow(((intValue >> 8) & 255) / 255.0f, 2.2d);
        float pow3 = (float) Math.pow((intValue & 255) / 255.0f, 2.2d);
        float pow4 = (float) Math.pow(((intValue2 >> 16) & 255) / 255.0f, 2.2d);
        float a4 = w.f.a(((intValue2 >> 24) & 255) / 255.0f, f5, f4, f5);
        float a5 = w.f.a(pow4, pow, f4, pow);
        float a6 = w.f.a((float) Math.pow(((intValue2 >> 8) & 255) / 255.0f, 2.2d), pow2, f4, pow2);
        float a7 = w.f.a((float) Math.pow((intValue2 & 255) / 255.0f, 2.2d), pow3, f4, pow3);
        int round = Math.round(((float) Math.pow(a5, 0.45454545454545453d)) * 255.0f) << 16;
        return Integer.valueOf(Math.round(((float) Math.pow(a7, 0.45454545454545453d)) * 255.0f) | round | (Math.round(a4 * 255.0f) << 24) | (Math.round(((float) Math.pow(a6, 0.45454545454545453d)) * 255.0f) << 8));
    }
}
