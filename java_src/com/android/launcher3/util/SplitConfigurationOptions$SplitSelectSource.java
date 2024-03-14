package com.android.launcher3.util;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
/* loaded from: classes.dex */
public final class SplitConfigurationOptions$SplitSelectSource {
    public int alreadyRunningTaskId = -1;
    public boolean animateCurrentTaskDismissal;
    private Drawable drawable;
    public final Intent intent;
    public final ItemInfo itemInfo;
    public final SplitConfigurationOptions$SplitPositionOption position;
    public final StatsLogManager.EventEnum splitEvent;
    private View view;

    public SplitConfigurationOptions$SplitSelectSource(View view, Drawable drawable, Intent intent, SplitConfigurationOptions$SplitPositionOption splitConfigurationOptions$SplitPositionOption, ItemInfo itemInfo, StatsLogManager.LauncherEvent launcherEvent) {
        this.view = view;
        this.drawable = drawable;
        this.intent = intent;
        this.position = splitConfigurationOptions$SplitPositionOption;
        this.itemInfo = itemInfo;
        this.splitEvent = launcherEvent;
    }

    public final Drawable getDrawable() {
        return this.drawable;
    }

    public final View getView() {
        return this.view;
    }
}
