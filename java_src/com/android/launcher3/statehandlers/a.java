package com.android.launcher3.statehandlers;

import com.android.launcher3.Launcher;
import com.android.launcher3.statehandlers.DesktopVisibilityController;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4980d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ DesktopVisibilityController.AnonymousClass1 f4981e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ int f4982f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ boolean f4983g;

    public /* synthetic */ a(DesktopVisibilityController.AnonymousClass1 anonymousClass1, int i4, boolean z4, int i5) {
        this.f4980d = i5;
        this.f4981e = anonymousClass1;
        this.f4982f = i4;
        this.f4983g = z4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Launcher launcher;
        Launcher launcher2;
        switch (this.f4980d) {
            case 0:
                DesktopVisibilityController.AnonymousClass1 anonymousClass1 = this.f4981e;
                int i4 = this.f4982f;
                boolean z4 = this.f4983g;
                launcher2 = DesktopVisibilityController.this.mLauncher;
                if (i4 == launcher2.getDisplayId()) {
                    if (z4) {
                        DesktopVisibilityController.d(DesktopVisibilityController.this);
                        return;
                    } else {
                        DesktopVisibilityController.c(DesktopVisibilityController.this);
                        return;
                    }
                }
                return;
            default:
                DesktopVisibilityController.AnonymousClass1 anonymousClass12 = this.f4981e;
                int i5 = this.f4982f;
                boolean z5 = this.f4983g;
                launcher = DesktopVisibilityController.this.mLauncher;
                if (i5 == launcher.getDisplayId()) {
                    DesktopVisibilityController.this.setFreeformTasksVisible(z5);
                    return;
                }
                return;
        }
    }
}
