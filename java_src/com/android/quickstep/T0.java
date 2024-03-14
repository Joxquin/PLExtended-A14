package com.android.quickstep;
/* loaded from: classes.dex */
public final /* synthetic */ class T0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5523d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RotationTouchHelper f5524e;

    public /* synthetic */ T0(RotationTouchHelper rotationTouchHelper, int i4) {
        this.f5523d = i4;
        this.f5524e = rotationTouchHelper;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5523d) {
            case 0:
                RotationTouchHelper.e(this.f5524e);
                return;
            default:
                RotationTouchHelper.b(this.f5524e);
                return;
        }
    }
}
