package com.android.launcher3;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import com.android.launcher3.DropTarget;
import com.android.launcher3.anim.AlphaUpdateListener;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.LauncherDragController;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
/* loaded from: classes.dex */
public class DropTargetBar extends FrameLayout implements DragController.DragListener, Insettable {
    protected static final TimeInterpolator DEFAULT_INTERPOLATOR = y0.e.f12957u;
    private ViewPropertyAnimator mCurrentAnimation;
    @ViewDebug.ExportedProperty(category = "launcher")
    protected boolean mDeferOnDragEnd;
    private ButtonDropTarget[] mDropTargets;
    private final RunnableC0466u mFadeAnimationEndRunnable;
    private boolean mIsVertical;
    private final Launcher mLauncher;
    private ButtonDropTarget[] mTempTargets;
    @ViewDebug.ExportedProperty(category = "launcher")
    protected boolean mVisible;

    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.launcher3.u] */
    public DropTargetBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFadeAnimationEndRunnable = new Runnable(this) { // from class: com.android.launcher3.u

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ DropTargetBar f5216e;

            {
                this.f5216e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                        DropTargetBar dropTargetBar = this.f5216e;
                        TimeInterpolator timeInterpolator = DropTargetBar.DEFAULT_INTERPOLATOR;
                        dropTargetBar.getClass();
                        AlphaUpdateListener.updateVisibility(dropTargetBar, 4);
                        return;
                    default:
                        DropTargetBar dropTargetBar2 = this.f5216e;
                        TimeInterpolator timeInterpolator2 = DropTargetBar.DEFAULT_INTERPOLATOR;
                        dropTargetBar2.getClass();
                        AlphaUpdateListener.updateVisibility(dropTargetBar2, 4);
                        return;
                }
            }
        };
        this.mVisible = false;
        this.mIsVertical = true;
        this.mLauncher = Launcher.getLauncher(context);
    }

    public final void animateToVisibility(boolean z4) {
        if (this.mVisible != z4) {
            this.mVisible = z4;
            ViewPropertyAnimator viewPropertyAnimator = this.mCurrentAnimation;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                this.mCurrentAnimation = null;
            }
            float f4 = this.mVisible ? 1.0f : 0.0f;
            if (Float.compare(getAlpha(), f4) != 0) {
                setVisibility(0);
                this.mCurrentAnimation = animate().alpha(f4).setInterpolator(DEFAULT_INTERPOLATOR).setDuration(175L).withEndAction(this.mFadeAnimationEndRunnable);
            }
        }
    }

    public final ButtonDropTarget[] getDropTargets() {
        return getVisibility() == 0 ? this.mDropTargets : new ButtonDropTarget[0];
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragEnd() {
        if (this.mDeferOnDragEnd) {
            this.mDeferOnDragEnd = false;
        } else {
            animateToVisibility(false);
        }
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        animateToVisibility(true);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mDropTargets = new ButtonDropTarget[getChildCount()];
        int i4 = 0;
        while (true) {
            ButtonDropTarget[] buttonDropTargetArr = this.mDropTargets;
            if (i4 >= buttonDropTargetArr.length) {
                this.mTempTargets = new ButtonDropTarget[getChildCount()];
                return;
            }
            buttonDropTargetArr[i4] = (ButtonDropTarget) getChildAt(i4);
            this.mDropTargets[i4].mDropTargetBar = this;
            i4++;
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        ButtonDropTarget[] buttonDropTargetArr;
        int i8;
        ButtonDropTarget[] buttonDropTargetArr2 = this.mTempTargets;
        int i9 = 0;
        for (ButtonDropTarget buttonDropTarget : this.mDropTargets) {
            if (buttonDropTarget.getVisibility() != 8) {
                buttonDropTargetArr2[i9] = buttonDropTarget;
                i9++;
            }
        }
        if (i9 == 0) {
            return;
        }
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        float workspaceSpringLoadScale = deviceProfile.getWorkspaceSpringLoadScale(this.mLauncher);
        Workspace workspace = this.mLauncher.mWorkspace;
        boolean z5 = deviceProfile.isTwoPanels;
        if (z5) {
            i8 = (i6 - i4) / 2;
        } else {
            int right = (workspace.getRight() + workspace.getLeft()) / 2;
            int i10 = deviceProfile.getInsets().left;
            Rect rect = deviceProfile.workspacePadding;
            i8 = (right + ((int) ((((((deviceProfile.widthPx - deviceProfile.getInsets().right) - rect.right) + (i10 + rect.left)) / 2) - right) * workspaceSpringLoadScale))) - i4;
        }
        if (i9 == 1) {
            ButtonDropTarget buttonDropTarget2 = this.mTempTargets[0];
            buttonDropTarget2.layout(i8 - (buttonDropTarget2.getMeasuredWidth() / 2), 0, (buttonDropTarget2.getMeasuredWidth() / 2) + i8, buttonDropTarget2.getMeasuredHeight());
        } else if (i9 == 2) {
            int i11 = deviceProfile.dropTargetGapPx;
            ButtonDropTarget[] buttonDropTargetArr3 = this.mTempTargets;
            ButtonDropTarget buttonDropTarget3 = buttonDropTargetArr3[0];
            ButtonDropTarget buttonDropTarget4 = buttonDropTargetArr3[1];
            if (z5) {
                int i12 = i11 / 2;
                buttonDropTarget3.layout((i8 - buttonDropTarget3.getMeasuredWidth()) - i12, 0, i8 - i12, buttonDropTarget3.getMeasuredHeight());
                int i13 = i8 + i12;
                buttonDropTarget4.layout(i13, 0, buttonDropTarget4.getMeasuredWidth() + i13, buttonDropTarget4.getMeasuredHeight());
                return;
            }
            int cellLayoutWidth = (int) (deviceProfile.getCellLayoutWidth() * workspaceSpringLoadScale);
            int measuredWidth = buttonDropTarget3.getMeasuredWidth();
            int measuredWidth2 = buttonDropTarget4.getMeasuredWidth();
            int i14 = ((((cellLayoutWidth - measuredWidth) - measuredWidth2) - i11) / 2) + (i8 - (cellLayoutWidth / 2));
            int i15 = measuredWidth + i14;
            int i16 = i11 + i15;
            buttonDropTarget3.layout(i14, 0, i15, buttonDropTarget3.getMeasuredHeight());
            buttonDropTarget4.layout(i16, 0, measuredWidth2 + i16, buttonDropTarget4.getMeasuredHeight());
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        ButtonDropTarget[] buttonDropTargetArr;
        int size = View.MeasureSpec.getSize(i4);
        int size2 = View.MeasureSpec.getSize(i5);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size2, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE);
        ButtonDropTarget[] buttonDropTargetArr2 = this.mTempTargets;
        int i6 = 0;
        for (ButtonDropTarget buttonDropTarget : this.mDropTargets) {
            if (buttonDropTarget.getVisibility() != 8) {
                buttonDropTargetArr2[i6] = buttonDropTarget;
                i6++;
            }
        }
        if (i6 == 1) {
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            ButtonDropTarget buttonDropTarget2 = this.mTempTargets[0];
            buttonDropTarget2.setTextSize(0, this.mLauncher.getDeviceProfile().dropTargetTextSizePx);
            buttonDropTarget2.setTextVisible(true);
            buttonDropTarget2.setIconVisible(true);
            buttonDropTarget2.measure(makeMeasureSpec2, makeMeasureSpec);
            buttonDropTarget2.resizeTextToFit();
        } else if (i6 == 2) {
            DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
            int i7 = deviceProfile.dropTargetVerticalPaddingPx;
            int i8 = deviceProfile.dropTargetHorizontalPaddingPx;
            ButtonDropTarget buttonDropTarget3 = this.mTempTargets[0];
            buttonDropTarget3.setTextSize(0, deviceProfile.dropTargetTextSizePx);
            buttonDropTarget3.setTextVisible(true);
            buttonDropTarget3.setIconVisible(true);
            buttonDropTarget3.setTextMultiLine(false);
            buttonDropTarget3.setPadding(i8, i7, i8, i7);
            ButtonDropTarget buttonDropTarget4 = this.mTempTargets[1];
            buttonDropTarget4.setTextSize(0, deviceProfile.dropTargetTextSizePx);
            buttonDropTarget4.setTextVisible(true);
            buttonDropTarget4.setIconVisible(true);
            buttonDropTarget4.setTextMultiLine(false);
            buttonDropTarget4.setPadding(i8, i7, i8, i7);
            int i9 = deviceProfile.availableWidthPx;
            boolean z4 = deviceProfile.isTwoPanels;
            int i10 = z4 ? (i9 - deviceProfile.dropTargetGapPx) / 2 : i9 - deviceProfile.dropTargetGapPx;
            int makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i10, Integer.MIN_VALUE);
            buttonDropTarget3.measure(makeMeasureSpec3, makeMeasureSpec);
            if (!this.mIsVertical && buttonDropTarget3.isTextTruncated(i10)) {
                buttonDropTarget3.setIconVisible(false);
                buttonDropTarget4.setIconVisible(false);
                buttonDropTarget3.setTextMultiLine(true);
                int i11 = i7 / 2;
                buttonDropTarget3.setPadding(i8, i11, i8, i11);
            }
            if (!z4) {
                i10 -= buttonDropTarget3.getMeasuredWidth() + deviceProfile.dropTargetGapPx;
                makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i10, Integer.MIN_VALUE);
            }
            buttonDropTarget4.measure(makeMeasureSpec3, makeMeasureSpec);
            if (!this.mIsVertical && buttonDropTarget4.isTextTruncated(i10)) {
                buttonDropTarget4.setIconVisible(false);
                buttonDropTarget3.setIconVisible(false);
                buttonDropTarget4.setTextMultiLine(true);
                int i12 = i7 / 2;
                buttonDropTarget4.setPadding(i8, i12, i8, i12);
            }
            float min = Math.min(buttonDropTarget3.resizeTextToFit(), buttonDropTarget4.resizeTextToFit());
            if (buttonDropTarget3.getTextSize() != min || buttonDropTarget4.getTextSize() != min) {
                buttonDropTarget3.setTextSize(min);
                buttonDropTarget4.setTextSize(min);
            }
        }
        setMeasuredDimension(size, size2);
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        int dimensionPixelSize;
        ButtonDropTarget[] buttonDropTargetArr;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        this.mIsVertical = deviceProfile.isVerticalBarLayout();
        layoutParams.leftMargin = rect.left;
        layoutParams.topMargin = rect.top;
        layoutParams.bottomMargin = rect.bottom;
        layoutParams.rightMargin = rect.right;
        boolean z4 = deviceProfile.isTablet;
        int i4 = deviceProfile.widthPx;
        if (z4) {
            int i5 = deviceProfile.edgeMarginPx;
            int i6 = deviceProfile.inv.numColumns;
            dimensionPixelSize = (((i4 - (i5 * 2)) - (deviceProfile.cellWidthPx * i6)) / ((i6 + 1) * 2)) + i5;
        } else {
            dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.drop_target_bar_margin_horizontal);
        }
        layoutParams.topMargin += deviceProfile.dropTargetBarTopMarginPx;
        layoutParams.bottomMargin += deviceProfile.dropTargetBarBottomMarginPx;
        int i7 = deviceProfile.availableWidthPx - (dimensionPixelSize * 2);
        layoutParams.width = i7;
        if (this.mIsVertical) {
            int i8 = (i4 - i7) / 2;
            layoutParams.leftMargin = i8;
            layoutParams.rightMargin = i8;
        }
        layoutParams.height = deviceProfile.dropTargetBarSizePx;
        layoutParams.gravity = 49;
        DeviceProfile deviceProfile2 = this.mLauncher.getDeviceProfile();
        int i9 = deviceProfile2.dropTargetHorizontalPaddingPx;
        int i10 = deviceProfile2.dropTargetVerticalPaddingPx;
        setLayoutParams(layoutParams);
        for (ButtonDropTarget buttonDropTarget : this.mDropTargets) {
            buttonDropTarget.setTextSize(0, deviceProfile.dropTargetTextSizePx);
            buttonDropTarget.setToolTipLocation();
            buttonDropTarget.setPadding(i9, i10, i9, i10);
        }
    }

    public final void setup(LauncherDragController launcherDragController) {
        launcherDragController.addDragListener(this);
        int i4 = 0;
        while (true) {
            ButtonDropTarget[] buttonDropTargetArr = this.mDropTargets;
            if (i4 >= buttonDropTargetArr.length) {
                return;
            }
            launcherDragController.addDragListener(buttonDropTargetArr[i4]);
            launcherDragController.addDropTarget(this.mDropTargets[i4]);
            i4++;
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.launcher3.u] */
    public DropTargetBar(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mFadeAnimationEndRunnable = new Runnable(this) { // from class: com.android.launcher3.u

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ DropTargetBar f5216e;

            {
                this.f5216e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                        DropTargetBar dropTargetBar = this.f5216e;
                        TimeInterpolator timeInterpolator = DropTargetBar.DEFAULT_INTERPOLATOR;
                        dropTargetBar.getClass();
                        AlphaUpdateListener.updateVisibility(dropTargetBar, 4);
                        return;
                    default:
                        DropTargetBar dropTargetBar2 = this.f5216e;
                        TimeInterpolator timeInterpolator2 = DropTargetBar.DEFAULT_INTERPOLATOR;
                        dropTargetBar2.getClass();
                        AlphaUpdateListener.updateVisibility(dropTargetBar2, 4);
                        return;
                }
            }
        };
        this.mVisible = false;
        this.mIsVertical = true;
        this.mLauncher = Launcher.getLauncher(context);
    }
}
