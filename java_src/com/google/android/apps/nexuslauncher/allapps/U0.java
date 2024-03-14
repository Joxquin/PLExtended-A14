package com.google.android.apps.nexuslauncher.allapps;

import com.android.launcher3.views.ActivityContext;
/* loaded from: classes.dex */
public final /* synthetic */ class U0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6895d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ PinKeyboardSnackBar f6896e;

    public /* synthetic */ U0(PinKeyboardSnackBar pinKeyboardSnackBar, int i4) {
        this.f6895d = i4;
        this.f6896e = pinKeyboardSnackBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6895d) {
            case 0:
                PinKeyboardSnackBar pinKeyboardSnackBar = this.f6896e;
                int i4 = PinKeyboardSnackBar.f6678j;
                if (pinKeyboardSnackBar.getParent() != ((ActivityContext) pinKeyboardSnackBar.f6679d).getDragLayer()) {
                    ((ActivityContext) pinKeyboardSnackBar.f6679d).getDragLayer().addView(pinKeyboardSnackBar);
                    return;
                }
                return;
            case 1:
                PinKeyboardSnackBar pinKeyboardSnackBar2 = this.f6896e;
                int i5 = PinKeyboardSnackBar.f6678j;
                ((ActivityContext) pinKeyboardSnackBar2.f6679d).getDragLayer().removeView(pinKeyboardSnackBar2);
                return;
            default:
                PinKeyboardSnackBar pinKeyboardSnackBar3 = this.f6896e;
                int i6 = PinKeyboardSnackBar.f6678j;
                ((ActivityContext) pinKeyboardSnackBar3.f6679d).getDragLayer().removeView(pinKeyboardSnackBar3);
                return;
        }
    }
}
