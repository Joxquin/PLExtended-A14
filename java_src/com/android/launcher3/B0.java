package com.android.launcher3;

import com.android.quickstep.util.RectFSpringAnim;
/* loaded from: classes.dex */
public final /* synthetic */ class B0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4414d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RectFSpringAnim f4415e;

    public /* synthetic */ B0(RectFSpringAnim rectFSpringAnim, int i4) {
        this.f4414d = i4;
        this.f4415e = rectFSpringAnim;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4414d) {
            case 0:
                this.f4415e.onTargetPositionChanged();
                return;
            case 1:
                this.f4415e.end();
                return;
            case 2:
                this.f4415e.onTargetPositionChanged();
                return;
            default:
                this.f4415e.end();
                return;
        }
    }
}
