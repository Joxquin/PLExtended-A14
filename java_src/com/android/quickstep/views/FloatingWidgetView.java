package com.android.quickstep.views;

import android.animation.Animator;
import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Size;
import android.view.GhostView;
import android.view.RemoteAnimationTarget;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.views.FloatingView;
import com.android.launcher3.views.ListenerView;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.RoundedCornerEnforcement;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class FloatingWidgetView extends FrameLayout implements Animator.AnimatorListener, ViewTreeObserver.OnGlobalLayoutListener, FloatingView {
    private static final Matrix sTmpMatrix = new Matrix();
    private boolean mAppTargetIsTranslucent;
    private View mAppWidgetBackgroundView;
    private LauncherAppWidgetHostView mAppWidgetView;
    private final RectF mBackgroundOffset;
    private RectF mBackgroundPosition;
    private final FloatingWidgetBackgroundView mBackgroundView;
    private Runnable mEndRunnable;
    private Runnable mFastFinishRunnable;
    private GhostView mForegroundOverlayView;
    private float mIconOffsetY;
    private final Launcher mLauncher;
    private final ListenerView mListenerView;
    private Runnable mOnTargetChangeRunnable;

    public FloatingWidgetView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: finish */
    public void lambda$init$0(DragLayer dragLayer) {
        this.mAppWidgetView.setAlpha(1.0f);
        GhostView.removeGhost(this.mAppWidgetView);
        ((ViewGroup) dragLayer.getParent()).removeView(this);
        dragLayer.removeView(this.mListenerView);
        this.mBackgroundView.finish();
        this.mAppWidgetView.endDeferringUpdates();
        recycle();
        this.mLauncher.getViewCache().recycleView(this, R.layout.floating_widget_view);
    }

    public static int getDefaultBackgroundColor(Context context, RemoteAnimationTarget remoteAnimationTarget) {
        ActivityManager.TaskDescription taskDescription;
        return (remoteAnimationTarget == null || (taskDescription = remoteAnimationTarget.taskInfo.taskDescription) == null) ? GraphicsUtils.getAttrColor(16842801, context) : taskDescription.getBackgroundColor();
    }

    public static FloatingWidgetView getFloatingWidgetView(Launcher launcher, LauncherAppWidgetHostView launcherAppWidgetHostView, RectF rectF, Size size, float f4, boolean z4, int i4) {
        DragLayer dragLayer = launcher.getDragLayer();
        ViewGroup viewGroup = (ViewGroup) dragLayer.getParent();
        FloatingWidgetView floatingWidgetView = (FloatingWidgetView) launcher.getViewCache().getView(R.layout.floating_widget_view, launcher, viewGroup);
        floatingWidgetView.recycle();
        floatingWidgetView.init(dragLayer, launcherAppWidgetHostView, rectF, size, f4, z4, i4);
        viewGroup.addView(floatingWidgetView);
        return floatingWidgetView;
    }

    private static void getRelativePosition(View view, View view2, RectF rectF) {
        float[] fArr = {0.0f, 0.0f, view.getWidth(), view.getHeight()};
        Utilities.getDescendantCoordRelativeToAncestor(view, view2, fArr, false, true);
        rectF.set(Math.min(fArr[0], fArr[2]), Math.min(fArr[1], fArr[3]), Math.max(fArr[0], fArr[2]), Math.max(fArr[1], fArr[3]));
    }

    private void init(final DragLayer dragLayer, LauncherAppWidgetHostView launcherAppWidgetHostView, RectF rectF, Size size, float f4, boolean z4, int i4) {
        this.mAppWidgetView = launcherAppWidgetHostView;
        launcherAppWidgetHostView.beginDeferringUpdates();
        this.mBackgroundPosition = rectF;
        this.mAppTargetIsTranslucent = z4;
        this.mEndRunnable = new Runnable() { // from class: com.android.quickstep.views.i
            @Override // java.lang.Runnable
            public final void run() {
                FloatingWidgetView.this.lambda$init$0(dragLayer);
            }
        };
        View findBackground = RoundedCornerEnforcement.findBackground(this.mAppWidgetView);
        this.mAppWidgetBackgroundView = findBackground;
        if (findBackground == null) {
            this.mAppWidgetBackgroundView = this.mAppWidgetView;
        }
        getRelativePosition(this.mAppWidgetBackgroundView, dragLayer, this.mBackgroundPosition);
        getRelativePosition(this.mAppWidgetBackgroundView, this.mAppWidgetView, this.mBackgroundOffset);
        if (!this.mAppTargetIsTranslucent) {
            this.mBackgroundView.init(this.mAppWidgetView, this.mAppWidgetBackgroundView, f4, i4);
            layout(0, 0, size.getWidth(), size.getHeight());
            this.mForegroundOverlayView = GhostView.addGhost(this.mAppWidgetView, this);
            positionViews();
        }
        this.mListenerView.setListener(new Runnable() { // from class: com.android.quickstep.views.j
            @Override // java.lang.Runnable
            public final void run() {
                FloatingWidgetView.this.fastFinish();
            }
        });
        dragLayer.addView(this.mListenerView);
    }

    private boolean isUninitialized() {
        return this.mForegroundOverlayView == null;
    }

    private void positionViews() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.setMargins(0, 0, 0, 0);
        setLayoutParams(layoutParams);
        this.mBackgroundView.setTranslationX(this.mBackgroundPosition.left);
        this.mBackgroundView.setTranslationY(this.mBackgroundPosition.top + this.mIconOffsetY);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mBackgroundView.getLayoutParams();
        layoutParams2.leftMargin = 0;
        layoutParams2.topMargin = 0;
        layoutParams2.width = (int) this.mBackgroundPosition.width();
        layoutParams2.height = (int) this.mBackgroundPosition.height();
        this.mBackgroundView.setLayoutParams(layoutParams2);
        if (this.mForegroundOverlayView != null) {
            Matrix matrix = sTmpMatrix;
            matrix.reset();
            float width = this.mBackgroundPosition.width() / this.mAppWidgetBackgroundView.getWidth();
            matrix.setTranslate((-this.mBackgroundOffset.left) - this.mAppWidgetView.getLeft(), (-this.mBackgroundOffset.top) - this.mAppWidgetView.getTop());
            matrix.postScale(width, width);
            RectF rectF = this.mBackgroundPosition;
            matrix.postTranslate(rectF.left, rectF.top + this.mIconOffsetY);
            this.mForegroundOverlayView.setMatrix(matrix);
        }
    }

    private void recycle() {
        this.mIconOffsetY = 0.0f;
        this.mEndRunnable = null;
        this.mFastFinishRunnable = null;
        this.mOnTargetChangeRunnable = null;
        this.mBackgroundPosition = null;
        this.mListenerView.setListener(null);
        this.mAppWidgetView = null;
        this.mForegroundOverlayView = null;
        this.mAppWidgetBackgroundView = null;
        this.mBackgroundView.recycle();
    }

    @Override // com.android.launcher3.views.FloatingView
    public void fastFinish() {
        if (isUninitialized()) {
            return;
        }
        Runnable runnable = this.mFastFinishRunnable;
        if (runnable != null) {
            runnable.run();
        }
        Runnable runnable2 = this.mEndRunnable;
        this.mEndRunnable = null;
        if (runnable2 != null) {
            runnable2.run();
        }
    }

    public float getInitialCornerRadius() {
        return this.mBackgroundView.getMaximumRadius();
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        Runnable runnable = this.mEndRunnable;
        this.mEndRunnable = null;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (isUninitialized()) {
            return;
        }
        positionViews();
        Runnable runnable = this.mOnTargetChangeRunnable;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void setFastFinishRunnable(Runnable runnable) {
        this.mFastFinishRunnable = runnable;
    }

    public void setOnTargetChangeListener(Runnable runnable) {
        this.mOnTargetChangeRunnable = runnable;
    }

    public void setPositionOffsetY(float f4) {
        this.mIconOffsetY = f4;
        onGlobalLayout();
    }

    public void update(RectF rectF, float f4, float f5, float f6, float f7) {
        if (isUninitialized() || this.mAppTargetIsTranslucent) {
            return;
        }
        setAlpha(f4);
        this.mBackgroundView.update(f7, f6);
        this.mAppWidgetView.setAlpha(f5);
        this.mBackgroundPosition = rectF;
        positionViews();
    }

    public FloatingWidgetView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FloatingWidgetView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mBackgroundOffset = new RectF();
        this.mLauncher = Launcher.getLauncher(context);
        this.mListenerView = new ListenerView(context, attributeSet);
        FloatingWidgetBackgroundView floatingWidgetBackgroundView = new FloatingWidgetBackgroundView(context, attributeSet, i4);
        this.mBackgroundView = floatingWidgetBackgroundView;
        addView(floatingWidgetBackgroundView);
        setWillNotDraw(false);
    }
}
