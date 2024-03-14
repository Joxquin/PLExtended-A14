package com.android.launcher3.model;

import android.content.Context;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.systemui.shared.R;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Map;
/* loaded from: classes.dex */
public class ModelDelegate implements ResourceBasedOverride {
    protected LauncherAppState mApp;
    protected AllAppsList mAppsList;
    protected Context mContext;
    protected BgDataModel mDataModel;
    protected boolean mIsPrimaryInstance;

    public static ModelDelegate newInstance(Context context, LauncherAppState launcherAppState, AllAppsList allAppsList, BgDataModel bgDataModel, boolean z4) {
        ModelDelegate modelDelegate = (ModelDelegate) ResourceBasedOverride.Overrides.getObject(R.string.model_delegate_class, context, ModelDelegate.class);
        modelDelegate.mApp = launcherAppState;
        modelDelegate.mAppsList = allAppsList;
        modelDelegate.mDataModel = bgDataModel;
        modelDelegate.mIsPrimaryInstance = z4;
        modelDelegate.mContext = context;
        return modelDelegate;
    }

    public void bindAllModelExtras(BgDataModel.Callbacks[] callbacksArr) {
    }

    public void destroy() {
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public void loadAndBindAllAppsItems(UserManagerState userManagerState, BgDataModel.Callbacks[] callbacksArr, Map map) {
    }

    public void loadAndBindOtherItems(BgDataModel.Callbacks[] callbacksArr) {
    }

    public void loadAndBindWorkspaceItems(UserManagerState userManagerState, BgDataModel.Callbacks[] callbacksArr, Map map) {
    }

    public void markActive() {
    }

    public void modelLoadComplete() {
    }

    public void validateData() {
        if (PackageManagerHelper.hasShortcutsPermission(this.mApp.getContext()) != this.mAppsList.hasShortcutHostPermission()) {
            this.mApp.getModel().forceReload();
        }
    }

    public void workspaceLoadComplete() {
    }
}
