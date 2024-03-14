package com.android.launcher3.taskbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.android.launcher3.C0339g;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.RoundedRectRevealOutlineProvider;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.systemui.shared.R;
import com.android.systemui.shared.navigationbar.RegionSamplingHelper;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public final class StashedHandleViewController implements TaskbarControllers.LoggableTaskbarController {
    private final TaskbarActivityContext mActivity;
    private TaskbarControllers mControllers;
    private boolean mIsStashed;
    private final SharedPreferences mPrefs;
    private RegionSamplingHelper mRegionSamplingHelper;
    private float mStartProgressForNextRevealAnim;
    private final int mStashedHandleHeight;
    private float mStashedHandleRadius;
    private final StashedHandleView mStashedHandleView;
    private int mStashedHandleWidth;
    private boolean mTaskbarHidden;
    private int mTaskbarSize;
    private final MultiValueAlpha mTaskbarStashedHandleAlpha;
    private float mTranslationYForStash;
    private float mTranslationYForSwipe;
    private boolean mWasLastRevealAnimReversed;
    private final AnimatedFloat mTaskbarStashedHandleHintScale = new AnimatedFloat(new Runnable() { // from class: com.android.launcher3.taskbar.E
        @Override // java.lang.Runnable
        public final void run() {
            StashedHandleViewController.this.updateStashedHandleHintScale();
        }
    });
    private final Rect mStashedHandleBounds = new Rect();

    public StashedHandleViewController(TaskbarActivityContext taskbarActivityContext, StashedHandleView stashedHandleView) {
        this.mActivity = taskbarActivityContext;
        SharedPreferences prefs = LauncherPrefs.getPrefs(taskbarActivityContext);
        this.mPrefs = prefs;
        this.mStashedHandleView = stashedHandleView;
        MultiValueAlpha multiValueAlpha = new MultiValueAlpha(4, stashedHandleView, 4);
        this.mTaskbarStashedHandleAlpha = multiValueAlpha;
        multiValueAlpha.setUpdateVisibility();
        stashedHandleView.updateHandleColor(prefs.getBoolean("stashed_handle_region_is_dark", false), false);
        this.mStashedHandleHeight = taskbarActivityContext.getResources().getDimensionPixelSize(R.dimen.taskbar_stashed_handle_height);
    }

    private boolean isPhoneGestureNavMode(DeviceProfile deviceProfile) {
        return TaskbarManager.isPhoneMode(deviceProfile) && !this.mActivity.isThreeButtonNav();
    }

    public final Animator createRevealAnimToIsStashed(boolean z4) {
        Rect rect = new Rect(this.mControllers.taskbarViewController.getIconLayoutBounds());
        float f4 = this.mStashedHandleRadius;
        if (DisplayController.isTransientTaskbar(this.mActivity)) {
            int height = (this.mTaskbarSize - rect.height()) / 2;
            rect.top -= height;
            rect.bottom += height;
            f4 = rect.height() / 2.0f;
        }
        RoundedRectRevealOutlineProvider roundedRectRevealOutlineProvider = new RoundedRectRevealOutlineProvider(f4, this.mStashedHandleRadius, rect, this.mStashedHandleBounds);
        boolean z5 = !z4;
        boolean z6 = this.mWasLastRevealAnimReversed != z5;
        this.mWasLastRevealAnimReversed = z5;
        if (z6) {
            this.mStartProgressForNextRevealAnim = 1.0f - this.mStartProgressForNextRevealAnim;
        }
        ValueAnimator b4 = roundedRectRevealOutlineProvider.b(this.mStashedHandleView, z5, this.mStartProgressForNextRevealAnim);
        b4.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.taskbar.StashedHandleViewController.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                StashedHandleViewController.this.mStartProgressForNextRevealAnim = ((ValueAnimator) animator).getAnimatedFraction();
            }
        });
        return b4;
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "StashedHandleViewController:");
        printWriter.println(str + "\tisStashedHandleVisible=" + isStashedHandleVisible());
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tmStashedHandleWidth=");
        StringBuilder a4 = C0339g.a(sb, this.mStashedHandleWidth, printWriter, str, "\tmStashedHandleHeight=");
        a4.append(this.mStashedHandleHeight);
        printWriter.println(a4.toString());
        this.mRegionSamplingHelper.dump(str, printWriter);
    }

    public final MultiValueAlpha getStashedHandleAlpha() {
        return this.mTaskbarStashedHandleAlpha;
    }

    public final void getStashedHandleBounds(Rect rect) {
        rect.set(this.mStashedHandleBounds);
    }

    public final AnimatedFloat getStashedHandleHintScale() {
        return this.mTaskbarStashedHandleHintScale;
    }

    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
        TaskbarActivityContext taskbarActivityContext = this.mActivity;
        DeviceProfile deviceProfile = taskbarActivityContext.getDeviceProfile();
        Resources resources = taskbarActivityContext.getResources();
        if (isPhoneGestureNavMode(taskbarActivityContext.getDeviceProfile())) {
            this.mTaskbarSize = resources.getDimensionPixelSize(R.dimen.taskbar_size);
            this.mStashedHandleWidth = resources.getDimensionPixelSize(R.dimen.taskbar_stashed_small_screen);
        } else {
            this.mTaskbarSize = deviceProfile.taskbarHeight;
            this.mStashedHandleWidth = resources.getDimensionPixelSize(R.dimen.taskbar_stashed_handle_width);
        }
        int i4 = deviceProfile.taskbarBottomMargin;
        StashedHandleView stashedHandleView = this.mStashedHandleView;
        stashedHandleView.getLayoutParams().height = this.mTaskbarSize + i4;
        this.mTaskbarStashedHandleAlpha.get(0).setValue(isPhoneGestureNavMode(deviceProfile) ? 1.0f : 0.0f);
        this.mTaskbarStashedHandleHintScale.updateValue(1.0f);
        final int stashedHeight = this.mControllers.taskbarStashController.getStashedHeight();
        stashedHandleView.setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.launcher3.taskbar.StashedHandleViewController.1
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                int width = view.getWidth() / 2;
                int height = view.getHeight() - (stashedHeight / 2);
                StashedHandleViewController.this.mStashedHandleBounds.set(width - (StashedHandleViewController.this.mStashedHandleWidth / 2), height - (StashedHandleViewController.this.mStashedHandleHeight / 2), (StashedHandleViewController.this.mStashedHandleWidth / 2) + width, (StashedHandleViewController.this.mStashedHandleHeight / 2) + height);
                StashedHandleViewController.this.mStashedHandleView.updateSampledRegion(StashedHandleViewController.this.mStashedHandleBounds);
                StashedHandleViewController.this.mStashedHandleRadius = view.getHeight() / 2.0f;
                outline.setRoundRect(StashedHandleViewController.this.mStashedHandleBounds, StashedHandleViewController.this.mStashedHandleRadius);
            }
        });
        stashedHandleView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.android.launcher3.taskbar.F
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
                int height = view.getHeight() - (stashedHeight / 2);
                view.setPivotX(view.getWidth() / 2);
                view.setPivotY(height);
            }
        });
        this.mRegionSamplingHelper = new RegionSamplingHelper(stashedHandleView, new RegionSamplingHelper.SamplingCallback() { // from class: com.android.launcher3.taskbar.StashedHandleViewController.2
            @Override // com.android.systemui.shared.navigationbar.RegionSamplingHelper.SamplingCallback
            public final Rect getSampledRegion(View view) {
                return StashedHandleViewController.this.mStashedHandleView.getSampledRegion();
            }

            @Override // com.android.systemui.shared.navigationbar.RegionSamplingHelper.SamplingCallback
            public final void onRegionDarknessChanged(boolean z4) {
                StashedHandleViewController stashedHandleViewController = StashedHandleViewController.this;
                stashedHandleViewController.mStashedHandleView.updateHandleColor(z4, true);
                stashedHandleViewController.mPrefs.edit().putBoolean("stashed_handle_region_is_dark", z4).apply();
            }
        }, Executors.UI_HELPER_EXECUTOR);
        if (isPhoneGestureNavMode(deviceProfile)) {
            onIsStashedChanged(true);
        }
    }

    public final boolean isStashedHandleVisible() {
        return this.mStashedHandleView.getVisibility() == 0;
    }

    public final void onDestroy() {
        this.mRegionSamplingHelper.stopAndDestroy();
        this.mRegionSamplingHelper = null;
    }

    public final void onIsStashedChanged(boolean z4) {
        this.mIsStashed = z4;
        this.mRegionSamplingHelper.setWindowVisible(z4 && !this.mTaskbarHidden);
        if (!z4) {
            this.mRegionSamplingHelper.stop();
            return;
        }
        StashedHandleView stashedHandleView = this.mStashedHandleView;
        stashedHandleView.updateSampledRegion(this.mStashedHandleBounds);
        this.mRegionSamplingHelper.start(stashedHandleView.getSampledRegion());
    }

    public final void setIsHomeButtonDisabled(boolean z4) {
        this.mTaskbarStashedHandleAlpha.get(1).setValue(z4 ? 0.0f : 1.0f);
    }

    public final void setTranslationYForStash(float f4) {
        this.mTranslationYForStash = f4;
        this.mStashedHandleView.setTranslationY(this.mTranslationYForSwipe + f4);
    }

    public final void setTranslationYForSwipe(float f4) {
        this.mTranslationYForSwipe = f4;
        this.mStashedHandleView.setTranslationY(f4 + this.mTranslationYForStash);
    }

    public final void updateStashedHandleHintScale() {
        AnimatedFloat animatedFloat = this.mTaskbarStashedHandleHintScale;
        float f4 = animatedFloat.value;
        StashedHandleView stashedHandleView = this.mStashedHandleView;
        stashedHandleView.setScaleX(f4);
        stashedHandleView.setScaleY(animatedFloat.value);
    }

    public final void updateStateForSysuiFlags(int i4) {
        boolean z4 = true;
        boolean z5 = (i4 & 2) != 0;
        this.mTaskbarHidden = z5;
        RegionSamplingHelper regionSamplingHelper = this.mRegionSamplingHelper;
        if (!this.mIsStashed || z5) {
            z4 = false;
        }
        regionSamplingHelper.setWindowVisible(z4);
    }
}
