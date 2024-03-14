package com.android.launcher3;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.window.OnBackInvokedCallback;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.util.FlagDebugUtils;
import com.android.launcher3.util.SystemUiController;
import com.android.launcher3.util.ViewCache;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.ScrimView;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.StringJoiner;
/* loaded from: classes.dex */
public abstract class BaseActivity extends Activity implements ActivityContext {
    public static final int ACTIVITY_STATE_DEFERRED_RESUMED = 4;
    public static final int ACTIVITY_STATE_RESUMED = 2;
    public static final int ACTIVITY_STATE_STARTED = 1;
    public static final int ACTIVITY_STATE_TRANSITION_ACTIVE = 64;
    public static final int ACTIVITY_STATE_USER_ACTIVE = 16;
    public static final int ACTIVITY_STATE_USER_WILL_BE_ACTIVE = 32;
    public static final int ACTIVITY_STATE_WINDOW_FOCUSED = 8;
    static final boolean DEBUG = false;
    public static final int INVISIBLE_ALL = 15;
    public static final int INVISIBLE_BY_APP_TRANSITIONS = 2;
    public static final int INVISIBLE_BY_PENDING_FLAGS = 4;
    public static final int INVISIBLE_BY_STATE_HANDLER = 1;
    private static final int INVISIBLE_FLAGS = 7;
    public static final int PENDING_INVISIBLE_BY_WALLPAPER_ANIMATION = 8;
    public static final int STATE_HANDLER_INVISIBILITY_FLAGS = 9;
    private static final String TAG = "BaseActivity";
    private int mActivityFlags;
    protected DeviceProfile mDeviceProfile;
    private int mForceInvisible;
    private StatsLogManager mStatsLogManager;
    protected SystemUiController mSystemUiController;
    private final ArrayList mDPChangeListeners = new ArrayList();
    private final ArrayList mMultiWindowModeChangedListeners = new ArrayList();
    private final ViewCache mViewCache = new ViewCache();

    /* loaded from: classes.dex */
    public interface MultiWindowModeChangedListener {
        void onMultiWindowModeChanged(boolean z4);
    }

    public static BaseActivity fromContext(Context context) {
        if (context instanceof BaseActivity) {
            return (BaseActivity) context;
        }
        if (context instanceof ContextWrapper) {
            return fromContext(((ContextWrapper) context).getBaseContext());
        }
        throw new IllegalArgumentException("Cannot find BaseActivity in parent tree");
    }

    public static String getActivityStateString(int i4) {
        StringJoiner stringJoiner = new StringJoiner("|");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 1, "state_started");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 2, "state_resumed");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 4, "state_deferred_resumed");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 8, "state_window_focused");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 16, "state_user_active");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 64, "state_transition_active");
        return stringJoiner.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$registerBackDispatcher$0() {
        onBackPressed();
        TestLogging.recordEvent("Main", "onBackInvoked");
    }

    public void addActivityFlags(int i4) {
        this.mActivityFlags |= i4;
        onActivityFlagsChanged(i4);
    }

    public void addForceInvisibleFlag(int i4) {
        this.mForceInvisible = i4 | this.mForceInvisible;
    }

    public void addMultiWindowModeChangedListener(MultiWindowModeChangedListener multiWindowModeChangedListener) {
        this.mMultiWindowModeChangedListeners.add(multiWindowModeChangedListener);
    }

    public void clearForceInvisibleFlag(int i4) {
        this.mForceInvisible = (~i4) & this.mForceInvisible;
    }

    public void dumpMisc(String str, PrintWriter printWriter) {
        StringBuilder a4 = t.j.a(str, "deviceProfile isTransposed=");
        a4.append(getDeviceProfile().isVerticalBarLayout());
        printWriter.println(a4.toString());
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("orientation=");
        StringBuilder a5 = C0339g.a(sb, getResources().getConfiguration().orientation, printWriter, str, "mSystemUiController: ");
        a5.append(this.mSystemUiController);
        printWriter.println(a5.toString());
        printWriter.println(str + "mActivityFlags: " + getActivityStateString(this.mActivityFlags));
        printWriter.println(str + "mForceInvisible: " + this.mForceInvisible);
    }

    public int getActivityFlags() {
        return this.mActivityFlags;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public DeviceProfile getDeviceProfile() {
        return this.mDeviceProfile;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public List getOnDeviceProfileChangeListeners() {
        return this.mDPChangeListeners;
    }

    public ScrimView getScrimView() {
        return null;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public StatsLogManager getStatsLogManager() {
        if (this.mStatsLogManager == null) {
            this.mStatsLogManager = StatsLogManager.newInstance(this);
        }
        return this.mStatsLogManager;
    }

    public SystemUiController getSystemUiController() {
        if (this.mSystemUiController == null) {
            this.mSystemUiController = new SystemUiController(getWindow());
        }
        return this.mSystemUiController;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public ViewCache getViewCache() {
        return this.mViewCache;
    }

    public boolean hasBeenResumed() {
        return (this.mActivityFlags & 2) != 0;
    }

    public boolean hasSomeInvisibleFlag(int i4) {
        return (this.mForceInvisible & i4) != 0;
    }

    public boolean isForceInvisible() {
        return hasSomeInvisibleFlag(7);
    }

    public boolean isStarted() {
        return (this.mActivityFlags & 1) != 0;
    }

    public boolean isUserActive() {
        return (this.mActivityFlags & 16) != 0;
    }

    public void onActivityFlagsChanged(int i4) {
    }

    @Override // android.app.Activity
    public void onActivityResult(int i4, int i5, Intent intent) {
        super.onActivityResult(i4, i5, intent);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        registerBackDispatcher();
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z4, Configuration configuration) {
        super.onMultiWindowModeChanged(z4, configuration);
        for (int size = this.mMultiWindowModeChangedListeners.size() - 1; size >= 0; size--) {
            ((MultiWindowModeChangedListener) this.mMultiWindowModeChangedListeners.get(size)).onMultiWindowModeChanged(z4);
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        setPaused();
        super.onPause();
        getSystemUiController().updateUiState(3, 0);
    }

    @Override // android.app.Activity
    public void onResume() {
        setResumed();
        super.onResume();
    }

    public void onSlideInViewClosed() {
        finish();
    }

    @Override // android.app.Activity
    public void onStart() {
        addActivityFlags(1);
        super.onStart();
    }

    @Override // android.app.Activity
    public void onStop() {
        removeActivityFlags(17);
        this.mForceInvisible = 0;
        super.onStop();
        getSystemUiController().updateUiState(3, 0);
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        removeActivityFlags(16);
        super.onUserLeaveHint();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z4) {
        super.onWindowFocusChanged(z4);
        if (z4) {
            addActivityFlags(8);
        } else {
            removeActivityFlags(8);
        }
    }

    public void registerBackDispatcher() {
        if (Utilities.ATLEAST_T) {
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, new OnBackInvokedCallback() { // from class: com.android.launcher3.f
                public final void onBackInvoked() {
                    BaseActivity.this.lambda$registerBackDispatcher$0();
                }
            });
        }
    }

    public void removeActivityFlags(int i4) {
        this.mActivityFlags &= ~i4;
        onActivityFlagsChanged(i4);
    }

    public void removeMultiWindowModeChangedListener(MultiWindowModeChangedListener multiWindowModeChangedListener) {
        this.mMultiWindowModeChangedListeners.remove(multiWindowModeChangedListener);
    }

    public void setPaused() {
        removeActivityFlags(6);
    }

    public void setResumed() {
        addActivityFlags(18);
        removeActivityFlags(32);
    }

    public void tryClearAccessibilityFocus(View view) {
    }
}
