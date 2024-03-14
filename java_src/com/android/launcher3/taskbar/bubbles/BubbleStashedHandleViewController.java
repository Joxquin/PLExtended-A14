package com.android.launcher3.taskbar.bubbles;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.android.launcher3.anim.RoundedRectRevealOutlineProvider;
import com.android.launcher3.taskbar.StashedHandleView;
import com.android.launcher3.taskbar.TaskbarActivityContext;
import com.android.launcher3.taskbar.bubbles.BubbleStashedHandleViewController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.systemui.shared.R;
import com.android.systemui.shared.navigationbar.RegionSamplingHelper;
/* loaded from: classes.dex */
public final class BubbleStashedHandleViewController {
    private final TaskbarActivityContext mActivity;
    private int mBarSize;
    private BubbleBarViewController mBarViewController;
    private BubbleStashController mBubbleStashController;
    private boolean mHiddenForHomeButtonDisabled;
    private boolean mHiddenForNoBubbles;
    private boolean mHiddenForSysui;
    private RegionSamplingHelper mRegionSamplingHelper;
    private float mStartProgressForNextRevealAnim;
    private final Rect mStashedHandleBounds = new Rect();
    private int mStashedHandleHeight;
    private final StashedHandleView mStashedHandleView;
    private int mStashedHandleWidth;
    private int mStashedTaskbarHeight;
    private final MultiValueAlpha mTaskbarStashedHandleAlpha;
    private boolean mWasLastRevealAnimReversed;

    public BubbleStashedHandleViewController(TaskbarActivityContext taskbarActivityContext, StashedHandleView stashedHandleView) {
        this.mActivity = taskbarActivityContext;
        this.mStashedHandleView = stashedHandleView;
        this.mTaskbarStashedHandleAlpha = new MultiValueAlpha(1, stashedHandleView, 4);
    }

    public static void a(BubbleStashedHandleViewController bubbleStashedHandleViewController) {
        int horizontalMargin = bubbleStashedHandleViewController.mActivity.getDeviceProfile().widthPx - bubbleStashedHandleViewController.mBarViewController.getHorizontalMargin();
        StashedHandleView stashedHandleView = bubbleStashedHandleViewController.mStashedHandleView;
        int height = stashedHandleView.getHeight() - (bubbleStashedHandleViewController.mStashedTaskbarHeight / 2);
        int i4 = bubbleStashedHandleViewController.mStashedHandleHeight / 2;
        int i5 = height - i4;
        int i6 = i4 + height;
        Rect rect = bubbleStashedHandleViewController.mStashedHandleBounds;
        rect.set(horizontalMargin - bubbleStashedHandleViewController.mStashedHandleWidth, i5, horizontalMargin, i6);
        stashedHandleView.updateSampledRegion(rect);
        stashedHandleView.setPivotX(stashedHandleView.getWidth());
        stashedHandleView.setPivotY(stashedHandleView.getHeight() - (bubbleStashedHandleViewController.mStashedTaskbarHeight / 2.0f));
    }

    private void updateRegionSampling() {
        StashedHandleView stashedHandleView = this.mStashedHandleView;
        boolean z4 = stashedHandleView.getVisibility() == 0 && this.mBubbleStashController.isStashed();
        RegionSamplingHelper regionSamplingHelper = this.mRegionSamplingHelper;
        if (regionSamplingHelper != null) {
            regionSamplingHelper.setWindowVisible(z4);
            if (!z4) {
                this.mRegionSamplingHelper.stop();
                return;
            }
            stashedHandleView.updateSampledRegion(this.mStashedHandleBounds);
            this.mRegionSamplingHelper.start(stashedHandleView.getSampledRegion());
        }
    }

    private void updateVisibilityForStateChange() {
        boolean z4 = this.mHiddenForSysui;
        StashedHandleView stashedHandleView = this.mStashedHandleView;
        if (z4 || this.mHiddenForHomeButtonDisabled || this.mHiddenForNoBubbles) {
            stashedHandleView.setVisibility(4);
            stashedHandleView.setAlpha(0.0f);
        } else {
            stashedHandleView.setVisibility(0);
        }
        updateRegionSampling();
    }

