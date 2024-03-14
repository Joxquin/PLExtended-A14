package com.android.quickstep.fallback;

import android.content.Context;
import android.util.AttributeSet;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.RecentsActivity;
/* loaded from: classes.dex */
public class RecentsDragLayer extends BaseDragLayer {
    public RecentsDragLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 1);
    }

    @Override // com.android.launcher3.views.BaseDragLayer
    public void recreateControllers() {
        this.mControllers = new TouchController[]{new RecentsTaskController((RecentsActivity) this.mActivity), new FallbackNavBarTouchController((RecentsActivity) this.mActivity)};
    }
}
