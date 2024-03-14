package com.android.systemui.animation;

import android.graphics.Path;
import android.os.Build;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final o f6060a;

    /* renamed from: b  reason: collision with root package name */
    public static final m f6061b;

    /* renamed from: c  reason: collision with root package name */
    public static final boolean f6062c;

    /* renamed from: d  reason: collision with root package name */
    public static final s f6063d;

    /* renamed from: e  reason: collision with root package name */
    public static final long f6064e;

    /* renamed from: f  reason: collision with root package name */
    public static final Interpolator f6065f;

    /* renamed from: g  reason: collision with root package name */
    public static final PathInterpolator f6066g;

    static {
        o oVar = new o(500L, 0L, 150L, 150L, 183L);
        f6060a = oVar;
        Interpolator EMPHASIZED = y0.e.f12937a;
        kotlin.jvm.internal.h.d(EMPHASIZED, "EMPHASIZED");
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(0.1217f, 0.0462f, 0.15f, 0.4686f, 0.1667f, 0.66f);
        path.cubicTo(0.1834f, 0.8878f, 0.1667f, 1.0f, 1.0f, 1.0f);
        PathInterpolator pathInterpolator = new PathInterpolator(path);
        Interpolator LINEAR_OUT_SLOW_IN = y0.e.f12951o;
        kotlin.jvm.internal.h.d(LINEAR_OUT_SLOW_IN, "LINEAR_OUT_SLOW_IN");
        m mVar = new m(EMPHASIZED, pathInterpolator, LINEAR_OUT_SLOW_IN, new PathInterpolator(0.0f, 0.0f, 0.6f, 1.0f));
        f6061b = mVar;
        f6062c = Build.IS_DEBUGGABLE;
        f6063d = new s(oVar, mVar);
        f6064e = 234L;
        f6065f = y0.e.f12947k;
        f6066g = new PathInterpolator(0.2f, 0.0f, 1.0f, 1.0f);
    }

    public final ActivityLaunchAnimator$Runner createRunner(d controller) {
        kotlin.jvm.internal.h.e(controller, "controller");
        controller.isDialogLaunch();
        kotlin.jvm.internal.h.b(null);
        throw null;
    }
}
