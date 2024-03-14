package com.android.launcher3.allapps;

import android.content.Context;
import android.util.AttributeSet;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.workprofile.PersonalWorkPagedView;
/* loaded from: classes.dex */
public class AllAppsPagedView extends PersonalWorkPagedView {
    public AllAppsPagedView(Context context) {
        this(context, null);
    }

    @Override // com.android.launcher3.PagedView
    public final boolean snapToPageWithVelocity(int i4, int i5) {
        boolean lambda$onTouchEvent$5 = super.lambda$onTouchEvent$5(i4, i5);
        if (lambda$onTouchEvent$5 && i4 != this.mCurrentPage) {
            ((ActivityContext) ActivityContext.lookupContext(getContext())).getStatsLogManager().logger().log(this.mCurrentPage < i4 ? StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_SWIPE_TO_WORK_TAB : StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_SWIPE_TO_PERSONAL_TAB);
        }
        return lambda$onTouchEvent$5;
    }

    public AllAppsPagedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AllAppsPagedView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
