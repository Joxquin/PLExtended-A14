package com.google.android.apps.nexuslauncher.allapps;

import android.content.Context;
import android.util.AttributeSet;
import com.android.launcher3.allapps.search.AllAppsSearchUiDelegate;
import com.android.launcher3.taskbar.allapps.TaskbarAllAppsContainerView;
import com.android.launcher3.taskbar.allapps.TaskbarSearchSessionController;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayContext;
/* loaded from: classes.dex */
public final class TaskbarSearchContainerView extends TaskbarAllAppsContainerView {
    public TaskbarSearchContainerView(Context context) {
        this(context, null, 0, 6, null);
    }

    @Override // com.android.launcher3.allapps.ActivityAllAppsContainerView
    public final AllAppsSearchUiDelegate createSearchUiDelegate() {
        TaskbarSearchSessionController searchSessionController = ((TaskbarOverlayContext) this.mActivityContext).getSearchSessionController();
        TaskbarToastSessionController taskbarToastSessionController = searchSessionController instanceof TaskbarToastSessionController ? (TaskbarToastSessionController) searchSessionController : null;
        return taskbarToastSessionController == null ? new AllAppsSearchUiDelegate(this) : new C0635d(this, taskbarToastSessionController.f6892g);
    }

    public TaskbarSearchContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ TaskbarSearchContainerView(Context context, AttributeSet attributeSet, int i4, int i5, kotlin.jvm.internal.f fVar) {
        this(context, (i5 & 2) != 0 ? null : attributeSet, (i5 & 4) != 0 ? 0 : i4);
    }

    public TaskbarSearchContainerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
