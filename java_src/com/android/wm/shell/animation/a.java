package com.android.wm.shell.animation;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Interpolator f6256a = new LinearInterpolator();

    /* renamed from: b  reason: collision with root package name */
    public static final Interpolator f6257b;

    /* renamed from: c  reason: collision with root package name */
    public static final Interpolator f6258c;

    static {
        new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f);
        f6257b = new PathInterpolator(0.0f, 0.0f, 0.8f, 1.0f);
        new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f);
        f6258c = new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);
        new PathInterpolator(0.0f, 0.0f, 0.2f, 1.0f);
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(0.05f, 0.0f, 0.133333f, 0.06f, 0.166666f, 0.4f);
        path.cubicTo(0.208333f, 0.82f, 0.25f, 1.0f, 1.0f, 1.0f);
        new PathInterpolator(path);
        new PathInterpolator(0.3f, 0.0f, 0.8f, 0.15f);
        new PathInterpolator(0.05f, 0.7f, 0.1f, 1.0f);
        new PathInterpolator(0.3f, 0.0f, 0.1f, 1.0f);
        new PathInterpolator(0.3f, 0.0f, 0.5f, 1.0f);
        new PathInterpolator(0.5f, 1.0f, 0.5f, 1.0f);
        new PathInterpolator(0.23f, 0.87f, 0.52f, -0.11f);
    }
}
