package com.android.quickstep.views;

import android.content.Context;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.quickstep.views.TaskView;
/* loaded from: classes.dex */
public final /* synthetic */ class P implements MainThreadInitializedObject.ObjectProvider {
    @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
    public final Object get(Context context) {
        return new TaskView.FullscreenDrawParams(context);
    }
}
