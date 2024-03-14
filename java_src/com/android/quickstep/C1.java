package com.android.quickstep;

import android.animation.ValueAnimator;
import android.view.SurfaceControl;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final /* synthetic */ class C1 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5442d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ArrayList f5443e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ SurfaceControl.Transaction f5444f;

    public /* synthetic */ C1(ArrayList arrayList, SurfaceControl.Transaction transaction, int i4) {
        this.f5442d = i4;
        this.f5443e = arrayList;
        this.f5444f = transaction;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f5442d) {
            case 0:
                TaskViewUtils.b(this.f5443e, this.f5444f, valueAnimator);
                return;
            default:
                TaskViewUtils.e(this.f5443e, this.f5444f, valueAnimator);
                return;
        }
    }
}
