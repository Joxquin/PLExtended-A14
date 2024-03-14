package j2;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
/* renamed from: j2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1114a {

    /* renamed from: a  reason: collision with root package name */
    public static final TimeInterpolator f10700a = new LinearInterpolator();

    /* renamed from: b  reason: collision with root package name */
    public static final U.b f10701b = new U.b();

    /* renamed from: c  reason: collision with root package name */
    public static final U.a f10702c = new U.a();

    /* renamed from: d  reason: collision with root package name */
    public static final U.c f10703d = new U.c();

    /* renamed from: e  reason: collision with root package name */
    public static final TimeInterpolator f10704e = new DecelerateInterpolator();

    public static float a(float f4, float f5, float f6, float f7, float f8) {
        return f8 < f6 ? f4 : f8 > f7 ? f5 : w.f.a(f5, f4, (f8 - f6) / (f7 - f6), f4);
    }
}
