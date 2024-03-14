package com.android.wm.shell.common.magnetictarget;

import android.graphics.PointF;
import android.view.View;
import com.android.wm.shell.common.bubbles.e;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final View f6344a;

    /* renamed from: b  reason: collision with root package name */
    public final int f6345b;

    /* renamed from: c  reason: collision with root package name */
    public final PointF f6346c;

    /* renamed from: d  reason: collision with root package name */
    public final int[] f6347d;

    public c(e targetView, int i4) {
        h.e(targetView, "targetView");
        this.f6344a = targetView;
        this.f6345b = i4;
        this.f6346c = new PointF();
        this.f6347d = new int[2];
    }
}
