package com.android.launcher3.taskbar;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.FloatProperty;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.core.view.ViewTreeObserver$OnPreDrawListenerC0181s;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.Reorderable;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AlphaUpdateListener;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.RoundedRectRevealOutlineProvider;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.ThemedIconDrawable;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.util.C0481n;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.launcher3.util.MultiTranslateDelegate;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.DoubleShadowBubbleTextView;
import com.android.launcher3.views.IconButtonView;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.function.Predicate;
import s.C1391a;
/* loaded from: classes.dex */
public final class TaskbarViewController implements TaskbarControllers.LoggableTaskbarController {
    private static final S0 NO_OP = new S0();

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f5073d = 0;
    private final TaskbarActivityContext mActivity;
    private TaskbarControllers mControllers;
    private boolean mIsHotseatIconOnTopWhenAligned;
    private final boolean mIsRtl;
    private boolean mIsStashed;
    private final int mLauncherThemedIconsBackgroundColor;
    private final TaskbarModelCallbacks mModelCallbacks;
    private final int mStashedHandleHeight;
    private final int mTaskbarBottomMargin;
    private final MultiValueAlpha mTaskbarIconAlpha;
    private float mTaskbarIconTranslationYForSpringOnStash;
    private float mTaskbarIconTranslationYForSwipe;
    private AnimatedFloat mTaskbarNavButtonTranslationY;
    private AnimatedFloat mTaskbarNavButtonTranslationYForInAppDisplay;
    private final int mTaskbarThemedIconsBackgroundColor;
    private final TaskbarView mTaskbarView;
    private final AnimatedFloat mTaskbarIconScaleForStash = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.Q0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarViewController f5062e;

