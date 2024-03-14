package com.android.quickstep.util;

import android.os.UserHandle;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
/* loaded from: classes.dex */
public interface TaskVisualsChangeListener {
    default void onTaskIconChanged(int i4) {
    }

    default Task onTaskThumbnailChanged(int i4, ThumbnailData thumbnailData) {
        return null;
    }

    default void onTaskIconChanged(String str, UserHandle userHandle) {
    }
}
