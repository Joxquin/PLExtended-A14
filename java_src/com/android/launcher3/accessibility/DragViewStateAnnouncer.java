package com.android.launcher3.accessibility;

import android.view.View;
import com.android.launcher3.Launcher;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class DragViewStateAnnouncer implements Runnable {
    private final View mTargetView;

    private DragViewStateAnnouncer(View view) {
        this.mTargetView = view;
    }

    public static DragViewStateAnnouncer createFor(View view) {
        if (AccessibilityManagerCompat.isAccessibilityEnabled(view.getContext())) {
            return new DragViewStateAnnouncer(view);
        }
        return null;
    }

    public final void announce(CharSequence charSequence) {
        this.mTargetView.setContentDescription(charSequence);
        this.mTargetView.removeCallbacks(this);
        this.mTargetView.postDelayed(this, 200L);
    }

    public final void cancel() {
        this.mTargetView.removeCallbacks(this);
    }

    public final void completeAction() {
        cancel();
        Launcher launcher = Launcher.getLauncher(this.mTargetView.getContext());
        launcher.getDragLayer().announceForAccessibility(launcher.getText(R.string.item_moved));
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.mTargetView.sendAccessibilityEvent(4);
    }
}