        {
            this.f5062e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    TaskbarViewController.b(this.f5062e);
                    return;
                case 1:
                    this.f5062e.updateTranslationY();
                    return;
                case 2:
                    this.f5062e.updateTranslationY();
                    return;
                default:
                    this.f5062e.updateIconsBackground();
                    return;
            }
        }
    });
    private final AnimatedFloat mTaskbarIconTranslationYForHome = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.Q0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarViewController f5062e;

        {
            this.f5062e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    TaskbarViewController.b(this.f5062e);
                    return;
                case 1:
                    this.f5062e.updateTranslationY();
                    return;
                case 2:
                    this.f5062e.updateTranslationY();
                    return;
                default:
                    this.f5062e.updateIconsBackground();
                    return;
            }
        }
    });
    private final AnimatedFloat mTaskbarIconTranslationYForStash = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.Q0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarViewController f5062e;

        {
            this.f5062e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    TaskbarViewController.b(this.f5062e);
                    return;
                case 1:
                    this.f5062e.updateTranslationY();
                    return;
                case 2:
                    this.f5062e.updateTranslationY();
                    return;
                default:
                    this.f5062e.updateIconsBackground();
                    return;
            }
        }
    });
    private final AnimatedFloat mThemedIconsBackgroundProgress = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.Q0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarViewController f5062e;

        {
            this.f5062e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    TaskbarViewController.b(this.f5062e);
                    return;
                case 1:
                    this.f5062e.updateTranslationY();
                    return;
                case 2:
                    this.f5062e.updateTranslationY();
                    return;
                default:
                    this.f5062e.updateIconsBackground();
                    return;
            }
        }
    });
    private AnimatorPlaybackController mIconAlignControllerLazy = null;
    private Runnable mOnControllerPreCreateCallback = NO_OP;
    private final R0 mDeviceProfileChangeListener = new DeviceProfile.OnDeviceProfileChangeListener() { // from class: com.android.launcher3.taskbar.R0
        @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
        public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
            TaskbarViewController.this.commitRunningAppsToUI();
        }
    };

    /* loaded from: classes.dex */
    public final class TaskbarViewCallbacks {
        private boolean mCanceledStashHint;
        private float mDownX;
        private float mDownY;
        private final float mSquaredTouchSlop;

        public TaskbarViewCallbacks() {
            this.mSquaredTouchSlop = Utilities.squaredTouchSlop(TaskbarViewController.this.mActivity);
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
            if (r7 != 3) goto L8;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean onTouchEvent(android.view.MotionEvent r7) {
            /*
                r6 = this;
                float r0 = r7.getRawX()
                float r1 = r7.getRawY()
                int r7 = r7.getAction()
                com.android.launcher3.taskbar.TaskbarViewController r2 = com.android.launcher3.taskbar.TaskbarViewController.this
                r3 = 0
                r4 = 1
                if (r7 == 0) goto L4a
                if (r7 == r4) goto L3c
                r5 = 2
                if (r7 == r5) goto L1b
                r0 = 3
                if (r7 == r0) goto L3c
                goto L59
            L1b:
                boolean r7 = r6.mCanceledStashHint
                if (r7 != 0) goto L59
                float r7 = r6.mDownX
                float r7 = r7 - r0
                float r0 = r6.mDownY
                float r0 = r0 - r1
                java.lang.String[] r1 = com.android.launcher3.Utilities.EMPTY_STRING_ARRAY
                float r7 = r7 * r7
                float r0 = r0 * r0
                float r0 = r0 + r7
                float r7 = r6.mSquaredTouchSlop
                int r7 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
                if (r7 <= 0) goto L59
                com.android.launcher3.taskbar.TaskbarControllers r7 = com.android.launcher3.taskbar.TaskbarViewController.e(r2)
                com.android.launcher3.taskbar.TaskbarStashController r7 = r7.taskbarStashController
                r7.startStashHint(r3)
                r6.mCanceledStashHint = r4
                return r4
            L3c:
                boolean r6 = r6.mCanceledStashHint
                if (r6 != 0) goto L59
                com.android.launcher3.taskbar.TaskbarControllers r6 = com.android.launcher3.taskbar.TaskbarViewController.e(r2)
                com.android.launcher3.taskbar.TaskbarStashController r6 = r6.taskbarStashController
                r6.startStashHint(r3)
                goto L59
            L4a:
                r6.mDownX = r0
                r6.mDownY = r1
                com.android.launcher3.taskbar.TaskbarControllers r7 = com.android.launcher3.taskbar.TaskbarViewController.e(r2)
                com.android.launcher3.taskbar.TaskbarStashController r7 = r7.taskbarStashController
                r7.startStashHint(r4)
                r6.mCanceledStashHint = r3
            L59:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.taskbar.TaskbarViewController.TaskbarViewCallbacks.onTouchEvent(android.view.MotionEvent):boolean");
        }
    }

    /* JADX WARN: Type inference failed for: r3v6, types: [com.android.launcher3.taskbar.R0] */
    public TaskbarViewController(TaskbarActivityContext context, TaskbarView taskbarView) {
        float f4;
        float abs;
        int round;
        int round2;
        int round3;
        int round4;
        int i4 = 0;
        this.mActivity = context;
        this.mTaskbarView = taskbarView;
        MultiValueAlpha multiValueAlpha = new MultiValueAlpha(7, taskbarView, 4);
        this.mTaskbarIconAlpha = multiValueAlpha;
        multiValueAlpha.setUpdateVisibility();
        kotlin.jvm.internal.h.e(context, "context");
        ResourceBasedOverride object = ResourceBasedOverride.Overrides.getObject(R.string.taskbar_model_callbacks_factory_class, context, TaskbarModelCallbacksFactory.class);
        kotlin.jvm.internal.h.d(object, "getObject(\n             …tory_class,\n            )");
        this.mModelCallbacks = ((TaskbarModelCallbacksFactory) object).create(context, taskbarView);
        this.mTaskbarBottomMargin = context.getDeviceProfile().taskbarBottomMargin;
        this.mStashedHandleHeight = context.getResources().getDimensionPixelSize(R.dimen.taskbar_stashed_handle_height);
        int i5 = ThemedIconDrawable.getColors(context)[0];
        this.mLauncherThemedIconsBackgroundColor = i5;
        if (Utilities.isDarkTheme(context)) {
            float[] fArr = new float[3];
            ThreadLocal threadLocal = E.a.f327a;
            float red = Color.red(i5) / 255.0f;
            float green = Color.green(i5) / 255.0f;
            float blue = Color.blue(i5) / 255.0f;
            float max = Math.max(red, Math.max(green, blue));
            float min = Math.min(red, Math.min(green, blue));
            float f5 = max - min;
            float f6 = (max + min) / 2.0f;
            if (max == min) {
                f4 = 0.0f;
                abs = 0.0f;
            } else {
                f4 = max == red ? ((green - blue) / f5) % 6.0f : max == green ? ((blue - red) / f5) + 2.0f : ((red - green) / f5) + 4.0f;
                abs = f5 / (1.0f - Math.abs((f6 * 2.0f) - 1.0f));
            }
            float f7 = (f4 * 60.0f) % 360.0f;
            f7 = f7 < 0.0f ? f7 + 360.0f : f7;
            fArr[0] = f7 < 0.0f ? 0.0f : Math.min(f7, 360.0f);
            fArr[1] = abs < 0.0f ? 0.0f : Math.min(abs, 1.0f);
            fArr[2] = f6 >= 0.0f ? Math.min(f6, 1.0f) : 0.0f;
            fArr[2] = 0.3f;
            float f8 = fArr[0];
            float abs2 = (1.0f - Math.abs(-0.39999998f)) * fArr[1];
            float f9 = 0.3f - (0.5f * abs2);
            float abs3 = (1.0f - Math.abs(((f8 / 60.0f) % 2.0f) - 1.0f)) * abs2;
            switch (((int) f8) / 60) {
                case 0:
                    i4 = Math.round((abs2 + f9) * 255.0f);
                    round = Math.round((abs3 + f9) * 255.0f);
                    round2 = Math.round(f9 * 255.0f);
                    break;
                case 1:
                    i4 = Math.round((abs3 + f9) * 255.0f);
                    round = Math.round((abs2 + f9) * 255.0f);
                    round2 = Math.round(f9 * 255.0f);
                    break;
                case 2:
                    i4 = Math.round(f9 * 255.0f);
                    round = Math.round((abs2 + f9) * 255.0f);
                    round2 = Math.round((abs3 + f9) * 255.0f);
                    break;
                case 3:
                    round3 = Math.round(f9 * 255.0f);
                    round4 = Math.round((abs3 + f9) * 255.0f);
                    round2 = Math.round((abs2 + f9) * 255.0f);
                    int i6 = round4;
                    i4 = round3;
                    round = i6;
                    break;
                case 4:
                    round3 = Math.round((abs3 + f9) * 255.0f);
                    round4 = Math.round(f9 * 255.0f);
                    round2 = Math.round((abs2 + f9) * 255.0f);
                    int i62 = round4;
                    i4 = round3;
                    round = i62;
                    break;
                case 5:
                case 6:
                    i4 = Math.round((abs2 + f9) * 255.0f);
                    round = Math.round(f9 * 255.0f);
                    round2 = Math.round((abs3 + f9) * 255.0f);
                    break;
                default:
                    round2 = 0;
                    round = 0;
                    break;
            }
            this.mTaskbarThemedIconsBackgroundColor = Color.rgb(E.a.i(i4), E.a.i(round), E.a.i(round2));
        } else {
            this.mTaskbarThemedIconsBackgroundColor = i5;
        }
        this.mIsRtl = Utilities.isRtl(taskbarView.getResources());
    }

    public static /* synthetic */ void a(TaskbarViewController taskbarViewController, int i4, int i5, ValueAnimator valueAnimator) {
        taskbarViewController.getClass();
        if (valueAnimator.getAnimatedFraction() <= 0.0f) {
            i4 = i5;
        }
        taskbarViewController.mActivity.setTaskbarWindowHeight(i4);
    }

    public static void b(TaskbarViewController taskbarViewController) {
        float f4 = taskbarViewController.mTaskbarIconScaleForStash.value;
        TaskbarView taskbarView = taskbarViewController.mTaskbarView;
        taskbarView.setScaleX(f4);
        taskbarView.setScaleY(f4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTranslationY() {
        this.mTaskbarView.setTranslationY(this.mTaskbarIconTranslationYForHome.value + this.mTaskbarIconTranslationYForStash.value + this.mTaskbarIconTranslationYForSwipe + this.mTaskbarIconTranslationYForSpringOnStash);
    }

    public final void addOneTimePreDrawListener(P0 p02) {
        ViewTreeObserver$OnPreDrawListenerC0181s.a(this.mTaskbarView, p02);
    }

    public final void addRevealAnimToIsStashed(AnimatorSet animatorSet, boolean z4, long j4, Interpolator interpolator, boolean z5) {
        int childCount;
        int i4;
        int i5;
        float f4;
        float f5;
        int i6;
        char c4;
        float[] fArr;
        float[] fArr2;
        boolean z6;
        TaskbarViewController taskbarViewController = this;
        AnimatorSet animatorSet2 = animatorSet;
        AnimatorSet animatorSet3 = new AnimatorSet();
        Rect rect = new Rect();
        taskbarViewController.mControllers.stashedHandleViewController.getStashedHandleBounds(rect);
        TaskbarView taskbarView = taskbarViewController.mTaskbarView;
        float width = rect.width() / taskbarView.getChildCount();
        float iconTouchSize = taskbarView.getIconTouchSize() - rect.height();
        boolean z7 = true;
        int childCount2 = taskbarView.getChildCount() - 1;
        while (childCount2 >= 0) {
            View childAt = taskbarView.getChildAt(childCount2);
            boolean z8 = childAt == taskbarView.getQsb() ? z7 : false;
            TaskbarView taskbarView2 = taskbarView;
            Rect rect2 = new Rect(0, 0, childAt.getWidth(), childAt.getHeight());
            int centerY = rect2.centerY();
            int i7 = taskbarViewController.mStashedHandleHeight / 2;
            int i8 = centerY - i7;
            int i9 = centerY + i7;
            if (!z8) {
                int width2 = (int) ((rect2.width() - width) / 2.0f);
                int i10 = rect2.left + width2;
                i4 = rect2.right - width2;
                i5 = i10;
            } else if (taskbarViewController.mIsRtl) {
                i4 = rect2.right;
                i5 = (int) (i4 - width);
            } else {
                i5 = rect2.left;
                i4 = (int) (i5 + width);
            }
            Rect rect3 = new Rect(i5, i8, i4, i9);
            if (z8) {
                f4 = 2.0f;
                f5 = rect2.height() / 2.0f;
            } else {
                f4 = 2.0f;
                f5 = 0.0f;
            }
            ValueAnimator b4 = new RoundedRectRevealOutlineProvider(f5, rect3.height() / f4, rect2, rect3).b(childAt, !z4, 0.0f);
            if (z5) {
                Iterator<Animator.AnimatorListener> it = b4.getListeners().iterator();
                while (it.hasNext()) {
                    it.next().onAnimationStart(b4);
                }
            }
            animatorSet3.play(b4.setDuration(j4));
            float x4 = z8 ? childAt.getX() : childAt.getLeft();
            float f6 = (childCount2 * width) + rect.left;
            float f7 = x4 > f6 ? -((x4 + childAt.getWidth()) - (rect.right - (((childCount - 1) - childCount2) * width))) : f6 - x4;
            if (z4) {
                c4 = 0;
                fArr = new float[]{f7};
                i6 = 2;
            } else {
                i6 = 2;
                c4 = 0;
                fArr = new float[]{f7, 0.0f};
            }
            if (z4) {
                fArr2 = new float[1];
                fArr2[c4] = iconTouchSize;
            } else {
                float[] fArr3 = new float[i6];
                fArr3[c4] = iconTouchSize;
                fArr3[1] = 0.0f;
                fArr2 = fArr3;
            }
            if (childAt instanceof Reorderable) {
                MultiTranslateDelegate translateDelegate = ((Reorderable) childAt).getTranslateDelegate();
                MultiPropertyFactory.MultiProperty translationX = translateDelegate.getTranslationX(4);
                FloatProperty floatProperty = MultiPropertyFactory.MULTI_PROPERTY_VALUE;
                animatorSet3.play(ObjectAnimator.ofFloat(translationX, floatProperty, fArr).setDuration(j4));
                animatorSet3.play(ObjectAnimator.ofFloat(translateDelegate.getTranslationY(4), floatProperty, fArr2));
                z6 = true;
                animatorSet2 = animatorSet;
                animatorSet2.addListener(AnimatorListeners.forEndCallback(new V0(1, translateDelegate)));
            } else {
                animatorSet2 = animatorSet;
                z6 = true;
                animatorSet3.play(ObjectAnimator.ofFloat(childAt, LauncherAnimUtils.VIEW_TRANSLATE_X, fArr).setDuration(j4));
                animatorSet3.play(ObjectAnimator.ofFloat(childAt, LauncherAnimUtils.VIEW_TRANSLATE_Y, fArr2));
                animatorSet2.addListener(AnimatorListeners.forEndCallback(new V0(2, childAt)));
            }
            childCount2--;
            taskbarViewController = this;
            z7 = z6;
            taskbarView = taskbarView2;
        }
        animatorSet3.setInterpolator(interpolator);
        animatorSet2.play(animatorSet3);
    }

    public final void announceForAccessibility$1() {
        TaskbarView taskbarView = this.mTaskbarView;
        taskbarView.performAccessibilityAction(taskbarView.isVisibleToUser() ? 64 : 128, null);
        ((ActivityContext) ActivityContext.lookupContext(taskbarView.getContext())).getDragLayer().sendAccessibilityEvent(2048);
    }

    public final boolean areIconsVisible() {
        return this.mTaskbarView.getVisibility() == 0;
    }

    public final void commitRunningAppsToUI() {
        this.mModelCallbacks.commitRunningAppsToUI();
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "TaskbarViewController:");
        this.mTaskbarIconAlpha.dump(str + "\t", printWriter, "mTaskbarIconAlpha", "ALPHA_INDEX_HOME", "ALPHA_INDEX_KEYGUARD", "ALPHA_INDEX_STASH", "ALPHA_INDEX_RECENTS_DISABLED", "ALPHA_INDEX_NOTIFICATION_EXPANDED", "ALPHA_INDEX_ASSISTANT_INVOKED", "ALPHA_INDEX_IME_BUTTON_NAV", "ALPHA_INDEX_SMALL_SCREEN");
        this.mModelCallbacks.dumpLogs(C1391a.a(str, "\t"), printWriter);
    }

    public final IconButtonView getAllAppsButtonView() {
        return this.mTaskbarView.getAllAppsButtonView();
    }

    public final View getFirstIconMatch(Predicate predicate) {
        int i4 = ItemInfoMatcher.f5271a;
        return this.mTaskbarView.getFirstMatch(predicate, new C0481n(2, predicate));
    }

    public final Rect getIconLayoutBounds() {
        return this.mTaskbarView.getIconLayoutBounds();
    }

    public final View[] getIconViews() {
        TaskbarView taskbarView = this.mTaskbarView;
        int childCount = taskbarView.getChildCount();
        View[] viewArr = new View[childCount];
        for (int i4 = 0; i4 < childCount; i4++) {
            viewArr[i4] = taskbarView.getChildAt(i4);
        }
        return viewArr;
    }

    public final MultiValueAlpha getTaskbarIconAlpha() {
        return this.mTaskbarIconAlpha;
    }

    public final AnimatedFloat getTaskbarIconScaleForStash() {
        return this.mTaskbarIconScaleForStash;
    }

    public final AnimatedFloat getTaskbarIconTranslationYForStash() {
        return this.mTaskbarIconTranslationYForStash;
    }

    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
        TaskbarViewCallbacks taskbarViewCallbacks = new TaskbarViewCallbacks();
        TaskbarView taskbarView = this.mTaskbarView;
        taskbarView.init(taskbarViewCallbacks);
        ViewGroup.LayoutParams layoutParams = taskbarView.getLayoutParams();
        TaskbarActivityContext taskbarActivityContext = this.mActivity;
        layoutParams.height = TaskbarManager.isPhoneMode(taskbarActivityContext.getDeviceProfile()) ? taskbarActivityContext.getResources().getDimensionPixelSize(R.dimen.taskbar_size) : taskbarActivityContext.getDeviceProfile().taskbarHeight;
        this.mTaskbarIconScaleForStash.updateValue(1.0f);
        TaskbarModelCallbacks taskbarModelCallbacks = this.mModelCallbacks;
        taskbarModelCallbacks.init(taskbarControllers);
        if (taskbarActivityContext.isUserSetupComplete()) {
            LauncherAppState.getInstance(taskbarActivityContext).getModel().addCallbacksAndLoad(taskbarModelCallbacks);
        }
        NavbarButtonsViewController navbarButtonsViewController = taskbarControllers.navbarButtonsViewController;
        this.mTaskbarNavButtonTranslationY = navbarButtonsViewController.getTaskbarNavButtonTranslationY();
        this.mTaskbarNavButtonTranslationYForInAppDisplay = navbarButtonsViewController.getTaskbarNavButtonTranslationYForInAppDisplay();
        taskbarActivityContext.addOnDeviceProfileChangeListener(this.mDeviceProfileChangeListener);
        if (TaskbarManager.FLAG_HIDE_NAVBAR_WINDOW) {
            this.mTaskbarIconAlpha.get(6).animateToValue(TaskbarManager.isPhoneButtonNavMode(taskbarActivityContext) ? 0.0f : 1.0f).start();
        }
    }

    public final boolean isEventOverAnyItem(MotionEvent motionEvent) {
        return this.mTaskbarView.isEventOverAnyItem(motionEvent);
    }

    public final void mapOverItems(LauncherBindableItemsContainer$ItemOperator launcherBindableItemsContainer$ItemOperator) {
        int i4 = 0;
        while (true) {
            TaskbarView taskbarView = this.mTaskbarView;
            if (i4 >= taskbarView.getChildCount()) {
                return;
            }
            View childAt = taskbarView.getChildAt(i4);
            if (((z0) launcherBindableItemsContainer$ItemOperator).evaluate(childAt, (ItemInfo) childAt.getTag())) {
                return;
            }
            i4++;
        }
    }

    public final void onDestroy() {
        TaskbarActivityContext taskbarActivityContext = this.mActivity;
        LauncherModel model = LauncherAppState.getInstance(taskbarActivityContext).getModel();
        TaskbarModelCallbacks taskbarModelCallbacks = this.mModelCallbacks;
        model.removeCallbacks(taskbarModelCallbacks);
        taskbarActivityContext.removeOnDeviceProfileChangeListener(this.mDeviceProfileChangeListener);
        taskbarModelCallbacks.unregisterListeners();
    }

    public final void onRotationChanged(DeviceProfile deviceProfile) {
        if (this.mControllers.uiController.isIconAlignedWithHotseat()) {
            this.mActivity.setTaskbarWindowHeight(deviceProfile.getTaskbarOffsetY() + deviceProfile.taskbarHeight);
            this.mTaskbarNavButtonTranslationY.updateValue(-deviceProfile.getTaskbarOffsetY());
        }
    }

    public final void setClickAndLongClickListenersForIcon(View view) {
        this.mTaskbarView.setClickAndLongClickListenersForIcon(view);
    }

    public final void setDeferUpdatesForSUW(boolean z4) {
        this.mModelCallbacks.setDeferUpdatesForSUW(z4);
    }

    public final void setLauncherIconAlignment(float f4, DeviceProfile deviceProfile) {
        int i4;
        TimeInterpolator timeInterpolator;
        int i5;
        int i6;
        AnimatorPlaybackController createPlaybackController;
        TaskbarView taskbarView;
        TimeInterpolator timeInterpolator2;
        int i7;
        int i8;
        int i9;
        DeviceProfile deviceProfile2 = deviceProfile;
        boolean isHotseatIconOnTopWhenAligned = this.mControllers.uiController.isHotseatIconOnTopWhenAligned();
        boolean isStashed = this.mControllers.taskbarStashController.isStashed();
        float f5 = 1.0f;
        if (this.mIconAlignControllerLazy == null || this.mIsHotseatIconOnTopWhenAligned != isHotseatIconOnTopWhenAligned || this.mIsStashed != isStashed) {
            this.mIsHotseatIconOnTopWhenAligned = isHotseatIconOnTopWhenAligned;
            this.mIsStashed = isStashed;
            PendingAnimation pendingAnimation = new PendingAnimation(100L);
            TaskbarActivityContext taskbarActivityContext = this.mActivity;
            if (TaskbarManager.isPhoneButtonNavMode(taskbarActivityContext)) {
                createPlaybackController = pendingAnimation.createPlaybackController();
            } else {
                this.mOnControllerPreCreateCallback.run();
                DeviceProfile deviceProfile3 = taskbarActivityContext.getDeviceProfile();
                Rect hotseatLayoutPadding = deviceProfile2.getHotseatLayoutPadding(taskbarActivityContext);
                float f6 = deviceProfile2.iconSizePx / deviceProfile3.taskbarIconSize;
                int i10 = deviceProfile2.hotseatBorderSpace;
                int i11 = (deviceProfile2.availableWidthPx - hotseatLayoutPadding.left) - hotseatLayoutPadding.right;
                int i12 = deviceProfile2.numShownHotseatIcons;
                int i13 = (i11 - ((i12 - 1) * i10)) / i12;
                boolean isIconAlignedWithHotseat = this.mControllers.uiController.isIconAlignedWithHotseat();
                TimeInterpolator timeInterpolator3 = this.mIsHotseatIconOnTopWhenAligned ? y0.e.f12949m : y0.e.f12942f;
                int taskbarOffsetY = deviceProfile.getTaskbarOffsetY();
                FloatProperty floatProperty = AnimatedFloat.VALUE;
                float f7 = -taskbarOffsetY;
                pendingAnimation.setFloat(this.mTaskbarIconTranslationYForHome, floatProperty, f7, timeInterpolator3);
                pendingAnimation.setFloat(this.mTaskbarNavButtonTranslationY, floatProperty, f7, timeInterpolator3);
                pendingAnimation.setFloat(this.mTaskbarNavButtonTranslationYForInAppDisplay, floatProperty, taskbarOffsetY, timeInterpolator3);
                TaskbarView taskbarView2 = this.mTaskbarView;
                if (Utilities.isDarkTheme(taskbarView2.getContext())) {
                    i4 = taskbarOffsetY;
                    timeInterpolator = timeInterpolator3;
                    i5 = i13;
                    i6 = i10;
                    pendingAnimation.addFloat(this.mThemedIconsBackgroundProgress, floatProperty, 1.0f, 0.0f, y0.e.f12949m);
                } else {
                    i4 = taskbarOffsetY;
                    timeInterpolator = timeInterpolator3;
                    i5 = i13;
                    i6 = i10;
                }
                final int defaultTaskbarWindowHeight = taskbarActivityContext.getDefaultTaskbarWindowHeight();
                final int max = Math.max(defaultTaskbarWindowHeight, deviceProfile3.taskbarHeight + i4);
                pendingAnimation.addOnFrameListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.taskbar.T0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        TaskbarViewController.a(TaskbarViewController.this, max, defaultTaskbarWindowHeight, valueAnimator);
                    }
                });
                int i14 = 0;
                while (i14 < taskbarView2.getChildCount()) {
                    final View childAt = taskbarView2.getChildAt(i14);
                    boolean z4 = childAt == taskbarView2.getAllAppsButtonView();
                    boolean z5 = childAt == taskbarView2.getTaskbarDividerView();
                    int i15 = i14;
                    if (!this.mIsHotseatIconOnTopWhenAligned) {
                        pendingAnimation.setViewAlpha(childAt, 0.0f, y0.e.b(0.8f, f5, y0.e.f12949m));
                    } else if ((z4 && !FeatureFlags.ENABLE_ALL_APPS_BUTTON_IN_HOTSEAT.get()) || (z5 && FeatureFlags.ENABLE_TASKBAR_PINNING.get())) {
                        if (!isIconAlignedWithHotseat && this.mIsHotseatIconOnTopWhenAligned && this.mIsStashed) {
                            pendingAnimation.setViewAlpha(childAt, 0.0f, y0.e.b(0.0f, 0.0f, y0.e.f12949m));
                        } else {
                            pendingAnimation.setViewAlpha(childAt, 0.0f, isIconAlignedWithHotseat ? y0.e.b(0.0f, 0.17f, y0.e.f12949m) : y0.e.b(0.72f, 0.84f, y0.e.f12949m));
                        }
                    }
                    View qsb = taskbarView2.getQsb();
                    int i16 = this.mTaskbarBottomMargin;
                    if (childAt == qsb) {
                        boolean isRtl = Utilities.isRtl(childAt.getResources());
                        float f8 = isRtl ? (deviceProfile2.hotseatQsbWidth / 2.0f) + (deviceProfile2.widthPx - hotseatLayoutPadding.right) + i6 : (hotseatLayoutPadding.left - i6) - (deviceProfile2.hotseatQsbWidth / 2.0f);
                        float right = (childAt.getRight() + childAt.getLeft()) / 2.0f;
                        int i17 = deviceProfile2.hotseatQsbWidth;
                        float f9 = (i17 - i9) / 2.0f;
                        taskbarView = taskbarView2;
                        pendingAnimation.addFloat(childAt, LauncherAnimUtils.SCALE_PROPERTY, deviceProfile3.taskbarIconSize / deviceProfile2.hotseatQsbVisualHeight, 1.0f, timeInterpolator);
                        if (isRtl) {
                            f9 = -f9;
                        }
                        float f10 = f9;
                        float f11 = f8 - right;
                        if (childAt instanceof Reorderable) {
                            MultiTranslateDelegate translateDelegate = ((Reorderable) childAt).getTranslateDelegate();
                            MultiPropertyFactory.MultiProperty translationX = translateDelegate.getTranslationX(3);
                            FloatProperty floatProperty2 = MultiPropertyFactory.MULTI_PROPERTY_VALUE;
                            pendingAnimation.addFloat(translationX, floatProperty2, f10, f11, timeInterpolator);
                            timeInterpolator2 = timeInterpolator;
                            pendingAnimation.setFloat(translateDelegate.getTranslationY(3), floatProperty2, i16, timeInterpolator2);
                        } else {
                            timeInterpolator2 = timeInterpolator;
                            pendingAnimation.addFloat(childAt, LauncherAnimUtils.VIEW_TRANSLATE_X, f10, f11, timeInterpolator2);
                            pendingAnimation.setFloat(childAt, LauncherAnimUtils.VIEW_TRANSLATE_Y, i16, timeInterpolator2);
                        }
                        if (this.mIsHotseatIconOnTopWhenAligned) {
                            pendingAnimation.addFloat(childAt, LauncherAnimUtils.VIEW_ALPHA, 0.0f, 1.0f, isIconAlignedWithHotseat ? y0.e.b(0.0f, 0.35f, y0.e.f12949m) : taskbarActivityContext.getDeviceProfile().isQsbInline ? y0.e.b(0.0f, 1.0f, y0.e.f12949m) : y0.e.b(0.84f, 1.0f, y0.e.f12949m));
                        }
                        pendingAnimation.addOnFrameListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.taskbar.U0
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                AlphaUpdateListener.updateVisibility(childAt, 4);
                            }
                        });
                        i7 = i5;
                    } else {
                        taskbarView = taskbarView2;
                        timeInterpolator2 = timeInterpolator;
                        if (z4) {
                            i8 = Utilities.isRtl(childAt.getResources()) ? deviceProfile3.numShownHotseatIcons : -1;
                        } else if (childAt.getTag() instanceof ItemInfo) {
                            i8 = ((ItemInfo) childAt.getTag()).screenId;
                        } else {
                            i7 = i5;
                            Log.w("TaskbarViewController", "Unsupported view found in createIconAlignmentController, v=" + childAt);
                        }
                        i7 = i5;
                        float right2 = ((i7 / 2.0f) + (((i7 + i6) * i8) + hotseatLayoutPadding.left)) - ((childAt.getRight() + childAt.getLeft()) / 2.0f);
                        if (childAt instanceof Reorderable) {
                            MultiTranslateDelegate translateDelegate2 = ((Reorderable) childAt).getTranslateDelegate();
                            MultiPropertyFactory.MultiProperty translationX2 = translateDelegate2.getTranslationX(3);
                            FloatProperty floatProperty3 = MultiPropertyFactory.MULTI_PROPERTY_VALUE;
                            pendingAnimation.setFloat(translationX2, floatProperty3, right2, timeInterpolator2);
                            pendingAnimation.setFloat(translateDelegate2.getTranslationY(3), floatProperty3, i16, timeInterpolator2);
                        } else {
                            pendingAnimation.setFloat(childAt, LauncherAnimUtils.VIEW_TRANSLATE_X, right2, timeInterpolator2);
                            pendingAnimation.setFloat(childAt, LauncherAnimUtils.VIEW_TRANSLATE_Y, i16, timeInterpolator2);
                        }
                        pendingAnimation.setFloat(childAt, LauncherAnimUtils.SCALE_PROPERTY, f6, timeInterpolator2);
                    }
                    i14 = i15 + 1;
                    deviceProfile2 = deviceProfile;
                    timeInterpolator = timeInterpolator2;
                    i5 = i7;
                    taskbarView2 = taskbarView;
                    f5 = 1.0f;
                }
                createPlaybackController = pendingAnimation.createPlaybackController();
                this.mOnControllerPreCreateCallback = new V0(0, createPlaybackController);
            }
            this.mIconAlignControllerLazy = createPlaybackController;
        }
        this.mIconAlignControllerLazy.setPlayFraction(f4);
        if (f4 <= 0.0f || f4 >= 1.0f) {
            this.mIconAlignControllerLazy = null;
        }
    }

    public final void setRecentsButtonDisabled(boolean z4) {
        this.mTaskbarIconAlpha.get(3).setValue(z4 ? 0.0f : 1.0f);
    }

    public final void setTranslationYForStash(float f4) {
        this.mTaskbarIconTranslationYForSpringOnStash = f4;
        updateTranslationY();
    }

    public final void setTranslationYForSwipe(float f4) {
        this.mTaskbarIconTranslationYForSwipe = f4;
        updateTranslationY();
    }

    public final void updateIconsBackground() {
        int d4 = E.a.d(this.mLauncherThemedIconsBackgroundColor, this.mTaskbarThemedIconsBackgroundColor, this.mThemedIconsBackgroundProgress.value);
        TaskbarView taskbarView = this.mTaskbarView;
        int childCount = taskbarView.getChildCount();
        View[] viewArr = new View[childCount];
        for (int i4 = 0; i4 < childCount; i4++) {
            viewArr[i4] = taskbarView.getChildAt(i4);
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View view = viewArr[i5];
            if (view instanceof DoubleShadowBubbleTextView) {
                DoubleShadowBubbleTextView doubleShadowBubbleTextView = (DoubleShadowBubbleTextView) view;
                if (doubleShadowBubbleTextView.getIcon() != null && (doubleShadowBubbleTextView.getIcon() instanceof ThemedIconDrawable)) {
                    ((ThemedIconDrawable) doubleShadowBubbleTextView.getIcon()).changeBackgroundColor(d4);
                }
            }
        }
    }

    public final void updateRunningApps() {
        this.mModelCallbacks.updateRunningApps();
    }
}
