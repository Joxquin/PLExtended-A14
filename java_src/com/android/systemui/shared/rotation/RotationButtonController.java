package com.android.systemui.shared.rotation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import android.view.IRotationWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManagerGlobal;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.logging.UiEventLoggerImpl;
import com.android.internal.view.RotationPolicy;
import com.android.systemui.shared.recents.utilities.Utilities;
import com.android.systemui.shared.recents.utilities.ViewRippler;
import com.android.systemui.shared.rotation.RotationButton;
import com.android.systemui.shared.rotation.RotationButtonController;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.shared.system.TaskStackChangeListeners;
import java.io.PrintWriter;
import java.util.Optional;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class RotationButtonController {
    private static final int BUTTON_FADE_IN_OUT_DURATION_MS = 100;
    private static final int NAVBAR_HIDDEN_PENDING_ICON_TIMEOUT_MS = 20000;
    private static final int NUM_ACCEPTED_ROTATION_SUGGESTIONS_FOR_INTRODUCTION = 3;
    private static final String TAG = "RotationButtonController";
    private final AccessibilityManager mAccessibilityManager;
    private Executor mBgExecutor;
    private final Context mContext;
    private final int mDarkIconColor;
    private boolean mDocked;
    private boolean mHomeRotationEnabled;
    private boolean mHoveringRotationSuggestion;
    private final int mIconCcwStart0ResId;
    private final int mIconCcwStart90ResId;
    private final int mIconCwStart0ResId;
    private final int mIconCwStart90ResId;
    private int mIconResId;
    private boolean mIsNavigationBarShowing;
    private boolean mIsRecentsAnimationRunning;
    private int mLastRotationSuggestion;
    private final int mLightIconColor;
    private int mNavBarMode;
    private boolean mPendingRotationSuggestion;
    private Animator mRotateHideAnimator;
    private RotationButton mRotationButton;
    private boolean mSkipOverrideUserLockPrefsOnce;
    private final Supplier mWindowRotationProvider;
    private static final boolean OEM_DISALLOW_ROTATION_IN_SUW = SystemProperties.getBoolean("ro.setupwizard.rotation_locked", false);
    private static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    private final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
    private final UiEventLogger mUiEventLogger = new UiEventLoggerImpl();
    private final ViewRippler mViewRippler = new ViewRippler();
    private boolean mListenersRegistered = false;
    private boolean mRotationWatcherRegistered = false;
    private int mBehavior = 1;
    private boolean mTaskBarVisible = false;
    private final Runnable mRemoveRotationProposal = new c(this, 2);
    private final Runnable mCancelPendingRotationProposal = new c(this, 3);
    private final BroadcastReceiver mDockedReceiver = new BroadcastReceiver() { // from class: com.android.systemui.shared.rotation.RotationButtonController.1
        {
            RotationButtonController.this = this;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            RotationButtonController.this.lambda$registerListeners$2(intent);
        }
    };
    private final IRotationWatcher.Stub mRotationWatcher = new AnonymousClass2();
    private final TaskStackListenerImpl mTaskStackListener = new TaskStackListenerImpl(this, 0);

    /* renamed from: com.android.systemui.shared.rotation.RotationButtonController$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends IRotationWatcher.Stub {
        public AnonymousClass2() {
            RotationButtonController.this = r1;
        }

        public /* synthetic */ void lambda$onRotationChanged$0(int i4) {
            RotationButtonController.this.onRotationWatcherChanged(i4);
        }

        public void onRotationChanged(final int i4) {
            RotationButtonController.this.mMainThreadHandler.postAtFrontOfQueue(new Runnable() { // from class: com.android.systemui.shared.rotation.f
                @Override // java.lang.Runnable
                public final void run() {
                    RotationButtonController.AnonymousClass2.this.lambda$onRotationChanged$0(i4);
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public enum RotationButtonEvent implements UiEventLogger.UiEventEnum {
        ROTATION_SUGGESTION_SHOWN(206),
        ROTATION_SUGGESTION_ACCEPTED(207);
        
        private final int mId;

        RotationButtonEvent(int i4) {
            this.mId = i4;
        }

        public int getId() {
            return this.mId;
        }
    }

    /* loaded from: classes.dex */
    public class TaskStackListenerImpl implements TaskStackChangeListener {
        public /* synthetic */ TaskStackListenerImpl(RotationButtonController rotationButtonController, int i4) {
            this();
        }

        public /* synthetic */ void lambda$onActivityRequestedOrientationChanged$0(int i4, ActivityManager.RunningTaskInfo runningTaskInfo) {
            if (runningTaskInfo.id == i4) {
                RotationButtonController.this.setRotateSuggestionButtonState(false);
            }
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onActivityRequestedOrientationChanged(final int i4, int i5) {
            Optional.ofNullable(ActivityManagerWrapper.getInstance()).map(new g()).ifPresent(new Consumer() { // from class: com.android.systemui.shared.rotation.h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    RotationButtonController.TaskStackListenerImpl.this.lambda$onActivityRequestedOrientationChanged$0(i4, (ActivityManager.RunningTaskInfo) obj);
                }
            });
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onTaskMovedToFront(int i4) {
            RotationButtonController.this.setRotateSuggestionButtonState(false);
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onTaskRemoved(int i4) {
            RotationButtonController.this.setRotateSuggestionButtonState(false);
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onTaskStackChanged() {
            RotationButtonController.this.setRotateSuggestionButtonState(false);
        }

        private TaskStackListenerImpl() {
            RotationButtonController.this = r1;
        }
    }

    public RotationButtonController(Context context, int i4, int i5, int i6, int i7, int i8, int i9, Supplier supplier) {
        this.mContext = context;
        this.mLightIconColor = i4;
        this.mDarkIconColor = i5;
        this.mIconCcwStart0ResId = i6;
        this.mIconCcwStart90ResId = i7;
        this.mIconCwStart0ResId = i8;
        this.mIconCwStart90ResId = i9;
        this.mIconResId = i7;
        this.mAccessibilityManager = AccessibilityManager.getInstance(context);
        this.mWindowRotationProvider = supplier;
        this.mBgExecutor = context.getMainExecutor();
    }

    private int computeRotationProposalTimeout() {
        return this.mAccessibilityManager.getRecommendedTimeoutMillis(this.mHoveringRotationSuggestion ? 16000 : 5000, 4);
    }

    public static boolean hasDisable2RotateSuggestionFlag(int i4) {
        return (i4 & 16) != 0;
    }

    private void incrementNumAcceptedRotationSuggestionsIfNeeded() {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        int i4 = Settings.Secure.getInt(contentResolver, "num_rotation_suggestions_accepted", 0);
        if (i4 < 3) {
            Settings.Secure.putInt(contentResolver, "num_rotation_suggestions_accepted", i4 + 1);
        }
    }

    private boolean isRotateSuggestionIntroduced() {
        return Settings.Secure.getInt(this.mContext.getContentResolver(), "num_rotation_suggestions_accepted", 0) >= 3;
    }

    public /* synthetic */ void lambda$new$0() {
        setRotateSuggestionButtonState(false);
    }

    public /* synthetic */ void lambda$new$1() {
        this.mPendingRotationSuggestion = false;
    }

    public /* synthetic */ void lambda$registerListeners$3() {
        final Intent registerReceiver = this.mContext.registerReceiver(this.mDockedReceiver, new IntentFilter("android.intent.action.DOCK_EVENT"));
        this.mContext.getMainExecutor().execute(new Runnable() { // from class: com.android.systemui.shared.rotation.b
            @Override // java.lang.Runnable
            public final void run() {
                RotationButtonController.this.lambda$registerListeners$2(registerReceiver);
            }
        });
    }

    public /* synthetic */ void lambda$unregisterListeners$4() {
        try {
            this.mContext.unregisterReceiver(this.mDockedReceiver);
        } catch (IllegalArgumentException e4) {
            Log.e(TAG, "Docked receiver already unregistered", e4);
        }
    }

    public void onRotateSuggestionClick(View view) {
        this.mUiEventLogger.log(RotationButtonEvent.ROTATION_SUGGESTION_ACCEPTED);
        incrementNumAcceptedRotationSuggestionsIfNeeded();
        setRotationLockedAtAngle(this.mLastRotationSuggestion);
        Log.i(TAG, "onRotateSuggestionClick() mLastRotationSuggestion=" + this.mLastRotationSuggestion);
        view.performHapticFeedback(1);
    }

    public boolean onRotateSuggestionHover(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        this.mHoveringRotationSuggestion = actionMasked == 9 || actionMasked == 7;
        rescheduleRotationTimeout(true);
        return false;
    }

    private void onRotationSuggestionsDisabled() {
        setRotateSuggestionButtonState(false, true);
        this.mMainThreadHandler.removeCallbacks(this.mRemoveRotationProposal);
    }

    private void rescheduleRotationTimeout(boolean z4) {
        Animator animator;
        if (!z4 || (((animator = this.mRotateHideAnimator) == null || !animator.isRunning()) && this.mRotationButton.isVisible())) {
            this.mMainThreadHandler.removeCallbacks(this.mRemoveRotationProposal);
            this.mMainThreadHandler.postDelayed(this.mRemoveRotationProposal, computeRotationProposalTimeout());
        }
    }

    private boolean shouldOverrideUserLockPrefs(int i4) {
        if (!this.mSkipOverrideUserLockPrefsOnce) {
            return i4 == 0;
        }
        this.mSkipOverrideUserLockPrefsOnce = false;
        return false;
    }

    private void showAndLogRotationSuggestion() {
        setRotateSuggestionButtonState(true);
        rescheduleRotationTimeout(false);
        this.mUiEventLogger.log(RotationButtonEvent.ROTATION_SUGGESTION_SHOWN);
    }

    private void showPendingRotationButtonIfNeeded() {
        if (canShowRotationButton() && this.mPendingRotationSuggestion) {
            showAndLogRotationSuggestion();
        }
    }

    /* renamed from: updateDockedState */
    public void lambda$registerListeners$2(Intent intent) {
        if (intent == null) {
            return;
        }
        this.mDocked = intent.getIntExtra("android.intent.extra.DOCK_STATE", 0) != 0;
    }

    private void updateRotationButtonStateInOverview() {
        if (!this.mIsRecentsAnimationRunning || this.mHomeRotationEnabled) {
            return;
        }
        setRotateSuggestionButtonState(false, true);
    }

    public boolean canShowRotationButton() {
        return this.mIsNavigationBarShowing || this.mBehavior == 1 || QuickStepContract.isGesturalMode(this.mNavBarMode);
    }

    public void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "RotationButtonController:");
        printWriter.println(String.format("%s\tmIsRecentsAnimationRunning=%b", str, Boolean.valueOf(this.mIsRecentsAnimationRunning)));
        printWriter.println(String.format("%s\tmHomeRotationEnabled=%b", str, Boolean.valueOf(this.mHomeRotationEnabled)));
        printWriter.println(String.format("%s\tmLastRotationSuggestion=%d", str, Integer.valueOf(this.mLastRotationSuggestion)));
        printWriter.println(String.format("%s\tmPendingRotationSuggestion=%b", str, Boolean.valueOf(this.mPendingRotationSuggestion)));
        printWriter.println(String.format("%s\tmHoveringRotationSuggestion=%b", str, Boolean.valueOf(this.mHoveringRotationSuggestion)));
        printWriter.println(String.format("%s\tmListenersRegistered=%b", str, Boolean.valueOf(this.mListenersRegistered)));
        printWriter.println(String.format("%s\tmIsNavigationBarShowing=%b", str, Boolean.valueOf(this.mIsNavigationBarShowing)));
        printWriter.println(String.format("%s\tmBehavior=%d", str, Integer.valueOf(this.mBehavior)));
        printWriter.println(String.format("%s\tmSkipOverrideUserLockPrefsOnce=%b", str, Boolean.valueOf(this.mSkipOverrideUserLockPrefsOnce)));
        printWriter.println(String.format("%s\tmLightIconColor=0x%s", str, Integer.toHexString(this.mLightIconColor)));
        printWriter.println(String.format("%s\tmDarkIconColor=0x%s", str, Integer.toHexString(this.mDarkIconColor)));
    }

    public Context getContext() {
        return this.mContext;
    }

    public int getDarkIconColor() {
        return this.mDarkIconColor;
    }

    public int getIconResId() {
        return this.mIconResId;
    }

    public int getLightIconColor() {
        return this.mLightIconColor;
    }

    public RotationButton getRotationButton() {
        return this.mRotationButton;
    }

    public void init() {
        registerListeners(true);
        if (this.mContext.getDisplay().getDisplayId() != 0) {
            onDisable2FlagChanged(16);
        }
    }

    public Boolean isRotationLocked() {
        try {
            return Boolean.valueOf(RotationPolicy.isRotationLocked(this.mContext));
        } catch (SecurityException e4) {
            Log.e(TAG, "Failed to get isRotationLocked", e4);
            return null;
        }
    }

    public void onBehaviorChanged(int i4, int i5) {
        if (i4 == 0 && this.mBehavior != i5) {
            this.mBehavior = i5;
            showPendingRotationButtonIfNeeded();
        }
    }

    public void onDestroy() {
        unregisterListeners();
    }

    public void onDisable2FlagChanged(int i4) {
        if (hasDisable2RotateSuggestionFlag(i4)) {
            onRotationSuggestionsDisabled();
        }
    }

    public void onNavigationBarWindowVisibilityChange(boolean z4) {
        if (this.mIsNavigationBarShowing != z4) {
            this.mIsNavigationBarShowing = z4;
            showPendingRotationButtonIfNeeded();
        }
    }

    public void onNavigationModeChanged(int i4) {
        this.mNavBarMode = i4;
    }

    public void onRotationProposal(int i4, boolean z4) {
        if ((Settings.Secure.getInt(this.mContext.getContentResolver(), "user_setup_complete", 0) != 0) || !OEM_DISALLOW_ROTATION_IN_SUW) {
            int intValue = ((Integer) this.mWindowRotationProvider.get()).intValue();
            if (this.mRotationButton.acceptRotationProposal()) {
                if (this.mHomeRotationEnabled || !this.mIsRecentsAnimationRunning) {
                    if (!z4) {
                        setRotateSuggestionButtonState(false);
                    } else if (i4 == intValue) {
                        this.mMainThreadHandler.removeCallbacks(this.mRemoveRotationProposal);
                        setRotateSuggestionButtonState(false);
                    } else {
                        Log.i(TAG, "onRotationProposal(rotation=" + i4 + ")");
                        this.mLastRotationSuggestion = i4;
                        boolean isRotationAnimationCCW = Utilities.isRotationAnimationCCW(intValue, i4);
                        if (intValue == 0 || intValue == 2) {
                            this.mIconResId = isRotationAnimationCCW ? this.mIconCcwStart0ResId : this.mIconCwStart0ResId;
                        } else {
                            this.mIconResId = isRotationAnimationCCW ? this.mIconCcwStart90ResId : this.mIconCwStart90ResId;
                        }
                        this.mRotationButton.updateIcon(this.mLightIconColor, this.mDarkIconColor);
                        if (canShowRotationButton()) {
                            showAndLogRotationSuggestion();
                            return;
                        }
                        this.mPendingRotationSuggestion = true;
                        this.mMainThreadHandler.removeCallbacks(this.mCancelPendingRotationProposal);
                        this.mMainThreadHandler.postDelayed(this.mCancelPendingRotationProposal, 20000L);
                    }
                }
            }
        }
    }

    public void onRotationWatcherChanged(int i4) {
        Boolean isRotationLocked;
        if (this.mListenersRegistered && (isRotationLocked = isRotationLocked()) != null) {
            if (isRotationLocked.booleanValue() || this.mRotationButton.isVisible()) {
                if (shouldOverrideUserLockPrefs(i4) && isRotationLocked.booleanValue() && !this.mDocked) {
                    setRotationLockedAtAngle(i4);
                }
                setRotateSuggestionButtonState(false, true);
            }
        }
    }

    public void onTaskbarStateChange(boolean z4, boolean z5) {
        this.mTaskBarVisible = z4;
        if (getRotationButton() == null) {
            return;
        }
        getRotationButton().onTaskbarStateChanged(z4, z5);
    }

    public void registerListeners(boolean z4) {
        if (this.mListenersRegistered || getContext().getPackageManager().hasSystemFeature("android.hardware.type.pc")) {
            return;
        }
        this.mListenersRegistered = true;
        this.mBgExecutor.execute(new c(this, 1));
        if (z4) {
            try {
                WindowManagerGlobal.getWindowManagerService().watchRotation(this.mRotationWatcher, 0);
                this.mRotationWatcherRegistered = true;
            } catch (RemoteException e4) {
                Log.e(TAG, "RegisterListeners caught a RemoteException", e4);
                return;
            } catch (IllegalArgumentException e5) {
                this.mListenersRegistered = false;
                Log.w(TAG, "RegisterListeners for the display failed", e5);
            }
        }
        TaskStackChangeListeners.getInstance().registerTaskStackListener(this.mTaskStackListener);
    }

    public void setBgExecutor(Executor executor) {
        this.mBgExecutor = executor;
    }

    public void setDarkIntensity(float f4) {
        this.mRotationButton.setDarkIntensity(f4);
    }

    public void setHomeRotationEnabled(boolean z4) {
        this.mHomeRotationEnabled = z4;
        updateRotationButtonStateInOverview();
    }

    public void setRecentsAnimationRunning(boolean z4) {
        this.mIsRecentsAnimationRunning = z4;
        updateRotationButtonStateInOverview();
    }

    public void setRotateSuggestionButtonState(boolean z4) {
        setRotateSuggestionButtonState(z4, false);
    }

    public void setRotationButton(RotationButton rotationButton, RotationButton.RotationButtonUpdatesCallback rotationButtonUpdatesCallback) {
        this.mRotationButton = rotationButton;
        rotationButton.setRotationButtonController(this);
        this.mRotationButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.shared.rotation.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RotationButtonController.this.onRotateSuggestionClick(view);
            }
        });
        this.mRotationButton.setOnHoverListener(new View.OnHoverListener() { // from class: com.android.systemui.shared.rotation.e
            @Override // android.view.View.OnHoverListener
            public final boolean onHover(View view, MotionEvent motionEvent) {
                boolean onRotateSuggestionHover;
                onRotateSuggestionHover = RotationButtonController.this.onRotateSuggestionHover(view, motionEvent);
                return onRotateSuggestionHover;
            }
        });
        this.mRotationButton.setUpdatesCallback(rotationButtonUpdatesCallback);
    }

    public void setRotationLockedAtAngle(int i4) {
        Boolean isRotationLocked = isRotationLocked();
        if (isRotationLocked == null) {
            return;
        }
        RotationPolicy.setRotationLockAtAngle(this.mContext, isRotationLocked.booleanValue(), i4);
    }

    public void setSkipOverrideUserLockPrefsOnce() {
        this.mSkipOverrideUserLockPrefsOnce = !this.mIsRecentsAnimationRunning;
    }

    public void unregisterListeners() {
        if (this.mListenersRegistered) {
            this.mListenersRegistered = false;
            this.mBgExecutor.execute(new c(this, 0));
            if (this.mRotationWatcherRegistered) {
                try {
                    WindowManagerGlobal.getWindowManagerService().removeRotationWatcher(this.mRotationWatcher);
                } catch (RemoteException e4) {
                    Log.e(TAG, "UnregisterListeners caught a RemoteException", e4);
                    return;
                }
            }
            TaskStackChangeListeners.getInstance().unregisterTaskStackListener(this.mTaskStackListener);
        }
    }

    public void setRotateSuggestionButtonState(boolean z4, boolean z5) {
        View currentView;
        Drawable imageDrawable;
        if ((!z4 && !this.mRotationButton.isVisible()) || (currentView = this.mRotationButton.getCurrentView()) == null || (imageDrawable = this.mRotationButton.getImageDrawable()) == null) {
            return;
        }
        this.mPendingRotationSuggestion = false;
        this.mMainThreadHandler.removeCallbacks(this.mCancelPendingRotationProposal);
        if (z4) {
            Animator animator = this.mRotateHideAnimator;
            if (animator != null && animator.isRunning()) {
                this.mRotateHideAnimator.cancel();
            }
            this.mRotateHideAnimator = null;
            currentView.setAlpha(1.0f);
            if (imageDrawable instanceof AnimatedVectorDrawable) {
                AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) imageDrawable;
                animatedVectorDrawable.reset();
                animatedVectorDrawable.start();
            }
            if (!isRotateSuggestionIntroduced()) {
                this.mViewRippler.start(currentView);
            }
            this.mRotationButton.show();
            return;
        }
        this.mViewRippler.stop();
        if (z5) {
            Animator animator2 = this.mRotateHideAnimator;
            if (animator2 != null && animator2.isRunning()) {
                this.mRotateHideAnimator.pause();
            }
            this.mRotationButton.hide();
            return;
        }
        Animator animator3 = this.mRotateHideAnimator;
        if (animator3 == null || !animator3.isRunning()) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(currentView, "alpha", 0.0f);
            ofFloat.setDuration(100L);
            ofFloat.setInterpolator(LINEAR_INTERPOLATOR);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.shared.rotation.RotationButtonController.3
                {
                    RotationButtonController.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator4) {
                    RotationButtonController.this.mRotationButton.hide();
                }
            });
            this.mRotateHideAnimator = ofFloat;
            ofFloat.start();
        }
    }
}
