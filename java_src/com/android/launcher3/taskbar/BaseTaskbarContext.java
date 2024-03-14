package com.android.launcher3.taskbar;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.ActivityContext;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class BaseTaskbarContext extends ContextThemeWrapper implements ActivityContext {
    private final List mDPChangeListeners;
    protected final LayoutInflater mLayoutInflater;
    private final OnboardingPrefs mOnboardingPrefs;

    public BaseTaskbarContext(Context context) {
        super(context, Themes.getActivityThemeRes(context));
        this.mDPChangeListeners = new ArrayList();
        this.mLayoutInflater = LayoutInflater.from(this).cloneInContext(this);
        this.mOnboardingPrefs = new OnboardingPrefs(this, LauncherPrefs.getPrefs(this));
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final LayoutInflater getLayoutInflater() {
        return this.mLayoutInflater;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final List getOnDeviceProfileChangeListeners() {
        return this.mDPChangeListeners;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final OnboardingPrefs getOnboardingPrefs() {
        return this.mOnboardingPrefs;
    }

    public abstract void onDragEnd();

    public abstract void onDragStart();

    public abstract void onPopupVisibilityChanged(boolean z4);

    public abstract void onSplitScreenMenuButtonClicked();
}
