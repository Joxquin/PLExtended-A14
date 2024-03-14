package com.android.launcher3.util;

import android.app.ActivityOptions;
import android.os.Bundle;
/* loaded from: classes.dex */
public final class ActivityOptionsWrapper {
    public final RunnableList onEndCallback;
    public final ActivityOptions options;

    public ActivityOptionsWrapper(ActivityOptions activityOptions, RunnableList runnableList) {
        this.options = activityOptions;
        this.onEndCallback = runnableList;
    }

    public final Bundle toBundle() {
        return this.options.toBundle();
    }
}
