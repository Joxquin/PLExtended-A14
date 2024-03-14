package com.android.launcher3.taskbar;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.graphics.drawable.RotateDrawable;
import android.inputmethodservice.InputMethodService;
import android.os.Handler;
import android.util.FloatProperty;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.launcher3.C0410q;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AlphaUpdateListener;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.taskbar.navbutton.KidsNavLayoutter;
import com.android.launcher3.taskbar.navbutton.NavButtonLayoutFactory$NavButtonLayoutter;
import com.android.launcher3.taskbar.navbutton.PhoneGestureLayoutter;
import com.android.launcher3.taskbar.navbutton.PhoneLandscapeNavLayoutter;
import com.android.launcher3.taskbar.navbutton.PhonePortraitNavLayoutter;
import com.android.launcher3.taskbar.navbutton.PhoneSeascapeNavLayoutter;
import com.android.launcher3.taskbar.navbutton.SetupNavLayoutter;
import com.android.launcher3.taskbar.navbutton.TaskbarNavLayoutter;
import com.android.launcher3.util.DimensionUtils;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.FlagDebugUtils;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
import com.android.systemui.shared.rotation.FloatingRotationButton;
import com.android.systemui.shared.rotation.RotationButton;
import com.android.systemui.shared.rotation.RotationButtonController;
import com.android.systemui.shared.system.QuickStepContract;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.StringJoiner;
import java.util.function.IntPredicate;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class NavbarButtonsViewController implements TaskbarControllers.LoggableTaskbarController {
    private ImageView mA11yButton;
    private ImageView mBackButton;
    private MultiValueAlpha mBackButtonAlpha;
    private final TaskbarActivityContext mContext;
    private TaskbarControllers mControllers;
    private final int mDarkIconColorOnHome;
    private DisplayController mDisplayController;
    private final ViewGroup mEndContextualContainer;
    private FloatingRotationButton mFloatingRotationButton;
    private ImageView mHomeButton;
    private MultiValueAlpha mHomeButtonAlpha;
    private boolean mIsImeRenderingNavButtons;
    private float mLastSetNavButtonTranslationY;
    private final int mLightIconColorOnHome;
    private final LinearLayout mNavButtonContainer;
    private final FrameLayout mNavButtonsView;
    private final int mOnBackgroundIconColor;
    private ImageView mRecentsButton;
    private BaseDragLayer mSeparateWindowParent;
    private final ViewGroup mStartContextualContainer;
    private int mState;
    private int mSysuiStateFlags;
    private final Rect mTempRect = new Rect();
    private final ArrayList mPropertyHolders = new ArrayList();
    private final ArrayList mAllButtons = new ArrayList();
    private final AnimatedFloat mTaskbarNavButtonTranslationY = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.u

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ NavbarButtonsViewController f5164e;

        {
            this.f5164e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 1:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 2:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 3:
                    NavbarButtonsViewController.d(this.f5164e);
                    return;
                case 4:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 5:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 6:
                    this.f5164e.updateNavButtonColor();
                    return;
                default:
                    this.f5164e.updateNavButtonColor();
                    return;
            }
        }
    });
    private final AnimatedFloat mTaskbarNavButtonTranslationYForInAppDisplay = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.u

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ NavbarButtonsViewController f5164e;

        {
            this.f5164e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 1:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 2:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 3:
                    NavbarButtonsViewController.d(this.f5164e);
                    return;
                case 4:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 5:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 6:
                    this.f5164e.updateNavButtonColor();
                    return;
                default:
                    this.f5164e.updateNavButtonColor();
                    return;
            }
        }
    });
    private final AnimatedFloat mTaskbarNavButtonTranslationYForIme = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.u

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ NavbarButtonsViewController f5164e;

        {
            this.f5164e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 1:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 2:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 3:
                    NavbarButtonsViewController.d(this.f5164e);
                    return;
                case 4:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 5:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 6:
                    this.f5164e.updateNavButtonColor();
                    return;
                default:
                    this.f5164e.updateNavButtonColor();
                    return;
            }
        }
    });
    private final AnimatedFloat mNavButtonInAppDisplayProgressForSysui = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.u

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ NavbarButtonsViewController f5164e;

        {
            this.f5164e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 1:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 2:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 3:
                    NavbarButtonsViewController.d(this.f5164e);
                    return;
                case 4:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 5:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 6:
                    this.f5164e.updateNavButtonColor();
                    return;
                default:
                    this.f5164e.updateNavButtonColor();
                    return;
            }
        }
    });
    private final AnimatedFloat mTaskbarNavButtonDarkIntensity = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.u

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ NavbarButtonsViewController f5164e;

        {
            this.f5164e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 1:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 2:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 3:
                    NavbarButtonsViewController.d(this.f5164e);
                    return;
                case 4:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 5:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 6:
                    this.f5164e.updateNavButtonColor();
                    return;
                default:
                    this.f5164e.updateNavButtonColor();
                    return;
            }
        }
    });
    private final AnimatedFloat mOnTaskbarBackgroundNavButtonColorOverride = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.u

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ NavbarButtonsViewController f5164e;

        {
            this.f5164e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 1:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 2:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 3:
                    NavbarButtonsViewController.d(this.f5164e);
                    return;
                case 4:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 5:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 6:
                    this.f5164e.updateNavButtonColor();
                    return;
                default:
                    this.f5164e.updateNavButtonColor();
                    return;
            }
        }
    });
    private final AnimatedFloat mSlideInViewVisibleNavButtonColorOverride = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.u

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ NavbarButtonsViewController f5164e;

        {
            this.f5164e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 1:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 2:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 3:
                    NavbarButtonsViewController.d(this.f5164e);
                    return;
                case 4:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 5:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 6:
                    this.f5164e.updateNavButtonColor();
                    return;
                default:
                    this.f5164e.updateNavButtonColor();
                    return;
            }
        }
    });
    private final AnimatedFloat mOnBackgroundNavButtonColorOverrideMultiplier = new AnimatedFloat(new Runnable(this) { // from class: com.android.launcher3.taskbar.u

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ NavbarButtonsViewController f5164e;

        {
            this.f5164e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 1:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 2:
                    this.f5164e.updateNavButtonTranslationY();
                    return;
                case 3:
                    NavbarButtonsViewController.d(this.f5164e);
                    return;
                case 4:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 5:
                    this.f5164e.updateNavButtonColor();
                    return;
                case 6:
                    this.f5164e.updateNavButtonColor();
                    return;
                default:
                    this.f5164e.updateNavButtonColor();
                    return;
            }
        }
    });
    private final RotationButtonListener mRotationButtonListener = new RotationButtonListener();
    private final Rect mFloatingRotationButtonBounds = new Rect();
    private boolean mAreNavButtonsInSeparateWindow = false;
    private final ViewTreeObserver$OnComputeInternalInsetsListenerC0458v mSeparateWindowInsetsComputer = new ViewTreeObserver.OnComputeInternalInsetsListener() { // from class: com.android.launcher3.taskbar.v
        public final void onComputeInternalInsets(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
            NavbarButtonsViewController.b(NavbarButtonsViewController.this, internalInsetsInfo);
        }
    };
    private final RecentsHitboxExtender mHitboxExtender = new RecentsHitboxExtender();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class RotationButtonImpl implements RotationButton {
        private final ImageView mButton;
        private AnimatedVectorDrawable mImageDrawable;

        public RotationButtonImpl(ImageView imageView) {
            this.mButton = imageView;
        }

        @Override // com.android.systemui.shared.rotation.RotationButton
        public final boolean acceptRotationProposal() {
            return this.mButton.isAttachedToWindow();
        }

        @Override // com.android.systemui.shared.rotation.RotationButton
        public final View getCurrentView() {
            return this.mButton;
        }

        @Override // com.android.systemui.shared.rotation.RotationButton
        public final Drawable getImageDrawable() {
            return this.mImageDrawable;
        }

        @Override // com.android.systemui.shared.rotation.RotationButton
        public final boolean hide() {
            this.mButton.setVisibility(8);
            NavbarButtonsViewController navbarButtonsViewController = NavbarButtonsViewController.this;
            navbarButtonsViewController.mState &= -5;
            navbarButtonsViewController.applyState();
            return true;
        }

        @Override // com.android.systemui.shared.rotation.RotationButton
        public final boolean isVisible() {
            return this.mButton.getVisibility() == 0;
        }

        @Override // com.android.systemui.shared.rotation.RotationButton
        public final void setDarkIntensity(float f4) {
        }

        @Override // com.android.systemui.shared.rotation.RotationButton
        public final void setOnClickListener(View.OnClickListener onClickListener) {
            this.mButton.setOnClickListener(onClickListener);
        }

        @Override // com.android.systemui.shared.rotation.RotationButton
        public final void setOnHoverListener(View.OnHoverListener onHoverListener) {
            this.mButton.setOnHoverListener(onHoverListener);
        }

        @Override // com.android.systemui.shared.rotation.RotationButton
        public final void setRotationButtonController(RotationButtonController rotationButtonController) {
            ImageView imageView = this.mButton;
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) imageView.getContext().getDrawable(rotationButtonController.getIconResId());
            this.mImageDrawable = animatedVectorDrawable;
            imageView.setImageDrawable(animatedVectorDrawable);
            imageView.setContentDescription(imageView.getResources().getString(R.string.accessibility_rotate_button));
            this.mImageDrawable.setCallback(imageView);
        }

        @Override // com.android.systemui.shared.rotation.RotationButton
        public final boolean show() {
            this.mButton.setVisibility(0);
            NavbarButtonsViewController navbarButtonsViewController = NavbarButtonsViewController.this;
            navbarButtonsViewController.mState |= 4;
            navbarButtonsViewController.applyState();
            return true;
        }

        @Override // com.android.systemui.shared.rotation.RotationButton
        public final void updateIcon(int i4, int i5) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class RotationButtonListener implements RotationButton.RotationButtonUpdatesCallback {
        public RotationButtonListener() {
        }

        @Override // com.android.systemui.shared.rotation.RotationButton.RotationButtonUpdatesCallback
        public final void onVisibilityChanged(boolean z4) {
            NavbarButtonsViewController navbarButtonsViewController = NavbarButtonsViewController.this;
            if (z4) {
                navbarButtonsViewController.mFloatingRotationButton.getCurrentView().getBoundsOnScreen(navbarButtonsViewController.mFloatingRotationButtonBounds);
            } else {
                navbarButtonsViewController.mFloatingRotationButtonBounds.setEmpty();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [com.android.launcher3.taskbar.v] */
    public NavbarButtonsViewController(TaskbarActivityContext taskbarActivityContext, FrameLayout frameLayout) {
        this.mContext = taskbarActivityContext;
        this.mNavButtonsView = frameLayout;
        this.mNavButtonContainer = (LinearLayout) frameLayout.findViewById(R.id.end_nav_buttons);
        this.mEndContextualContainer = (ViewGroup) frameLayout.findViewById(R.id.end_contextual_buttons);
        this.mStartContextualContainer = (ViewGroup) frameLayout.findViewById(R.id.start_contextual_buttons);
        this.mLightIconColorOnHome = taskbarActivityContext.getColor(R.color.taskbar_nav_icon_light_color_on_home);
        this.mDarkIconColorOnHome = taskbarActivityContext.getColor(R.color.taskbar_nav_icon_dark_color_on_home);
        this.mOnBackgroundIconColor = Utilities.isDarkTheme(taskbarActivityContext) ? taskbarActivityContext.getColor(R.color.taskbar_nav_icon_light_color) : taskbarActivityContext.getColor(R.color.taskbar_nav_icon_dark_color);
    }

    private ImageView addButton(int i4, final int i5, ViewGroup viewGroup, final TaskbarNavButtonController taskbarNavButtonController, int i6, int i7) {
        int i8 = 0;
        ImageView imageView = (ImageView) this.mContext.mLayoutInflater.inflate(i7, viewGroup, false);
        imageView.setId(i6);
        viewGroup.addView(imageView);
        this.mAllButtons.add(imageView);
        imageView.setImageResource(i4);
        Context context = viewGroup.getContext();
        taskbarNavButtonController.getClass();
        if (i5 == 1) {
            i8 = R.string.taskbar_button_back;
        } else if (i5 == 2) {
            i8 = R.string.taskbar_button_home;
        } else if (i5 == 4) {
            i8 = R.string.taskbar_button_recents;
        } else if (i5 == 8) {
            i8 = R.string.taskbar_button_ime_switcher;
        } else if (i5 == 16) {
            i8 = R.string.taskbar_button_a11y;
        } else if (i5 == 32) {
            i8 = R.string.taskbar_button_quick_settings;
        } else if (i5 == 64) {
            i8 = R.string.taskbar_button_notifications;
        }
        imageView.setContentDescription(context.getString(i8));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.taskbar.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TaskbarNavButtonController.this.onButtonClick(view, i5);
            }
        });
        imageView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.launcher3.taskbar.A
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return TaskbarNavButtonController.this.onButtonLongClick(view, i5);
            }
        });
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyState() {
        ArrayList arrayList = this.mPropertyHolders;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((StatePropertyHolder) arrayList.get(i4)).setState(this.mState);
        }
    }

    public static void b(NavbarButtonsViewController navbarButtonsViewController, ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
        navbarButtonsViewController.addVisibleButtonsRegion(navbarButtonsViewController.mSeparateWindowParent, internalInsetsInfo.touchableRegion);
        internalInsetsInfo.setTouchableInsets(3);
    }

    public static float[] c(NavbarButtonsViewController navbarButtonsViewController) {
        float[] fArr = new float[2];
        Utilities.getDescendantCoordRelativeToAncestor(navbarButtonsViewController.mRecentsButton, navbarButtonsViewController.mNavButtonsView, fArr, false, false);
        return fArr;
    }

    public static void d(NavbarButtonsViewController navbarButtonsViewController) {
        TaskbarUIController taskbarUIController = navbarButtonsViewController.mControllers.uiController;
        if (taskbarUIController instanceof LauncherTaskbarUIController) {
            ((LauncherTaskbarUIController) taskbarUIController).onTaskbarInAppDisplayProgressUpdate(navbarButtonsViewController.mNavButtonInAppDisplayProgressForSysui.value, 3);
        }
    }

    public static /* synthetic */ void e(NavbarButtonsViewController navbarButtonsViewController, TaskbarNavButtonController taskbarNavButtonController, View view) {
        navbarButtonsViewController.getClass();
        taskbarNavButtonController.onButtonClick(view, 4);
        navbarButtonsViewController.mHitboxExtender.onRecentsButtonClicked();
    }

    public static /* synthetic */ boolean f(NavbarButtonsViewController navbarButtonsViewController, int i4) {
        navbarButtonsViewController.getClass();
        return (i4 & 32) == 0 && (i4 & 256) == 0 && !navbarButtonsViewController.mContext.isNavBarKidsModeActive();
    }

    private void handleSetupUi() {
        LinearLayout linearLayout = this.mNavButtonContainer;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
        TaskbarActivityContext taskbarActivityContext = this.mContext;
        Resources resources = taskbarActivityContext.getResources();
        DeviceProfile deviceProfile = taskbarActivityContext.getDeviceProfile();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.taskbar_contextual_button_margin);
        layoutParams.setMarginStart(dimensionPixelSize);
        layoutParams.bottomMargin = !deviceProfile.isLandscape ? 0 : dimensionPixelSize - (resources.getDimensionPixelSize(R.dimen.taskbar_nav_buttons_size) / 2);
        layoutParams.setMarginEnd(0);
        layoutParams.gravity = 8388611;
        this.mNavButtonsView.getLayoutParams().height = this.mControllers.taskbarActivityContext.getResources().getDimensionPixelSize(R.dimen.taskbar_suw_frame);
        linearLayout.setLayoutParams(layoutParams);
    }

    private void updateButtonLayoutSpacing() {
        NavButtonLayoutFactory$NavButtonLayoutter taskbarNavLayoutter;
        TaskbarActivityContext taskbarActivityContext = this.mContext;
        boolean isThreeButtonNav = taskbarActivityContext.isThreeButtonNav();
        DeviceProfile deviceProfile = taskbarActivityContext.getDeviceProfile();
        Resources resources = taskbarActivityContext.getResources();
        boolean z4 = true;
        boolean z5 = !taskbarActivityContext.isUserSetupComplete();
        boolean isNavBarKidsModeActive = taskbarActivityContext.isNavBarKidsModeActive();
        if (TaskbarManager.FLAG_HIDE_NAVBAR_WINDOW) {
            boolean isPhoneMode = TaskbarManager.isPhoneMode(deviceProfile);
            int i4 = this.mDisplayController.getInfo().rotation;
            kotlin.jvm.internal.h.e(deviceProfile, "deviceProfile");
            FrameLayout navButtonsView = this.mNavButtonsView;
            kotlin.jvm.internal.h.e(navButtonsView, "navButtonsView");
            kotlin.jvm.internal.h.e(resources, "resources");
            LinearLayout navButtonContainer = (LinearLayout) navButtonsView.findViewById(R.id.end_nav_buttons);
            ViewGroup endContextualContainer = (ViewGroup) navButtonsView.findViewById(R.id.end_contextual_buttons);
            ViewGroup startContextualContainer = (ViewGroup) navButtonsView.findViewById(R.id.start_contextual_buttons);
            boolean z6 = isPhoneMode && isThreeButtonNav;
            boolean z7 = isPhoneMode && !isThreeButtonNav;
            if (z6) {
                if (!deviceProfile.isLandscape) {
                    kotlin.jvm.internal.h.d(navButtonContainer, "navButtonContainer");
                    kotlin.jvm.internal.h.d(endContextualContainer, "endContextualContainer");
                    kotlin.jvm.internal.h.d(startContextualContainer, "startContextualContainer");
                    taskbarNavLayoutter = new PhonePortraitNavLayoutter(resources, navButtonContainer, endContextualContainer, startContextualContainer);
                } else if (i4 == 1) {
                    kotlin.jvm.internal.h.d(navButtonContainer, "navButtonContainer");
                    kotlin.jvm.internal.h.d(endContextualContainer, "endContextualContainer");
                    kotlin.jvm.internal.h.d(startContextualContainer, "startContextualContainer");
                    taskbarNavLayoutter = new PhoneLandscapeNavLayoutter(resources, navButtonContainer, endContextualContainer, startContextualContainer);
                } else {
                    kotlin.jvm.internal.h.d(navButtonContainer, "navButtonContainer");
                    kotlin.jvm.internal.h.d(endContextualContainer, "endContextualContainer");
                    kotlin.jvm.internal.h.d(startContextualContainer, "startContextualContainer");
                    taskbarNavLayoutter = new PhoneSeascapeNavLayoutter(resources, navButtonContainer, endContextualContainer, startContextualContainer);
                }
            } else if (z7) {
                kotlin.jvm.internal.h.d(navButtonContainer, "navButtonContainer");
                kotlin.jvm.internal.h.d(endContextualContainer, "endContextualContainer");
                kotlin.jvm.internal.h.d(startContextualContainer, "startContextualContainer");
                taskbarNavLayoutter = new PhoneGestureLayoutter(resources, navButtonContainer, endContextualContainer, startContextualContainer);
            } else if (!deviceProfile.isTaskbarPresent) {
                throw new IllegalStateException("No layoutter found".toString());
            } else {
                if (z5) {
                    kotlin.jvm.internal.h.d(navButtonContainer, "navButtonContainer");
                    kotlin.jvm.internal.h.d(endContextualContainer, "endContextualContainer");
                    kotlin.jvm.internal.h.d(startContextualContainer, "startContextualContainer");
                    taskbarNavLayoutter = new SetupNavLayoutter(resources, navButtonContainer, endContextualContainer, startContextualContainer);
                } else if (isNavBarKidsModeActive) {
                    kotlin.jvm.internal.h.d(navButtonContainer, "navButtonContainer");
                    kotlin.jvm.internal.h.d(endContextualContainer, "endContextualContainer");
                    kotlin.jvm.internal.h.d(startContextualContainer, "startContextualContainer");
                    taskbarNavLayoutter = new KidsNavLayoutter(resources, navButtonContainer, endContextualContainer, startContextualContainer);
                } else {
                    kotlin.jvm.internal.h.d(navButtonContainer, "navButtonContainer");
                    kotlin.jvm.internal.h.d(endContextualContainer, "endContextualContainer");
                    kotlin.jvm.internal.h.d(startContextualContainer, "startContextualContainer");
                    taskbarNavLayoutter = new TaskbarNavLayoutter(resources, navButtonContainer, endContextualContainer, startContextualContainer);
                }
            }
            taskbarNavLayoutter.layoutButtons(deviceProfile, (!taskbarActivityContext.isThreeButtonNav() || (this.mState & 8) == 0) ? false : false);
            updateNavButtonColor();
        } else if (z5) {
            handleSetupUi();
            this.mPropertyHolders.add(new StatePropertyHolder(this.mBackButtonAlpha.get(2), new C0460w(8)));
        } else {
            LinearLayout linearLayout = this.mNavButtonContainer;
            if (!isNavBarKidsModeActive) {
                if (isThreeButtonNav) {
                    RotateDrawable rotateDrawable = new RotateDrawable();
                    rotateDrawable.setDrawable(taskbarActivityContext.getDrawable(R.drawable.ic_sysbar_back));
                    rotateDrawable.setFromDegrees(0.0f);
                    rotateDrawable.setToDegrees(Utilities.isRtl(taskbarActivityContext.getResources()) ? 90.0f : -90.0f);
                    this.mBackButton.setImageDrawable(rotateDrawable);
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
                    layoutParams.gravity = 8388613;
                    layoutParams.width = -2;
                    layoutParams.height = -1;
                    int dimension = (int) resources.getDimension(deviceProfile.inv.inlineNavButtonsEndSpacing);
                    int width = this.mEndContextualContainer.getWidth();
                    if ((taskbarActivityContext.isThreeButtonNav() && (this.mState & 8) != 0) && dimension < width) {
                        dimension += resources.getDimensionPixelSize(R.dimen.taskbar_hotseat_nav_spacing) / 2;
                    }
                    layoutParams.setMarginEnd(dimension);
                    linearLayout.setLayoutParams(layoutParams);
                    int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.taskbar_button_space_inbetween);
                    for (int i5 = 0; i5 < linearLayout.getChildCount(); i5++) {
                        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) linearLayout.getChildAt(i5).getLayoutParams();
                        layoutParams2.weight = 0.0f;
                        if (i5 == 0) {
                            layoutParams2.setMarginEnd(dimensionPixelSize / 2);
                        } else if (i5 == linearLayout.getChildCount() - 1) {
                            layoutParams2.setMarginStart(dimensionPixelSize / 2);
                        } else {
                            int i6 = dimensionPixelSize / 2;
                            layoutParams2.setMarginStart(i6);
                            layoutParams2.setMarginEnd(i6);
                        }
                    }
                    return;
                }
                return;
            }
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.taskbar_icon_size_kids);
            int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.taskbar_nav_buttons_width_kids);
            int dimensionPixelSize4 = resources.getDimensionPixelSize(R.dimen.taskbar_nav_buttons_height_kids);
            int dimensionPixelSize5 = resources.getDimensionPixelSize(R.dimen.taskbar_nav_buttons_corner_radius_kids);
            int i7 = (dimensionPixelSize3 - dimensionPixelSize2) / 2;
            int i8 = (dimensionPixelSize4 - dimensionPixelSize2) / 2;
            RotateDrawable rotateDrawable2 = new RotateDrawable();
            rotateDrawable2.setDrawable(taskbarActivityContext.getDrawable(R.drawable.ic_sysbar_back_kids));
            rotateDrawable2.setFromDegrees(0.0f);
            rotateDrawable2.setToDegrees(-90.0f);
            this.mBackButton.setImageDrawable(rotateDrawable2);
            this.mBackButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.mBackButton.setPadding(i7, i8, i7, i8);
            ImageView imageView = this.mHomeButton;
            imageView.setImageDrawable(imageView.getContext().getDrawable(R.drawable.ic_sysbar_home_kids));
            this.mHomeButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.mHomeButton.setPadding(i7, i8, i7, i8);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(dimensionPixelSize3, dimensionPixelSize4);
            layoutParams3.setMargins(resources.getDimensionPixelSize(R.dimen.taskbar_home_button_left_margin_kids), 0, 0, 0);
            this.mHomeButton.setLayoutParams(layoutParams3);
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(dimensionPixelSize3, dimensionPixelSize4);
            layoutParams4.setMargins(resources.getDimensionPixelSize(R.dimen.taskbar_back_button_left_margin_kids), 0, 0, 0);
            this.mBackButton.setLayoutParams(layoutParams4);
            PaintDrawable paintDrawable = new PaintDrawable(Color.argb(0.1f, 1.0f, 1.0f, 1.0f));
            paintDrawable.setCornerRadius(dimensionPixelSize5);
            this.mHomeButton.setBackground(paintDrawable);
            this.mBackButton.setBackground(paintDrawable);
            FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            layoutParams5.setMarginStart(layoutParams5.getMarginEnd() / 2);
            layoutParams5.setMarginEnd(layoutParams5.getMarginStart());
            layoutParams5.gravity = 17;
            linearLayout.requestLayout();
            this.mHomeButton.setOnLongClickListener(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNavButtonColor() {
        ArgbEvaluator argbEvaluator = ArgbEvaluator.getInstance();
        int intValue = ((Integer) argbEvaluator.evaluate(this.mTaskbarNavButtonDarkIntensity.value, Integer.valueOf(this.mLightIconColorOnHome), Integer.valueOf(this.mDarkIconColorOnHome))).intValue();
        int intValue2 = ((Integer) argbEvaluator.evaluate(Math.max(this.mOnTaskbarBackgroundNavButtonColorOverride.value, this.mSlideInViewVisibleNavButtonColorOverride.value) * this.mOnBackgroundNavButtonColorOverrideMultiplier.value, Integer.valueOf(intValue), Integer.valueOf(this.mOnBackgroundIconColor))).intValue();
        Iterator it = this.mAllButtons.iterator();
        while (it.hasNext()) {
            ((ImageView) it.next()).setImageTintList(ColorStateList.valueOf(intValue2));
        }
    }

    private void updateStateForFlag(int i4, boolean z4) {
        if (z4) {
            this.mState = i4 | this.mState;
            return;
        }
        this.mState = (~i4) & this.mState;
    }

    public final void addVisibleButtonsRegion(BaseDragLayer baseDragLayer, Region region) {
        ArrayList arrayList = this.mAllButtons;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            View view = (View) arrayList.get(i4);
            if (view.getVisibility() == 0) {
                Rect rect = this.mTempRect;
                baseDragLayer.getDescendantRectRelativeToSelf(view, rect);
                if (this.mHitboxExtender.extendedHitboxEnabled()) {
                    rect.bottom = this.mContext.getDeviceProfile().getTaskbarOffsetY() + rect.bottom;
                }
                region.op(rect, Region.Op.UNION);
            }
        }
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "NavbarButtonsViewController:");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tmState=");
        int i4 = this.mState;
        StringJoiner stringJoiner = new StringJoiner("|");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 1, "FLAG_SWITCHER_SHOWING");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 2, "FLAG_IME_VISIBLE");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 4, "FLAG_ROTATION_BUTTON_VISIBLE");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 8, "FLAG_A11Y_VISIBLE");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 16, "FLAG_ONLY_BACK_FOR_BOUNCER_VISIBLE");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 32, "FLAG_KEYGUARD_VISIBLE");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 64, "FLAG_KEYGUARD_OCCLUDED");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 128, "FLAG_DISABLE_HOME");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 256, "FLAG_DISABLE_RECENTS");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 512, "FLAG_DISABLE_BACK");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 1024, "FLAG_NOTIFICATION_SHADE_EXPANDED");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 2048, "FLAG_SCREEN_PINNING_ACTIVE");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 4096, "FLAG_VOICE_INTERACTION_WINDOW_SHOWING");
        sb.append(stringJoiner.toString());
        printWriter.println(sb.toString());
        printWriter.println(str + "\tmFloatingRotationButtonBounds=" + this.mFloatingRotationButtonBounds);
        printWriter.println(str + "\tmSysuiStateFlags=" + QuickStepContract.getSystemUiStateString(this.mSysuiStateFlags));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("\tLast set nav button translationY=");
        StringBuilder a4 = C0410q.a(C0410q.a(C0410q.a(C0410q.a(C0410q.a(C0410q.a(C0410q.a(sb2, this.mLastSetNavButtonTranslationY, printWriter, str, "\t\tmTaskbarNavButtonTranslationY="), this.mTaskbarNavButtonTranslationY.value, printWriter, str, "\t\tmTaskbarNavButtonTranslationYForInAppDisplay="), this.mTaskbarNavButtonTranslationYForInAppDisplay.value, printWriter, str, "\t\tmTaskbarNavButtonTranslationYForIme="), this.mTaskbarNavButtonTranslationYForIme.value, printWriter, str, "\t\tmTaskbarNavButtonDarkIntensity="), this.mTaskbarNavButtonDarkIntensity.value, printWriter, str, "\t\tmSlideInViewVisibleNavButtonColorOverride="), this.mSlideInViewVisibleNavButtonColorOverride.value, printWriter, str, "\t\tmOnTaskbarBackgroundNavButtonColorOverride="), this.mOnTaskbarBackgroundNavButtonColorOverride.value, printWriter, str, "\t\tmOnBackgroundNavButtonColorOverrideMultiplier=");
        a4.append(this.mOnBackgroundNavButtonColorOverrideMultiplier.value);
        printWriter.println(a4.toString());
    }

    public final MultiValueAlpha getBackButtonAlpha() {
        return this.mBackButtonAlpha;
    }

    public final MultiValueAlpha getHomeButtonAlpha() {
        return this.mHomeButtonAlpha;
    }

    public final AnimatedFloat getOnTaskbarBackgroundNavButtonColorOverride() {
        return this.mOnTaskbarBackgroundNavButtonColorOverride;
    }

    public final AnimatedFloat getTaskbarNavButtonDarkIntensity() {
        return this.mTaskbarNavButtonDarkIntensity;
    }

    public final AnimatedFloat getTaskbarNavButtonTranslationY() {
        return this.mTaskbarNavButtonTranslationY;
    }

    public final AnimatedFloat getTaskbarNavButtonTranslationYForInAppDisplay() {
        return this.mTaskbarNavButtonTranslationYForInAppDisplay;
    }

    public final RecentsHitboxExtender getTouchController() {
        return this.mHitboxExtender;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v19, types: [com.android.launcher3.taskbar.B] */
    public void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
        TaskbarActivityContext taskbarActivityContext = this.mContext;
        boolean isThreeButtonNav = taskbarActivityContext.isThreeButtonNav();
        DeviceProfile deviceProfile = taskbarActivityContext.getDeviceProfile();
        Resources resources = taskbarActivityContext.getResources();
        this.mNavButtonsView.getLayoutParams().height = (!taskbarActivityContext.isUserSetupComplete() ? new Point(0, taskbarControllers.taskbarActivityContext.getResources().getDimensionPixelSize(R.dimen.taskbar_suw_frame)) : DimensionUtils.getTaskbarPhoneDimensions(deviceProfile, resources, TaskbarManager.isPhoneMode(deviceProfile))).y;
        this.mDisplayController = (DisplayController) DisplayController.INSTANCE.get(taskbarActivityContext);
        boolean z4 = InputMethodService.canImeRenderGesturalNavButtons() && taskbarActivityContext.imeDrawsImeNavBar();
        this.mIsImeRenderingNavButtons = z4;
        ArrayList arrayList = this.mPropertyHolders;
        ViewGroup viewGroup = this.mEndContextualContainer;
        if (!z4) {
            arrayList.add(new StatePropertyHolder(addButton(R.drawable.ic_ime_switcher, 8, isThreeButtonNav ? this.mStartContextualContainer : viewGroup, this.mControllers.navButtonController, R.id.ime_switcher), new C0460w(0)));
        }
        arrayList.add(new StatePropertyHolder(this.mControllers.taskbarViewController.getTaskbarIconAlpha().get(1), new C0460w(1)));
        arrayList.add(new StatePropertyHolder(this.mControllers.taskbarViewController.getTaskbarIconAlpha().get(6), new C0460w(2)));
        arrayList.add(new StatePropertyHolder(this.mControllers.taskbarDragLayerController.getKeyguardBgTaskbar(), new C0460w(3)));
        boolean z5 = !taskbarActivityContext.isUserSetupComplete();
        final boolean isNavBarKidsModeActive = taskbarActivityContext.isNavBarKidsModeActive();
        boolean z6 = isThreeButtonNav || z5;
        AnimatedFloat animatedFloat = this.mNavButtonInAppDisplayProgressForSysui;
        C0462x c0462x = new C0462x();
        FloatProperty floatProperty = AnimatedFloat.VALUE;
        arrayList.add(new StatePropertyHolder(animatedFloat, c0462x, floatProperty, 1.0f, 0.0f));
        float taskbarHeightForIme = (taskbarActivityContext.getDeviceProfile().taskbarHeight - this.mControllers.taskbarInsetsController.getTaskbarHeightForIme()) / 2.0f;
        arrayList.add(new StatePropertyHolder(this.mTaskbarNavButtonTranslationYForIme, new IntPredicate() { // from class: com.android.launcher3.taskbar.y
            @Override // java.util.function.IntPredicate
            public final boolean test(int i4) {
                return ((i4 & 2) == 0 || isNavBarKidsModeActive) ? false : true;
            }
        }, floatProperty, taskbarHeightForIme, z6 ? 0.0f : taskbarHeightForIme));
        AnimatedFloat animatedFloat2 = this.mOnBackgroundNavButtonColorOverrideMultiplier;
        animatedFloat2.value = 1.0f;
        arrayList.add(new StatePropertyHolder(animatedFloat2, new C0460w(4)));
        arrayList.add(new StatePropertyHolder(this.mSlideInViewVisibleNavButtonColorOverride, new C0460w(5)));
        if (z6) {
            LinearLayout linearLayout = this.mNavButtonContainer;
            ViewGroup viewGroup2 = this.mEndContextualContainer;
            final TaskbarNavButtonController taskbarNavButtonController = this.mControllers.navButtonController;
            this.mBackButton = addButton(R.drawable.ic_sysbar_back, 1, linearLayout, taskbarNavButtonController, R.id.back);
            MultiValueAlpha multiValueAlpha = new MultiValueAlpha(3, this.mBackButton, 4);
            this.mBackButtonAlpha = multiValueAlpha;
            multiValueAlpha.setUpdateVisibility();
            arrayList.add(new StatePropertyHolder(this.mBackButtonAlpha.get(1), new C0460w(9)));
            arrayList.add(new StatePropertyHolder(this.mBackButton, new C0460w(10), LauncherAnimUtils.ROTATION_DRAWABLE_PERCENT, 1.0f, 0.0f));
            arrayList.add(new StatePropertyHolder(this.mBackButton, new C0460w(11), LauncherAnimUtils.VIEW_TRANSLATE_X, taskbarActivityContext.getResources().getDimensionPixelSize(R.dimen.taskbar_nav_buttons_size) * (Utilities.isRtl(taskbarActivityContext.getResources()) ? -2 : 2), 0.0f));
            this.mHomeButton = addButton(R.drawable.ic_sysbar_home, 2, linearLayout, taskbarNavButtonController, R.id.home);
            MultiValueAlpha multiValueAlpha2 = new MultiValueAlpha(3, this.mHomeButton, 4);
            this.mHomeButtonAlpha = multiValueAlpha2;
            multiValueAlpha2.setUpdateVisibility();
            arrayList.add(new StatePropertyHolder(this.mHomeButtonAlpha.get(1), new C0460w(12)));
            ImageView addButton = addButton(R.drawable.ic_sysbar_recent, 4, linearLayout, taskbarNavButtonController, R.id.recent_apps);
            this.mRecentsButton = addButton;
            this.mHitboxExtender.init(addButton, this.mNavButtonsView, taskbarActivityContext.getDeviceProfile(), new Supplier() { // from class: com.android.launcher3.taskbar.B
                @Override // java.util.function.Supplier
                public final Object get() {
                    return NavbarButtonsViewController.c(NavbarButtonsViewController.this);
                }
            }, new Handler());
            this.mRecentsButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.taskbar.C
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NavbarButtonsViewController.e(NavbarButtonsViewController.this, taskbarNavButtonController, view);
                }
            });
            arrayList.add(new StatePropertyHolder(this.mRecentsButton, new IntPredicate() { // from class: com.android.launcher3.taskbar.t
                @Override // java.util.function.IntPredicate
                public final boolean test(int i4) {
                    return NavbarButtonsViewController.f(NavbarButtonsViewController.this, i4);
                }
            }));
            ImageView addButton2 = addButton(R.drawable.ic_sysbar_accessibility_button, 16, viewGroup2, taskbarNavButtonController, R.id.accessibility_button, R.layout.taskbar_contextual_button);
            this.mA11yButton = addButton2;
            arrayList.add(new StatePropertyHolder(addButton2, new C0460w(13)));
            updateButtonLayoutSpacing();
            updateStateForFlag(8192, TaskbarManager.isPhoneButtonNavMode(taskbarActivityContext));
            arrayList.add(new StatePropertyHolder(this.mControllers.taskbarDragLayerController.getNavbarBackgroundAlpha(), new C0460w(6)));
            ImageView imageView = (ImageView) taskbarActivityContext.mLayoutInflater.inflate(R.layout.taskbar_contextual_button, viewGroup, false);
            imageView.setId(R.id.rotate_suggestion);
            viewGroup.addView(imageView);
            this.mAllButtons.add(imageView);
            RotationButtonImpl rotationButtonImpl = new RotationButtonImpl(imageView);
            rotationButtonImpl.hide();
            this.mControllers.rotationButtonController.setRotationButton(rotationButtonImpl, null);
        } else {
            FloatingRotationButton floatingRotationButton = new FloatingRotationButton(this.mContext, R.string.accessibility_rotate_button, R.layout.rotate_suggestion, R.id.rotate_suggestion, R.dimen.floating_rotation_button_min_margin, R.dimen.rounded_corner_content_padding, R.dimen.floating_rotation_button_taskbar_left_margin, R.dimen.floating_rotation_button_taskbar_bottom_margin, R.dimen.floating_rotation_button_diameter, R.dimen.key_button_ripple_max_width, R.bool.floating_rotation_button_position_left);
            this.mFloatingRotationButton = floatingRotationButton;
            this.mControllers.rotationButtonController.setRotationButton(floatingRotationButton, this.mRotationButtonListener);
            if (!this.mIsImeRenderingNavButtons) {
                ImageView addButton3 = addButton(R.drawable.ic_sysbar_back, 1, this.mStartContextualContainer, this.mControllers.navButtonController, R.id.back);
                addButton3.setRotation(Utilities.isRtl(resources) ? 90.0f : -90.0f);
                arrayList.add(new StatePropertyHolder(addButton3, new C0460w(7)));
            }
        }
        applyState();
        arrayList.forEach(new C0452s(1));
        BaseDragLayer baseDragLayer = new BaseDragLayer(taskbarActivityContext) { // from class: com.android.launcher3.taskbar.NavbarButtonsViewController.1
            @Override // com.android.launcher3.views.BaseDragLayer
            public final boolean canFindActiveController() {
                return false;
            }

            @Override // com.android.launcher3.views.BaseDragLayer
            public final void recreateControllers() {
                this.mControllers = new TouchController[0];
            }
        };
        this.mSeparateWindowParent = baseDragLayer;
        baseDragLayer.recreateControllers();
    }

    public final boolean isEventOverAnyItem(MotionEvent motionEvent) {
        return this.mFloatingRotationButtonBounds.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    public final boolean isHomeDisabled() {
        return (this.mState & 128) != 0;
    }

    public final boolean isImeVisible() {
        return (this.mState & 2) != 0;
    }

    public final boolean isRecentsDisabled() {
        return (this.mState & 256) != 0;
    }

    public final void moveNavButtonsBackToTaskbarWindow() {
        if (this.mAreNavButtonsInSeparateWindow) {
            this.mAreNavButtonsInSeparateWindow = false;
            BaseDragLayer baseDragLayer = this.mSeparateWindowParent;
            TaskbarActivityContext taskbarActivityContext = this.mContext;
            taskbarActivityContext.removeWindowView(baseDragLayer);
            BaseDragLayer baseDragLayer2 = this.mSeparateWindowParent;
            FrameLayout frameLayout = this.mNavButtonsView;
            baseDragLayer2.removeView(frameLayout);
            taskbarActivityContext.getDragLayer().addView(frameLayout);
        }
    }

    public final void moveNavButtonsToNewWindow() {
        if (this.mAreNavButtonsInSeparateWindow || this.mIsImeRenderingNavButtons) {
            return;
        }
        this.mSeparateWindowParent.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.android.launcher3.taskbar.NavbarButtonsViewController.2
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view) {
                NavbarButtonsViewController.this.mSeparateWindowParent.getViewTreeObserver().addOnComputeInternalInsetsListener(NavbarButtonsViewController.this.mSeparateWindowInsetsComputer);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view) {
                NavbarButtonsViewController.this.mSeparateWindowParent.removeOnAttachStateChangeListener(this);
                NavbarButtonsViewController.this.mSeparateWindowParent.getViewTreeObserver().removeOnComputeInternalInsetsListener(NavbarButtonsViewController.this.mSeparateWindowInsetsComputer);
            }
        });
        this.mAreNavButtonsInSeparateWindow = true;
        TaskbarActivityContext taskbarActivityContext = this.mContext;
        TaskbarDragLayer dragLayer = taskbarActivityContext.getDragLayer();
        FrameLayout frameLayout = this.mNavButtonsView;
        dragLayer.removeView(frameLayout);
        this.mSeparateWindowParent.addView(frameLayout);
        taskbarActivityContext.addWindowView(this.mSeparateWindowParent, taskbarActivityContext.createDefaultWindowLayoutParams(2024, "Taskbar Nav Buttons"));
    }

    public final void onConfigurationChanged(int i4) {
        FloatingRotationButton floatingRotationButton = this.mFloatingRotationButton;
        if (floatingRotationButton != null) {
            floatingRotationButton.onConfigurationChanged(i4);
        }
        if (!this.mContext.isUserSetupComplete()) {
            handleSetupUi();
        }
        updateButtonLayoutSpacing();
    }

    public void onDestroy() {
        this.mPropertyHolders.clear();
        this.mControllers.rotationButtonController.unregisterListeners();
        FloatingRotationButton floatingRotationButton = this.mFloatingRotationButton;
        if (floatingRotationButton != null) {
            floatingRotationButton.hide();
        }
        moveNavButtonsBackToTaskbarWindow();
        this.mNavButtonContainer.removeAllViews();
        this.mEndContextualContainer.removeAllViews();
        this.mStartContextualContainer.removeAllViews();
        this.mAllButtons.clear();
    }

    public final void onUiControllerChanged() {
        TaskbarUIController taskbarUIController = this.mControllers.uiController;
        if (taskbarUIController instanceof LauncherTaskbarUIController) {
            ((LauncherTaskbarUIController) taskbarUIController).onTaskbarInAppDisplayProgressUpdate(this.mNavButtonInAppDisplayProgressForSysui.value, 3);
        }
        updateNavButtonTranslationY();
    }

    public final void setBackButtonAccessibilityDelegate(View.AccessibilityDelegate accessibilityDelegate) {
        ImageView imageView = this.mBackButton;
        if (imageView == null) {
            return;
        }
        imageView.setAccessibilityDelegate(accessibilityDelegate);
    }

    public final void setBackForBouncer(boolean z4) {
        updateStateForFlag(16, z4);
        applyState();
    }

    public final void setHomeButtonAccessibilityDelegate(View.AccessibilityDelegate accessibilityDelegate) {
        ImageView imageView = this.mHomeButton;
        if (imageView == null) {
            return;
        }
        imageView.setAccessibilityDelegate(accessibilityDelegate);
    }

    public final void setKeyguardVisible(boolean z4, boolean z5) {
        updateStateForFlag(32, z4 || z5);
        updateStateForFlag(64, z5);
        applyState();
    }

    public final void setSlideInViewVisible(boolean z4) {
        updateStateForFlag(16384, z4);
        applyState();
    }

    public final void updateNavButtonTranslationY() {
        if (TaskbarManager.isPhoneButtonNavMode(this.mContext)) {
            return;
        }
        float f4 = this.mTaskbarNavButtonTranslationY.value;
        float f5 = this.mTaskbarNavButtonTranslationYForIme.value;
        TaskbarUIController taskbarUIController = this.mControllers.uiController;
        float f6 = f4 + f5 + (((taskbarUIController instanceof LauncherTaskbarUIController) && ((LauncherTaskbarUIController) taskbarUIController).shouldUseInAppLayout()) ? this.mTaskbarNavButtonTranslationYForInAppDisplay.value : 0.0f);
        this.mLastSetNavButtonTranslationY = f6;
        this.mNavButtonsView.setTranslationY(f6);
    }

    public final void updateStateForSysuiFlags(int i4, boolean z4) {
        if (i4 == this.mSysuiStateFlags) {
            return;
        }
        this.mSysuiStateFlags = i4;
        boolean z5 = (262144 & i4) != 0;
        boolean z6 = (1048576 & i4) != 0;
        boolean z7 = (i4 & 16) != 0;
        boolean z8 = (i4 & 256) != 0;
        boolean z9 = (i4 & 128) != 0;
        boolean z10 = (4194304 & i4) != 0;
        boolean z11 = (i4 & 2052) != 0;
        boolean z12 = (i4 & 1) != 0;
        boolean z13 = (33554432 & i4) != 0;
        updateStateForFlag(2, z5);
        updateStateForFlag(1, z6);
        updateStateForFlag(8, z7);
        updateStateForFlag(128, z8);
        updateStateForFlag(256, z9);
        updateStateForFlag(512, z10);
        updateStateForFlag(1024, z11);
        updateStateForFlag(2048, z12);
        updateStateForFlag(4096, z13);
        ImageView imageView = this.mA11yButton;
        if (imageView != null) {
            imageView.setLongClickable((i4 & 32) != 0);
            updateButtonLayoutSpacing();
        }
        applyState();
        if (z4) {
            this.mPropertyHolders.forEach(new C0452s(0));
        }
    }

    public final void updateTaskbarAlignment(float f4) {
        this.mHitboxExtender.onAnimationProgressToOverview(f4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class StatePropertyHolder {
        private final ObjectAnimator mAnimator;
        private final float mDisabledValue;
        private final IntPredicate mEnableCondition;
        private final float mEnabledValue;
        private boolean mIsEnabled;

        public StatePropertyHolder(View view, IntPredicate intPredicate) {
            this(view, intPredicate, LauncherAnimUtils.VIEW_ALPHA, 1.0f, 0.0f);
            this.mAnimator.addListener(new AlphaUpdateListener(view));
        }

        public final void endAnimation() {
            ObjectAnimator objectAnimator = this.mAnimator;
            if (objectAnimator.isRunning()) {
                objectAnimator.end();
            }
        }

        public final void setState(int i4) {
            boolean test = this.mEnableCondition.test(i4);
            if (this.mIsEnabled != test) {
                this.mIsEnabled = test;
                ObjectAnimator objectAnimator = this.mAnimator;
                objectAnimator.cancel();
                float[] fArr = new float[1];
                fArr[0] = this.mIsEnabled ? this.mEnabledValue : this.mDisabledValue;
                objectAnimator.setFloatValues(fArr);
                objectAnimator.start();
            }
        }

        public StatePropertyHolder(MultiPropertyFactory.MultiProperty multiProperty, C0460w c0460w) {
            this(multiProperty, c0460w, MultiPropertyFactory.MULTI_PROPERTY_VALUE, 1.0f, 0.0f);
        }

        public StatePropertyHolder(AnimatedFloat animatedFloat, C0460w c0460w) {
            this(animatedFloat, c0460w, AnimatedFloat.VALUE, 1.0f, 0.0f);
        }

        public StatePropertyHolder(Object obj, IntPredicate intPredicate, Property property, float f4, float f5) {
            this.mIsEnabled = true;
            this.mEnableCondition = intPredicate;
            this.mEnabledValue = f4;
            this.mDisabledValue = f5;
            this.mAnimator = ObjectAnimator.ofFloat(obj, property, f4, f5);
        }
    }

    public final ImageView addButton(int i4, int i5, ViewGroup viewGroup, TaskbarNavButtonController taskbarNavButtonController, int i6) {
        return addButton(i4, i5, viewGroup, taskbarNavButtonController, i6, R.layout.taskbar_nav_button);
    }
}
