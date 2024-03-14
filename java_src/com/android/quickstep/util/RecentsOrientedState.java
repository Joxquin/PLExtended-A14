package com.android.quickstep.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.testing.shared.TestProtocol;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.SettingsCache;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.TaskAnimationManager;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.function.IntConsumer;
import v.C1429e;
/* loaded from: classes.dex */
public class RecentsOrientedState implements SharedPreferences.OnSharedPreferenceChangeListener {
    private static final boolean DEBUG = false;
    private static final int FLAG_HOME_ROTATION_ALLOWED_IN_PREFS = 4;
    private static final int FLAG_HOME_ROTATION_FORCE_ENABLED_FOR_TESTING = 128;
    private static final int FLAG_IGNORE_ALLOW_HOME_ROTATION_PREF = 512;
    private static final int FLAG_MULTIPLE_ORIENTATION_SUPPORTED_BY_ACTIVITY = 1;
    private static final int FLAG_MULTIPLE_ORIENTATION_SUPPORTED_BY_DENSITY = 2;
    private static final int FLAG_MULTIWINDOW_ROTATION_ALLOWED = 16;
    private static final int FLAG_ROTATION_WATCHER_ENABLED = 64;
    private static final int FLAG_ROTATION_WATCHER_SUPPORTED = 32;
    private static final int FLAG_SWIPE_UP_NOT_RUNNING = 256;
    private static final int FLAG_SYSTEM_ROTATION_ALLOWED = 8;
    private static final int MASK_MULTIPLE_ORIENTATION_SUPPORTED_BY_DEVICE = 3;
    private static final String TAG = "RecentsOrientedState";
    private static final int VALUE_ROTATION_WATCHER_ENABLED = 363;
    private final BaseActivityInterface mActivityInterface;
    private final Context mContext;
    private int mFlags;
    private final OrientationEventListener mOrientationListener;
    private final SettingsCache mSettingsCache;
    private PagedOrientationHandler mOrientationHandler = PagedOrientationHandler.PORTRAIT;
    private int mTouchRotation = 0;
    private int mDisplayRotation = 0;
    private int mRecentsActivityRotation = 0;
    private int mRecentsRotation = -1;
    private final SettingsCache.OnChangeListener mRotationChangeListener = new SettingsCache.OnChangeListener() { // from class: com.android.quickstep.util.D
        @Override // com.android.launcher3.util.SettingsCache.OnChangeListener
        public final void onSettingsChanged(boolean z4) {
            RecentsOrientedState.this.lambda$new$0(z4);
        }
    };
    private final Matrix mTmpMatrix = new Matrix();
    private int mPreviousRotation = 0;
    private boolean mListenersInitialized = false;
    private int mStateId = 0;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface SurfaceRotation {
    }

