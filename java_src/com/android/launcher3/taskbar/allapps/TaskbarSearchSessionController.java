package com.android.launcher3.taskbar.allapps;

import android.view.View;
import com.android.launcher3.allapps.AllAppsTransitionListener;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.util.ResourceBasedOverride;
import java.util.List;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public class TaskbarSearchSessionController implements ResourceBasedOverride, AllAppsTransitionListener {
    public DragOptions.PreDragCondition createPreDragConditionForSearch(View view) {
        h.e(view, "view");
        return null;
    }

    public boolean handleBackInvoked() {
        return false;
    }

    public void onAllAppsAnimationPending(PendingAnimation pendingAnimation, boolean z4) {
    }

    @Override // com.android.launcher3.allapps.AllAppsTransitionListener
    public void onAllAppsTransitionEnd(boolean z4) {
    }

    @Override // com.android.launcher3.allapps.AllAppsTransitionListener
    public void onAllAppsTransitionStart(boolean z4) {
    }

    public void onDestroy() {
    }

    public void setZeroStatePredictedItems(List items) {
        h.e(items, "items");
    }

    public void setZeroStateSearchSuggestions(List items) {
        h.e(items, "items");
    }

    public void startLifecycle() {
    }
}