    public final Animator createRevealAnimToIsStashed(boolean z4) {
        Rect rect = new Rect(this.mBarViewController.getBubbleBarBounds());
        int height = (this.mBarSize - rect.height()) / 2;
        rect.top -= height;
        rect.bottom += height;
        StashedHandleView stashedHandleView = this.mStashedHandleView;
        float height2 = stashedHandleView.getHeight() / 2.0f;
        RoundedRectRevealOutlineProvider roundedRectRevealOutlineProvider = new RoundedRectRevealOutlineProvider(height2, height2, rect, this.mStashedHandleBounds);
        boolean z5 = !z4;
        boolean z6 = this.mWasLastRevealAnimReversed != z5;
        this.mWasLastRevealAnimReversed = z5;
        if (z6) {
            this.mStartProgressForNextRevealAnim = 1.0f - this.mStartProgressForNextRevealAnim;
        }
        ValueAnimator b4 = roundedRectRevealOutlineProvider.b(stashedHandleView, z5, this.mStartProgressForNextRevealAnim);
        b4.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.taskbar.bubbles.BubbleStashedHandleViewController.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                BubbleStashedHandleViewController.this.mStartProgressForNextRevealAnim = ((ValueAnimator) animator).getAnimatedFraction();
            }
        });
        return b4;
    }

    public final MultiValueAlpha getStashedHandleAlpha() {
        return this.mTaskbarStashedHandleAlpha;
    }

    public final int getStashedHeight() {
        return this.mStashedHandleHeight;
    }

    public final int getUnstashedHeight() {
        return this.mBarSize;
    }

    public final void init(BubbleControllers bubbleControllers) {
        this.mBarViewController = bubbleControllers.bubbleBarViewController;
        this.mBubbleStashController = bubbleControllers.bubbleStashController;
        Resources resources = this.mActivity.getResources();
        this.mStashedHandleHeight = resources.getDimensionPixelSize(R.dimen.bubblebar_stashed_handle_height);
        this.mStashedHandleWidth = resources.getDimensionPixelSize(R.dimen.bubblebar_stashed_handle_width);
        this.mBarSize = resources.getDimensionPixelSize(R.dimen.bubblebar_size);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.transient_taskbar_bottom_margin);
        StashedHandleView stashedHandleView = this.mStashedHandleView;
        stashedHandleView.getLayoutParams().height = this.mBarSize + dimensionPixelSize;
        this.mTaskbarStashedHandleAlpha.get(0).setValue(0.0f);
        this.mStashedTaskbarHeight = resources.getDimensionPixelSize(R.dimen.bubblebar_stashed_size);
        stashedHandleView.setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.launcher3.taskbar.bubbles.BubbleStashedHandleViewController.1
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                outline.setRoundRect(BubbleStashedHandleViewController.this.mStashedHandleBounds, view.getHeight() / 2.0f);
            }
        });
        this.mRegionSamplingHelper = new RegionSamplingHelper(stashedHandleView, new RegionSamplingHelper.SamplingCallback() { // from class: com.android.launcher3.taskbar.bubbles.BubbleStashedHandleViewController.2
            @Override // com.android.systemui.shared.navigationbar.RegionSamplingHelper.SamplingCallback
            public final Rect getSampledRegion(View view) {
                return BubbleStashedHandleViewController.this.mStashedHandleView.getSampledRegion();
            }

            @Override // com.android.systemui.shared.navigationbar.RegionSamplingHelper.SamplingCallback
            public final void onRegionDarknessChanged(boolean z4) {
                BubbleStashedHandleViewController.this.mStashedHandleView.updateHandleColor(z4, true);
            }
        }, Executors.UI_HELPER_EXECUTOR);
        stashedHandleView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: Z0.n
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
                BubbleStashedHandleViewController.a(BubbleStashedHandleViewController.this);
            }
        });
    }

    public final void onDestroy() {
        this.mRegionSamplingHelper.stopAndDestroy();
        this.mRegionSamplingHelper = null;
    }

    public final void onIsStashedChanged() {
        updateRegionSampling();
    }

    public final void setHiddenForBubbles(boolean z4) {
        if (this.mHiddenForNoBubbles != z4) {
            this.mHiddenForNoBubbles = z4;
            updateVisibilityForStateChange();
        }
    }

    public final void setHiddenForSysui(boolean z4) {
        if (this.mHiddenForSysui != z4) {
            this.mHiddenForSysui = z4;
            updateVisibilityForStateChange();
        }
    }

    public final void setIsHomeButtonDisabled(boolean z4) {
        this.mHiddenForHomeButtonDisabled = z4;
        updateVisibilityForStateChange();
    }

    public final void setTranslationYForSwipe(float f4) {
        this.mStashedHandleView.setTranslationY(f4);
    }
}
