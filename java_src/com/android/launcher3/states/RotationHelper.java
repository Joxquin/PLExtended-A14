package com.android.launcher3.states;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.ContextualItem;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.Utilities;
import com.android.launcher3.states.RotationHelper;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
/* loaded from: classes.dex */
public final class RotationHelper implements SharedPreferences.OnSharedPreferenceChangeListener, DisplayController.DisplayInfoChangeListener {
    private BaseActivity mActivity;
    private boolean mDestroyed;
    private boolean mForceAllowRotationForTesting;
    private boolean mHomeRotationEnabled;
    private boolean mIgnoreAutoRotateSettings;
    private boolean mInitialized;
    private int mStateHandlerRequest = 0;
    private int mCurrentTransitionRequest = 0;
    private int mCurrentStateRequest = 0;
    private int mLastActivityFlags = -999;
    private final Handler mRequestOrientationHandler = new Handler(Executors.UI_HELPER_EXECUTOR.getLooper(), new Handler.Callback() { // from class: X0.a
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            RotationHelper.a(RotationHelper.this, message);
            return true;
        }
    });

    public RotationHelper(BaseActivity baseActivity) {
        this.mActivity = baseActivity;
    }

    public static void a(RotationHelper rotationHelper, Message message) {
        BaseActivity baseActivity = rotationHelper.mActivity;
        if (baseActivity != null) {
            baseActivity.setRequestedOrientation(message.what);
        }
    }

    public static boolean getAllowRotationDefaultValue(DisplayController.Info info) {
        Point point = info.currentSize;
        int i4 = DisplayMetrics.DENSITY_DEVICE_STABLE;
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        return ((float) Math.min(point.x, point.y)) / (((float) i4) / 160.0f) >= 600.0f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0018, code lost:
        if (r0 == 2) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0011, code lost:
        if (r0 == 2) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void notifyChange() {
        /*
            r4 = this;
            boolean r0 = r4.mInitialized
            if (r0 == 0) goto L3e
            boolean r0 = r4.mDestroyed
            if (r0 == 0) goto L9
            goto L3e
        L9:
            int r0 = r4.mStateHandlerRequest
            r1 = 14
            r2 = -1
            r3 = 2
            if (r0 == 0) goto L14
            if (r0 != r3) goto L32
            goto L33
        L14:
            int r0 = r4.mCurrentTransitionRequest
            if (r0 == 0) goto L1b
            if (r0 != r3) goto L32
            goto L33
        L1b:
            int r0 = r4.mCurrentStateRequest
            if (r0 != r3) goto L20
            goto L33
        L20:
            boolean r1 = r4.mIgnoreAutoRotateSettings
            if (r1 != 0) goto L32
            r1 = 1
            if (r0 == r1) goto L32
            boolean r0 = r4.mHomeRotationEnabled
            if (r0 != 0) goto L32
            boolean r0 = r4.mForceAllowRotationForTesting
            if (r0 == 0) goto L30
            goto L32
        L30:
            r1 = 5
            goto L33
        L32:
            r1 = r2
        L33:
            int r0 = r4.mLastActivityFlags
            if (r1 == r0) goto L3e
            r4.mLastActivityFlags = r1
            android.os.Handler r4 = r4.mRequestOrientationHandler
            r4.sendEmptyMessage(r1)
        L3e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.states.RotationHelper.notifyChange():void");
    }

    private void setIgnoreAutoRotateSettings(boolean z4) {
        this.mIgnoreAutoRotateSettings = z4;
        if (z4) {
            BaseActivity baseActivity = this.mActivity;
            LauncherPrefs.Companion companion = LauncherPrefs.Companion;
            LauncherPrefs.Companion.get(baseActivity).removeListener(this, LauncherPrefs.ALLOW_ROTATION);
            return;
        }
        BaseActivity baseActivity2 = this.mActivity;
        LauncherPrefs.Companion companion2 = LauncherPrefs.Companion;
        LauncherPrefs launcherPrefs = LauncherPrefs.Companion.get(baseActivity2);
        ContextualItem contextualItem = LauncherPrefs.ALLOW_ROTATION;
        this.mHomeRotationEnabled = ((Boolean) launcherPrefs.get(contextualItem)).booleanValue();
        LauncherPrefs.Companion.get(this.mActivity).addListener(this, contextualItem);
    }

    public final void destroy() {
        if (this.mDestroyed) {
            return;
        }
        this.mDestroyed = true;
        ((DisplayController) DisplayController.INSTANCE.get(this.mActivity)).removeChangeListener(this);
        LauncherPrefs.get(this.mActivity).removeListener(this, LauncherPrefs.ALLOW_ROTATION);
        this.mActivity = null;
    }

    public final void forceAllowRotationForTesting(boolean z4) {
        this.mForceAllowRotationForTesting = z4;
        notifyChange();
    }

    public final void initialize() {
        if (this.mInitialized) {
            return;
        }
        this.mInitialized = true;
        DisplayController displayController = (DisplayController) DisplayController.INSTANCE.get(this.mActivity);
        DisplayController.Info info = displayController.getInfo();
        setIgnoreAutoRotateSettings(info.isTablet(info.realBounds));
        displayController.addChangeListener(this);
        notifyChange();
    }

    @Override // com.android.launcher3.util.DisplayController.DisplayInfoChangeListener
    public final void onDisplayInfoChanged(Context context, DisplayController.Info info, int i4) {
        boolean isTablet = info.isTablet(info.realBounds);
        if (this.mIgnoreAutoRotateSettings != isTablet) {
            setIgnoreAutoRotateSettings(isTablet);
            notifyChange();
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (this.mDestroyed || this.mIgnoreAutoRotateSettings) {
            return;
        }
        boolean z4 = this.mHomeRotationEnabled;
        boolean booleanValue = ((Boolean) LauncherPrefs.get(this.mActivity).get(LauncherPrefs.ALLOW_ROTATION)).booleanValue();
        this.mHomeRotationEnabled = booleanValue;
        if (booleanValue != z4) {
            notifyChange();
        }
    }

    public final void setCurrentStateRequest(int i4) {
        if (this.mCurrentStateRequest != i4) {
            this.mCurrentStateRequest = i4;
            notifyChange();
        }
    }

    public final void setCurrentTransitionRequest() {
        if (this.mCurrentTransitionRequest != 0) {
            this.mCurrentTransitionRequest = 0;
            notifyChange();
        }
    }

    public final void setStateHandlerRequest(int i4) {
        if (this.mStateHandlerRequest != i4) {
            this.mStateHandlerRequest = i4;
            notifyChange();
        }
    }

    public final String toString() {
        return String.format("[mStateHandlerRequest=%d, mCurrentStateRequest=%d, mLastActivityFlags=%d, mIgnoreAutoRotateSettings=%b, mHomeRotationEnabled=%b, mForceAllowRotationForTesting=%b]", Integer.valueOf(this.mStateHandlerRequest), Integer.valueOf(this.mCurrentStateRequest), Integer.valueOf(this.mLastActivityFlags), Boolean.valueOf(this.mIgnoreAutoRotateSettings), Boolean.valueOf(this.mHomeRotationEnabled), Boolean.valueOf(this.mForceAllowRotationForTesting));
    }
}
