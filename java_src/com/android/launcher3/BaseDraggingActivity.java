package com.android.launcher3;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.Display;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowMetrics;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.util.ActivityOptionsWrapper;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.OnColorHintListener;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.util.Themes;
import com.android.launcher3.util.TraceHelper;
import com.android.launcher3.util.WallpaperColorHints;
import com.android.launcher3.util.WindowBounds;
import com.android.systemui.shared.R;
import java.util.Objects;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public abstract class BaseDraggingActivity extends BaseActivity implements OnColorHintListener, DisplayController.DisplayInfoChangeListener {
    public static final Object AUTO_CANCEL_ACTION_MODE = new Object();
    private static final String TAG = "BaseDraggingActivity";
    private ActionMode mCurrentActionMode;
    protected boolean mIsSafeModeEnabled;
    private Runnable mOnStartCallback;
    private final RunnableList mOnResumeCallbacks = new RunnableList();
    private int mThemeRes = R.style.AppTheme;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$onCreate$0() {
        return Boolean.valueOf(getPackageManager().isSafeMode());
    }

    private void updateTheme() {
        if (this.mThemeRes != Themes.getActivityThemeRes(this)) {
            recreate();
        }
    }

    public void addOnResumeCallback(Runnable runnable) {
        this.mOnResumeCallbacks.add(runnable);
    }

    public void clearRunOnceOnStartCallback() {
        this.mOnStartCallback = null;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public boolean finishAutoCancelActionMode() {
        if (isInAutoCancelActionMode()) {
            this.mCurrentActionMode.finish();
            return true;
        }
        return false;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public ActivityOptionsWrapper getActivityLaunchOptions(View view, ItemInfo itemInfo) {
        ActivityOptionsWrapper activityLaunchOptions = super.getActivityLaunchOptions(view, itemInfo);
        RunnableList runnableList = activityLaunchOptions.onEndCallback;
        Objects.requireNonNull(runnableList);
        addOnResumeCallback(new RunnableC0343i(runnableList, 1));
        return activityLaunchOptions;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public View.OnClickListener getItemOnClickListener() {
        return ItemClickHandler.INSTANCE;
    }

    public WindowBounds getMultiWindowDisplaySize() {
        if (Utilities.ATLEAST_R) {
            WindowMetrics currentWindowMetrics = getWindowManager().getCurrentWindowMetrics();
            Insets insets = currentWindowMetrics.getWindowInsets().getInsets(WindowInsets.Type.systemBars());
            return new WindowBounds(-1, currentWindowMetrics.getBounds(), new Rect(insets.left, insets.top, insets.right, insets.bottom));
        }
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return new WindowBounds(-1, new Rect(0, 0, point.x, point.y), new Rect());
    }

    public abstract View getOverviewPanel();

    public abstract View getRootView();

    @Override // com.android.launcher3.views.ActivityContext
    public boolean isAppBlockedForSafeMode() {
        return this.mIsSafeModeEnabled;
    }

    public boolean isInAutoCancelActionMode() {
        ActionMode actionMode = this.mCurrentActionMode;
        return actionMode != null && AUTO_CANCEL_ACTION_MODE == actionMode.getTag();
    }

    @Override // com.android.launcher3.views.ActivityContext
    public ActivityOptionsWrapper makeDefaultActivityOptions(int i4) {
        ActivityOptionsWrapper makeDefaultActivityOptions = super.makeDefaultActivityOptions(i4);
        RunnableList runnableList = makeDefaultActivityOptions.onEndCallback;
        Objects.requireNonNull(runnableList);
        addOnResumeCallback(new RunnableC0343i(runnableList, 0));
        return makeDefaultActivityOptions;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onActionModeFinished(ActionMode actionMode) {
        super.onActionModeFinished(actionMode);
        this.mCurrentActionMode = null;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onActionModeStarted(ActionMode actionMode) {
        super.onActionModeStarted(actionMode);
        this.mCurrentActionMode = actionMode;
    }

    @Override // com.android.launcher3.util.OnColorHintListener
    public void onColorHintsChanged(int i4) {
        updateTheme();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateTheme();
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mIsSafeModeEnabled = ((Boolean) TraceHelper.allowIpcs("isSafeMode", new Supplier() { // from class: com.android.launcher3.h
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$onCreate$0;
                lambda$onCreate$0 = BaseDraggingActivity.this.lambda$onCreate$0();
                return lambda$onCreate$0;
            }
        })).booleanValue();
        ((DisplayController) DisplayController.INSTANCE.get(this)).addChangeListener(this);
        WallpaperColorHints.get(this).registerOnColorHintsChangedListener(this);
        int activityThemeRes = Themes.getActivityThemeRes(this);
        if (activityThemeRes != this.mThemeRes) {
            this.mThemeRes = activityThemeRes;
            setTheme(activityThemeRes);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ((DisplayController) DisplayController.INSTANCE.get(this)).removeChangeListener(this);
        WallpaperColorHints.get(this).unregisterOnColorsChangedListener(this);
    }

    public void onDeviceProfileInitiated() {
        if (this.mDeviceProfile.isVerticalBarLayout()) {
            this.mDeviceProfile.updateIsSeascape(this);
        }
    }

    @Override // com.android.launcher3.util.DisplayController.DisplayInfoChangeListener
    public void onDisplayInfoChanged(Context context, DisplayController.Info info, int i4) {
        if ((i4 & 2) == 0 || !this.mDeviceProfile.updateIsSeascape(this)) {
            return;
        }
        reapplyUi();
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.mOnResumeCallbacks.executeAllAndClear();
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        Runnable runnable = this.mOnStartCallback;
        if (runnable != null) {
            runnable.run();
            this.mOnStartCallback = null;
        }
    }

    public abstract void reapplyUi();

    public void returnToHomescreen() {
    }

    public void runOnceOnStart(Runnable runnable) {
        this.mOnStartCallback = runnable;
    }
}
