package com.android.launcher3;

import android.animation.AnimatorSet;
import com.android.launcher3.Launcher;
import com.android.launcher3.util.ActivityTracker;
import com.android.launcher3.util.RunnableList;
/* loaded from: classes.dex */
public final /* synthetic */ class X implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4513d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f4514e;

    public /* synthetic */ X(int i4, Object obj) {
        this.f4513d = i4;
        this.f4514e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4513d) {
            case 0:
                Launcher.AnonymousClass8 anonymousClass8 = (Launcher.AnonymousClass8) this.f4514e;
                Launcher.this.getRootView().getViewTreeObserver().removeOnDrawListener(anonymousClass8);
                return;
            case 1:
                ActivityTracker activityTracker = Launcher.ACTIVITY_TRACKER;
                ((BubbleTextView) this.f4514e).setStayPressed(false);
                return;
            case 2:
                ((Workspace) this.f4514e).moveToDefaultScreen();
                return;
            case 3:
                ((RunnableList) this.f4514e).executeAllAndDestroy();
                return;
            case 4:
                ((AnimatorSet) this.f4514e).start();
                return;
            default:
                ActivityTracker activityTracker2 = Launcher.ACTIVITY_TRACKER;
                ((AbstractFloatingView) this.f4514e).close(true);
                return;
        }
    }
}
