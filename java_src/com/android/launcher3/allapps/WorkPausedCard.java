package com.android.launcher3.allapps;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.StringCache;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class WorkPausedCard extends LinearLayout implements View.OnClickListener {
    private final ActivityContext mActivityContext;

    public WorkPausedCard(Context context) {
        this(context, null, 0);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (Utilities.ATLEAST_P) {
            setEnabled(false);
            this.mActivityContext.getAppsView().mWorkManager.setWorkProfileEnabled(true);
            this.mActivityContext.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_TURN_ON_WORK_APPS_TAP);
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        ((Button) findViewById(R.id.enable_work_apps)).setOnClickListener(this);
        updateStringFromCache();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        int i8 = getResources().getConfiguration().orientation;
        getLayoutParams().height = i8 == 1 ? -1 : -2;
        super.onLayout(z4, i4, i5, i6, i7);
    }

    public final void updateStringFromCache() {
        StringCache stringCache = this.mActivityContext.getStringCache();
        if (stringCache != null) {
            ((TextView) findViewById(R.id.work_apps_paused_title)).setText(stringCache.workProfilePausedTitle);
            ((TextView) findViewById(R.id.work_apps_paused_content)).setText(stringCache.workProfilePausedDescription);
            ((TextView) findViewById(R.id.enable_work_apps)).setText(stringCache.workProfileEnableButton);
        }
    }

    public WorkPausedCard(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WorkPausedCard(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mActivityContext = (ActivityContext) ActivityContext.lookupContext(getContext());
    }
}
