package com.android.quickstep;

import android.content.Context;
import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import com.android.launcher3.MotionEventsUtils;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.testing.shared.TestProtocol;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.NavigationMode;
import com.android.quickstep.GestureState;
import com.android.quickstep.OrientationTouchTransformer;
import com.android.quickstep.util.RecentsOrientedState;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.shared.system.TaskStackChangeListeners;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes.dex */
public class RotationTouchHelper implements DisplayController.DisplayInfoChangeListener {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new V0());
    private final Context mContext;
    private DisplayController mDisplayController;
    private int mDisplayId;
    private int mDisplayRotation;
    private boolean mInOverview;
    private Runnable mOnDestroyFrozenTaskRunnable;
    private OrientationEventListener mOrientationListener;
    private OrientationTouchTransformer mOrientationTouchTransformer;
    private boolean mTaskListFrozen;
    private final ArrayList mOnDestroyActions = new ArrayList();
    private NavigationMode mMode = NavigationMode.THREE_BUTTONS;
    private TaskStackChangeListener mFrozenTaskListener = new TaskStackChangeListener() { // from class: com.android.quickstep.RotationTouchHelper.1
        {
            RotationTouchHelper.this = this;
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onActivityRotation(int i4) {
            if (i4 != RotationTouchHelper.this.mDisplayId) {
                return;
            }
            RotationTouchHelper.this.mPrioritizeDeviceRotation = true;
            if (RotationTouchHelper.this.mInOverview) {
                RotationTouchHelper.this.mExitOverviewRunnable.run();
            }
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onRecentTaskListFrozenChanged(boolean z4) {
            RotationTouchHelper.this.mTaskListFrozen = z4;
            if (z4 || RotationTouchHelper.this.mInOverview) {
                return;
            }
            RotationTouchHelper.this.enableMultipleRegions(false);
        }
    };
    private Runnable mExitOverviewRunnable = new Runnable() { // from class: com.android.quickstep.RotationTouchHelper.2
        {
            RotationTouchHelper.this = this;
        }

        @Override // java.lang.Runnable
        public void run() {
            RotationTouchHelper.this.mInOverview = false;
            RotationTouchHelper.this.enableMultipleRegions(false);
        }
    };
    private int mSensorRotation = 0;
    private int mCurrentAppRotation = -1;
    private boolean mPrioritizeDeviceRotation = false;
    private boolean mNeedsInit = true;

    private RotationTouchHelper(Context context) {
        this.mContext = context;
        init();
    }

    public static /* synthetic */ RotationTouchHelper d(Context context) {
        return new RotationTouchHelper(context);
    }

    private void destroyOrientationSwipeHandlerCallback() {
        TaskStackChangeListeners.getInstance().unregisterTaskStackListener(this.mFrozenTaskListener);
        this.mOnDestroyActions.remove(this.mOnDestroyFrozenTaskRunnable);
    }

    public void enableMultipleRegions(boolean z4) {
        this.mOrientationTouchTransformer.enableMultipleRegions(z4, this.mDisplayController.getInfo());
        notifySysuiOfCurrentRotation(this.mOrientationTouchTransformer.getQuickStepStartingRotation());
        if (!z4 || this.mInOverview || TestProtocol.sDisableSensorRotation) {
            LooperExecutor looperExecutor = Executors.UI_HELPER_EXECUTOR;
            final OrientationEventListener orientationEventListener = this.mOrientationListener;
            Objects.requireNonNull(orientationEventListener);
            looperExecutor.execute(new Runnable() { // from class: com.android.quickstep.W0
                @Override // java.lang.Runnable
                public final void run() {
                    switch (r2) {
                        case 0:
                            orientationEventListener.enable();
                            return;
                        default:
                            orientationEventListener.disable();
                            return;
                    }
                }
            });
            return;
        }
        this.mSensorRotation = this.mCurrentAppRotation;
        LooperExecutor looperExecutor2 = Executors.UI_HELPER_EXECUTOR;
        final OrientationEventListener orientationEventListener2 = this.mOrientationListener;
        Objects.requireNonNull(orientationEventListener2);
        looperExecutor2.execute(new Runnable() { // from class: com.android.quickstep.W0
            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                        orientationEventListener2.enable();
                        return;
                    default:
                        orientationEventListener2.disable();
                        return;
                }
            }
        });
    }

    public /* synthetic */ float lambda$init$0() {
        return QuickStepContract.getWindowCornerRadius(this.mContext);
    }

    public /* synthetic */ void lambda$init$1() {
        this.mDisplayController.removeChangeListener(this);
    }

    public /* synthetic */ void lambda$notifySysuiOfCurrentRotation$3(int i4) {
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).notifyPrioritizedRotation(i4);
    }

    public /* synthetic */ void lambda$setupOrientationSwipeHandler$2() {
        TaskStackChangeListeners.getInstance().unregisterTaskStackListener(this.mFrozenTaskListener);
    }

    private void notifySysuiOfCurrentRotation(final int i4) {
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.U0
            @Override // java.lang.Runnable
            public final void run() {
                RotationTouchHelper.this.lambda$notifySysuiOfCurrentRotation$3(i4);
            }
        });
    }

    private void onDisplayInfoChangedInternal(DisplayController.Info info, int i4, boolean z4) {
        boolean z5;
        if ((i4 & 27) != 0) {
            this.mDisplayRotation = info.rotation;
            if (this.mMode.hasGestures) {
                updateGestureTouchRegions();
                this.mOrientationTouchTransformer.createOrAddTouchRegion(info);
                int i5 = this.mDisplayRotation;
                this.mCurrentAppRotation = i5;
                if ((this.mPrioritizeDeviceRotation || i5 == this.mSensorRotation) && !this.mInOverview && this.mTaskListFrozen) {
                    toggleSecondaryNavBarsForRotation();
                }
            }
        }
        if ((i4 & 16) != 0) {
            NavigationMode navigationMode = info.navigationMode;
            this.mOrientationTouchTransformer.setNavigationMode(navigationMode, this.mDisplayController.getInfo(), this.mContext.getResources());
            if (z4 || (!(z5 = this.mMode.hasGestures) && navigationMode.hasGestures)) {
                setupOrientationSwipeHandler();
            } else if (z5 && !navigationMode.hasGestures) {
                destroyOrientationSwipeHandlerCallback();
            }
            this.mMode = navigationMode;
        }
    }

    private void runOnDestroy(Runnable runnable) {
        this.mOnDestroyActions.add(runnable);
    }

    private void setupOrientationSwipeHandler() {
        TaskStackChangeListeners.getInstance().registerTaskStackListener(this.mFrozenTaskListener);
        T0 t02 = new T0(this, 1);
        this.mOnDestroyFrozenTaskRunnable = t02;
        runOnDestroy(t02);
    }

    public void toggleSecondaryNavBarsForRotation() {
        this.mOrientationTouchTransformer.setSingleActiveRegion(this.mDisplayController.getInfo());
        notifySysuiOfCurrentRotation(this.mOrientationTouchTransformer.getCurrentActiveRotation());
    }

    public void destroy() {
        Iterator it = this.mOnDestroyActions.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.mNeedsInit = true;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("RotationTouchHelper:");
        printWriter.println("  currentActiveRotation=" + getCurrentActiveRotation());
        printWriter.println("  displayRotation=" + getDisplayRotation());
        this.mOrientationTouchTransformer.dump(printWriter);
    }

    public int getCurrentActiveRotation() {
        return !this.mMode.hasGestures ? this.mDisplayRotation : this.mOrientationTouchTransformer.getCurrentActiveRotation();
    }

    public int getDisplayRotation() {
        return this.mDisplayRotation;
    }

    public OrientationTouchTransformer getOrientationTouchTransformer() {
        return this.mOrientationTouchTransformer;
    }

    public void init() {
        if (this.mNeedsInit) {
            this.mDisplayController = (DisplayController) DisplayController.INSTANCE.get(this.mContext);
            Resources resources = this.mContext.getResources();
            this.mDisplayId = 0;
            this.mOrientationTouchTransformer = new OrientationTouchTransformer(resources, this.mMode, new OrientationTouchTransformer.QuickStepContractInfo() { // from class: com.android.quickstep.S0
                @Override // com.android.quickstep.OrientationTouchTransformer.QuickStepContractInfo
                public final float getWindowCornerRadius() {
                    float lambda$init$0;
                    lambda$init$0 = RotationTouchHelper.this.lambda$init$0();
                    return lambda$init$0;
                }
            });
            this.mDisplayController.addChangeListener(this);
            DisplayController.Info info = this.mDisplayController.getInfo();
            onDisplayInfoChangedInternal(info, 31, info.navigationMode.hasGestures);
            runOnDestroy(new T0(this, 0));
            this.mOrientationListener = new OrientationEventListener(this.mContext) { // from class: com.android.quickstep.RotationTouchHelper.3
                {
                    RotationTouchHelper.this = this;
                }

                @Override // android.view.OrientationEventListener
                public void onOrientationChanged(int i4) {
                    int rotationForUserDegreesRotated = RecentsOrientedState.getRotationForUserDegreesRotated(i4, RotationTouchHelper.this.mSensorRotation);
                    if (rotationForUserDegreesRotated == RotationTouchHelper.this.mSensorRotation) {
                        return;
                    }
                    RotationTouchHelper.this.mSensorRotation = rotationForUserDegreesRotated;
                    RotationTouchHelper.this.mPrioritizeDeviceRotation = true;
                    if (rotationForUserDegreesRotated == RotationTouchHelper.this.mCurrentAppRotation) {
                        RotationTouchHelper.this.toggleSecondaryNavBarsForRotation();
                    }
                }
            };
            this.mNeedsInit = false;
        }
    }

    public boolean isInSwipeUpTouchRegion(MotionEvent motionEvent, int i4) {
        if (FeatureFlags.ENABLE_TRACKPAD_GESTURE.get() && motionEvent.getClassification() == 3) {
            return false;
        }
        if (MotionEventsUtils.isTrackpadMultiFingerSwipe(motionEvent)) {
            return true;
        }
        return this.mOrientationTouchTransformer.touchInValidSwipeRegions(motionEvent.getX(i4), motionEvent.getY(i4));
    }

    public boolean isTaskListFrozen() {
        return this.mTaskListFrozen;
    }

    @Override // com.android.launcher3.util.DisplayController.DisplayInfoChangeListener
    public void onDisplayInfoChanged(Context context, DisplayController.Info info, int i4) {
        onDisplayInfoChangedInternal(info, i4, false);
    }

    public void onEndTargetCalculated(GestureState.GestureEndTarget gestureEndTarget, BaseActivityInterface baseActivityInterface) {
        if (gestureEndTarget == GestureState.GestureEndTarget.RECENTS) {
            this.mInOverview = true;
            if (!this.mTaskListFrozen) {
                enableMultipleRegions(true);
            }
            baseActivityInterface.onExitOverview(this, this.mExitOverviewRunnable);
        } else if (gestureEndTarget == GestureState.GestureEndTarget.HOME || gestureEndTarget == GestureState.GestureEndTarget.ALL_APPS) {
            enableMultipleRegions(false);
        } else if (gestureEndTarget == GestureState.GestureEndTarget.NEW_TASK) {
            if (this.mOrientationTouchTransformer.getQuickStepStartingRotation() == -1) {
                enableMultipleRegions(true);
            } else {
                notifySysuiOfCurrentRotation(this.mOrientationTouchTransformer.getCurrentActiveRotation());
            }
            this.mPrioritizeDeviceRotation = false;
        } else if (gestureEndTarget == GestureState.GestureEndTarget.LAST_TASK && this.mTaskListFrozen) {
            notifySysuiOfCurrentRotation(this.mOrientationTouchTransformer.getCurrentActiveRotation());
        }
    }

    public void onStartGesture() {
        if (this.mTaskListFrozen) {
            notifySysuiOfCurrentRotation(this.mOrientationTouchTransformer.getCurrentActiveRotation());
        }
    }

    public void setGesturalHeight(int i4) {
        this.mOrientationTouchTransformer.setGesturalHeight(i4, this.mDisplayController.getInfo(), this.mContext.getResources());
    }

    public void setOrientationTransformIfNeeded(MotionEvent motionEvent) {
        if (motionEvent.getX() < 0.0f || motionEvent.getY() < 0.0f) {
            motionEvent.setLocation(Math.max(0.0f, motionEvent.getX()), Math.max(0.0f, motionEvent.getY()));
        }
        this.mOrientationTouchTransformer.transform(motionEvent);
    }

    public boolean touchInAssistantRegion(MotionEvent motionEvent) {
        return this.mOrientationTouchTransformer.touchInAssistantRegion(motionEvent);
    }

    public boolean touchInOneHandedModeRegion(MotionEvent motionEvent) {
        return this.mOrientationTouchTransformer.touchInOneHandedModeRegion(motionEvent);
    }

    public void updateGestureTouchRegions() {
        if (this.mMode.hasGestures) {
            this.mOrientationTouchTransformer.createOrAddTouchRegion(this.mDisplayController.getInfo());
        }
    }

    public boolean isInSwipeUpTouchRegion(MotionEvent motionEvent) {
        return isInSwipeUpTouchRegion(motionEvent, 0);
    }
}
