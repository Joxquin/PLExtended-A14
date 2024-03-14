package com.android.launcher3.model;

import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
/* loaded from: classes.dex */
public final class ReloadStringCacheTask extends BaseModelUpdateTask {
    private ModelDelegate mModelDelegate;

    public ReloadStringCacheTask(ModelDelegate modelDelegate) {
        this.mModelDelegate = modelDelegate;
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public final void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
        synchronized (bgDataModel) {
            bgDataModel.stringCache.loadStrings(this.mModelDelegate.mContext);
            final StringCache m3clone = bgDataModel.stringCache.m3clone();
            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.a1
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    callbacks.bindStringCache(StringCache.this);
                }
            });
        }
    }
}
