package com.android.systemui.shared.rotation;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6230d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ FloatingRotationButton f6231e;

    public /* synthetic */ a(FloatingRotationButton floatingRotationButton, int i4) {
        this.f6230d = i4;
        this.f6231e = floatingRotationButton;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6230d) {
            case 0:
                FloatingRotationButton.a(this.f6231e);
                return;
            default:
                FloatingRotationButton.b(this.f6231e);
                return;
        }
    }
}