    public RecentsOrientedState(Context context, BaseActivityInterface baseActivityInterface, final IntConsumer intConsumer) {
        this.mContext = context;
        this.mActivityInterface = baseActivityInterface;
        this.mOrientationListener = new OrientationEventListener(context) { // from class: com.android.quickstep.util.RecentsOrientedState.1
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i4) {
                int rotationForUserDegreesRotated = RecentsOrientedState.getRotationForUserDegreesRotated(i4, RecentsOrientedState.this.mPreviousRotation);
                if (rotationForUserDegreesRotated != RecentsOrientedState.this.mPreviousRotation) {
                    RecentsOrientedState.this.mPreviousRotation = rotationForUserDegreesRotated;
                    intConsumer.accept(rotationForUserDegreesRotated);
                }
            }
        };
        this.mFlags = (baseActivityInterface.rotationSupportedByActivity ? 1 : 0) | 256;
        this.mSettingsCache = (SettingsCache) SettingsCache.INSTANCE.get(context);
        initFlags();
    }

    private void destroyMultipleOrientationListeners() {
        LauncherPrefs.get(this.mContext).removeListener(this, LauncherPrefs.ALLOW_ROTATION);
        this.mSettingsCache.unregister(SettingsCache.ROTATION_SETTING_URI, this.mRotationChangeListener);
    }

    public static int getRotationForUserDegreesRotated(float f4, int i4) {
        if (f4 == -1.0f) {
            return i4;
        }
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 == 3) {
                        if (f4 < 20 || (f4 > 340 && f4 < 360.0f)) {
                            return 0;
                        }
                        if (f4 > 160 && f4 < 180.0f) {
                            return 2;
                        }
                        if (f4 > ((float) StaggeredWorkspaceAnim.DURATION_MS) && f4 < 360.0f) {
                            return 1;
                        }
                    }
                } else if (f4 < 110) {
                    return 3;
                } else {
                    if (f4 > ((float) StaggeredWorkspaceAnim.DURATION_MS)) {
                        return 1;
                    }
                }
            } else if (f4 < 200 && f4 > 90.0f) {
                return 2;
            } else {
                if ((f4 > 340 && f4 < 360.0f) || (f4 >= 0.0f && f4 < 70)) {
                    return 0;
                }
                if (f4 > 70 && f4 < 180.0f) {
                    return 3;
                }
            }
        } else if (f4 > 180.0f && f4 < 290) {
            return 1;
        } else {
            if (f4 < 180.0f && f4 > 70) {
                return 3;
            }
        }
        return i4;
    }

    private int inferRecentsActivityRotation(int i4) {
        if (isRecentsActivityRotationAllowed()) {
            int i5 = this.mRecentsRotation;
            return i5 < 0 ? i4 : i5;
        }
        return 0;
    }

    private void initFlags() {
        setFlag(32, this.mOrientationListener.canDetectOrientation());
        updateAutoRotateSetting();
        updateHomeRotationSetting();
    }

    private void initMultipleOrientationListeners() {
        LauncherPrefs.get(this.mContext).addListener(this, LauncherPrefs.ALLOW_ROTATION);
        this.mSettingsCache.register(SettingsCache.ROTATION_SETTING_URI, this.mRotationChangeListener);
        updateAutoRotateSetting();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(boolean z4) {
        updateAutoRotateSetting();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setFlag$1(boolean z4) {
        if (z4) {
            this.mOrientationListener.enable();
        } else {
            this.mOrientationListener.disable();
        }
    }

    private static String nameAndAddress(Object obj) {
        return obj.getClass().getSimpleName() + "@" + obj.hashCode();
    }

    public static void postDisplayRotation(int i4, float f4, float f5, Matrix matrix) {
        if (i4 == 1) {
            matrix.postRotate(270.0f);
            matrix.postTranslate(0.0f, f4);
        } else if (i4 == 2) {
            matrix.postRotate(180.0f);
            matrix.postTranslate(f5, f4);
        } else if (i4 != 3) {
        } else {
            matrix.postRotate(90.0f);
            matrix.postTranslate(f5, 0.0f);
        }
    }

    public static void preDisplayRotation(int i4, float f4, float f5, Matrix matrix) {
        if (i4 == 1) {
            matrix.postRotate(90.0f);
            matrix.postTranslate(f4, 0.0f);
        } else if (i4 == 2) {
            matrix.postRotate(180.0f);
            matrix.postTranslate(f5, f4);
        } else if (i4 != 3) {
        } else {
            matrix.postRotate(270.0f);
            matrix.postTranslate(0.0f, f5);
        }
    }

    private boolean setFlag(int i4, boolean z4) {
        final boolean z5 = true;
        boolean z6 = (TestProtocol.sDisableSensorRotation || (this.mFlags & VALUE_ROTATION_WATCHER_ENABLED) != VALUE_ROTATION_WATCHER_ENABLED || isRecentsActivityRotationAllowed()) ? false : true;
        if (z4) {
            this.mFlags = i4 | this.mFlags;
        } else {
            this.mFlags = (~i4) & this.mFlags;
        }
        if (TestProtocol.sDisableSensorRotation || (this.mFlags & VALUE_ROTATION_WATCHER_ENABLED) != VALUE_ROTATION_WATCHER_ENABLED || isRecentsActivityRotationAllowed()) {
            z5 = false;
        }
        if (z6 != z5) {
            Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.util.E
                @Override // java.lang.Runnable
                public final void run() {
                    RecentsOrientedState.this.lambda$setFlag$1(z5);
                }
            });
        }
        return updateHandler();
    }

    private void updateAutoRotateSetting() {
        setFlag(8, this.mSettingsCache.getValue(1, SettingsCache.ROTATION_SETTING_URI));
    }

    private boolean updateHandler() {
        int inferRecentsActivityRotation = inferRecentsActivityRotation(this.mDisplayRotation);
        this.mRecentsActivityRotation = inferRecentsActivityRotation;
        if (inferRecentsActivityRotation == this.mTouchRotation || isRecentsActivityRotationAllowed()) {
            this.mOrientationHandler = PagedOrientationHandler.PORTRAIT;
        } else {
            int i4 = this.mTouchRotation;
            if (i4 == 1) {
                this.mOrientationHandler = PagedOrientationHandler.LANDSCAPE;
            } else if (i4 == 3) {
                this.mOrientationHandler = PagedOrientationHandler.SEASCAPE;
            } else {
                this.mOrientationHandler = PagedOrientationHandler.PORTRAIT;
            }
        }
        int i5 = this.mStateId;
        int i6 = ((((this.mFlags << 2) | this.mDisplayRotation) << 2) | this.mTouchRotation) << 3;
        int i7 = this.mRecentsRotation;
        if (i7 < 0) {
            i7 = 7;
        }
        int i8 = i6 | i7;
        this.mStateId = i8;
        return i8 != i5;
    }

    private void updateHomeRotationSetting() {
        boolean booleanValue = ((Boolean) LauncherPrefs.get(this.mContext).get(LauncherPrefs.ALLOW_ROTATION)).booleanValue();
        setFlag(4, booleanValue);
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).setHomeRotationEnabled(booleanValue);
    }

    public void destroyListeners() {
        this.mListenersInitialized = false;
        if (isMultipleOrientationSupportedByDevice()) {
            destroyMultipleOrientationListeners();
        }
        setRotationWatcherEnabled(false);
    }

    public void flipVertical(MotionEvent motionEvent) {
        this.mTmpMatrix.setScale(1.0f, -1.0f);
        motionEvent.transform(this.mTmpMatrix);
    }

    public void forceAllowRotationForTesting(boolean z4) {
        setFlag(128, z4);
    }

    public BaseActivityInterface getActivityInterface() {
        return this.mActivityInterface;
    }

    public int getDisplayRotation() {
        return TaskAnimationManager.SHELL_TRANSITIONS_ROTATION ? this.mRecentsActivityRotation : this.mDisplayRotation;
    }

    public float getFullScreenScaleAndPivot(Rect rect, DeviceProfile deviceProfile, PointF pointF) {
        BaseActivityInterface.getTaskDimension(this.mContext, deviceProfile, pointF);
        float min = Math.min(pointF.x / rect.width(), pointF.y / rect.height());
        if (min == 1.0f) {
            pointF.set(rect.centerX(), rect.centerY());
        } else {
            float f4 = min / (min - 1.0f);
            pointF.set(rect.left * f4, rect.top * f4);
        }
        return min;
    }

    public DeviceProfile getLauncherDeviceProfile() {
        int max;
        int min;
        InvariantDeviceProfile invariantDeviceProfile = (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(this.mContext);
        Point point = ((DisplayController) DisplayController.INSTANCE.get(this.mContext)).getInfo().currentSize;
        int i4 = this.mRecentsActivityRotation;
        if (i4 == 1 || i4 == 3) {
            max = Math.max(point.x, point.y);
            min = Math.min(point.x, point.y);
        } else {
            max = Math.min(point.x, point.y);
            min = Math.max(point.x, point.y);
        }
        return invariantDeviceProfile.getBestMatch(max, min, this.mRecentsActivityRotation);
    }

    public PagedOrientationHandler getOrientationHandler() {
        return this.mOrientationHandler;
    }

    public int getRecentsActivityRotation() {
        return this.mRecentsActivityRotation;
    }

    public int getStateId() {
        return this.mStateId;
    }

    public int getTouchRotation() {
        return this.mTouchRotation;
    }

    public void ignoreAllowHomeRotationPreference() {
        setFlag(512, true);
    }

    public void initListeners() {
        this.mListenersInitialized = true;
        if (isMultipleOrientationSupportedByDevice()) {
            initMultipleOrientationListeners();
        }
        initFlags();
    }

    public boolean isDisplayPhoneNatural() {
        int i4 = this.mDisplayRotation;
        return i4 == 0 || i4 == 2;
    }

    public boolean isMultipleOrientationSupportedByDevice() {
        return (this.mFlags & 3) == 3;
    }

    public boolean isRecentsActivityRotationAllowed() {
        int i4 = this.mFlags;
        return ((i4 & 3) == 3 && (i4 & 660) == 0) ? false : true;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (LauncherPrefs.ALLOW_ROTATION.getSharedPrefKey().equals(str)) {
            updateHomeRotationSetting();
        }
    }

    public void setDeviceProfile(DeviceProfile deviceProfile) {
        boolean isMultipleOrientationSupportedByDevice;
        boolean isMultipleOrientationSupportedByDevice2 = isMultipleOrientationSupportedByDevice();
        setFlag(2, !deviceProfile.isTablet);
        if (!this.mListenersInitialized || (isMultipleOrientationSupportedByDevice = isMultipleOrientationSupportedByDevice()) == isMultipleOrientationSupportedByDevice2) {
            return;
        }
        if (isMultipleOrientationSupportedByDevice) {
            initMultipleOrientationListeners();
        } else {
            destroyMultipleOrientationListeners();
        }
    }

    public boolean setGestureActive(boolean z4) {
        return setFlag(256, !z4);
    }

    public void setMultiWindowMode(boolean z4) {
        setFlag(16, z4);
    }

    public boolean setRecentsRotation(int i4) {
        this.mRecentsRotation = i4;
        return updateHandler();
    }

    public void setRotationWatcherEnabled(boolean z4) {
        setFlag(64, z4);
    }

    public String toString() {
        boolean z4 = (this.mFlags & 8) != 0;
        StringBuilder sb = new StringBuilder("[this=");
        sb.append(nameAndAddress(this));
        sb.append(" mOrientationHandler=");
        sb.append(nameAndAddress(this.mOrientationHandler));
        sb.append(" mDisplayRotation=");
        sb.append(this.mDisplayRotation);
        sb.append(" mTouchRotation=");
        sb.append(this.mTouchRotation);
        sb.append(" mRecentsActivityRotation=");
        sb.append(this.mRecentsActivityRotation);
        sb.append(" mRecentsRotation=");
        sb.append(this.mRecentsRotation);
        sb.append(" isRecentsActivityRotationAllowed=");
        sb.append(isRecentsActivityRotationAllowed());
        sb.append(" mSystemRotation=");
        sb.append(z4);
        sb.append(" mStateId=");
        sb.append(this.mStateId);
        sb.append(" mFlags=");
        return C1429e.a(sb, this.mFlags, "]");
    }

    public void transformEvent(float f4, MotionEvent motionEvent, boolean z4) {
        Matrix matrix = this.mTmpMatrix;
        if (z4) {
            f4 = -f4;
        }
        matrix.setRotate(f4);
        motionEvent.transform(this.mTmpMatrix);
    }

    public boolean update(int i4, int i5) {
        this.mDisplayRotation = i5;
        this.mTouchRotation = i4;
        this.mPreviousRotation = i4;
        return updateHandler();
    }
}
