package com.android.quickstep.views;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.InsettableFrameLayout;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.taskbar.TaskbarActivityContext;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.util.AnimUtils;
import com.android.quickstep.util.MultiValueUpdateListener;
import com.android.quickstep.util.SplitAnimationTimings;
import com.android.quickstep.util.TaskCornerRadius;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
/* loaded from: classes.dex */
public class FloatingTaskView extends FrameLayout {
    public static final FloatProperty PRIMARY_TRANSLATE_OFFSCREEN = new FloatProperty("floatingTaskPrimaryTranslateOffscreen") { // from class: com.android.quickstep.views.FloatingTaskView.1
        @Override // android.util.Property
        public Float get(FloatingTaskView floatingTaskView) {
            return ((RecentsView) floatingTaskView.mActivity.getOverviewPanel()).getPagedOrientationHandler().getFloatingTaskPrimaryTranslation(floatingTaskView, floatingTaskView.mActivity.getDeviceProfile());
        }

        @Override // android.util.FloatProperty
        public void setValue(FloatingTaskView floatingTaskView, float f4) {
            ((RecentsView) floatingTaskView.mActivity.getOverviewPanel()).getPagedOrientationHandler().setFloatingTaskPrimaryTranslation(floatingTaskView, f4, floatingTaskView.mActivity.getDeviceProfile());
        }
    };
    private final StatefulActivity mActivity;
    private final FullscreenDrawParams mFullscreenParams;
    private final boolean mIsRtl;
    private PagedOrientationHandler mOrientationHandler;
    private int mSplitHolderSize;
    private SplitPlaceholderView mSplitPlaceholderView;
    private int mStagePosition;
    private RectF mStartingPosition;
    private FloatingTaskThumbnailView mThumbnailView;
    private final Rect mTmpRect;

    /* loaded from: classes.dex */
    public class FullscreenDrawParams {
        private final float mCornerRadius;
        public float mCurrentDrawnCornerRadius;
        public boolean mIsStagedTask;
        private final float mWindowCornerRadius;
        public final RectF mBounds = new RectF();
        public float mScaleX = 1.0f;
        public float mScaleY = 1.0f;

        public FullscreenDrawParams(Context context) {
            float f4 = TaskCornerRadius.get(context);
            this.mCornerRadius = f4;
            this.mWindowCornerRadius = QuickStepContract.getWindowCornerRadius(context);
            this.mCurrentDrawnCornerRadius = f4;
        }

        public void setIsStagedTask(boolean z4) {
            this.mIsStagedTask = z4;
        }

        public void updateParams(RectF rectF, float f4, float f5, float f6) {
            float a4;
            this.mBounds.set(rectF);
            this.mScaleX = f5;
            this.mScaleY = f6;
            if (this.mIsStagedTask) {
                a4 = this.mWindowCornerRadius;
            } else {
                float f7 = this.mCornerRadius;
                float f8 = this.mWindowCornerRadius;
                String[] strArr = Utilities.EMPTY_STRING_ARRAY;
                a4 = w.f.a(f8, f7, f4, f7);
            }
            this.mCurrentDrawnCornerRadius = a4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class SplitOverlayProperties {
        private final float dX;
        private final float dY;
        private final float finalTaskViewScaleX;
        private final float finalTaskViewScaleY;

        public SplitOverlayProperties(Rect rect, RectF rectF, int i4, int i5) {
            this.finalTaskViewScaleX = rect.width() / rectF.width();
            this.finalTaskViewScaleY = rect.height() / rectF.height();
            this.dX = (rect.centerX() - i4) - rectF.centerX();
            this.dY = (rect.centerY() - i5) - rectF.centerY();
        }
    }

    public FloatingTaskView(Context context) {
        this(context, null);
    }

    public static FloatingTaskView getFloatingTaskView(StatefulActivity statefulActivity, View view, Bitmap bitmap, Drawable drawable, RectF rectF) {
        BaseDragLayer dragLayer = statefulActivity.getDragLayer();
        FloatingTaskView floatingTaskView = (FloatingTaskView) statefulActivity.getLayoutInflater().inflate(R.layout.floating_split_select_view, (ViewGroup) dragLayer, false);
        floatingTaskView.init(statefulActivity, view, bitmap, drawable, rectF);
        int indexOfChild = dragLayer.indexOfChild(AbstractFloatingView.getOpenView(statefulActivity, 2048));
        if (indexOfChild == -1) {
            indexOfChild = dragLayer.getChildCount();
        }
        dragLayer.addView(floatingTaskView, indexOfChild - 1);
        return floatingTaskView;
    }

    private void init(StatefulActivity statefulActivity, View view, Bitmap bitmap, Drawable drawable, RectF rectF) {
        this.mStartingPosition = rectF;
        updateInitialPositionForView(view);
        InsettableFrameLayout.LayoutParams layoutParams = (InsettableFrameLayout.LayoutParams) getLayoutParams();
        this.mSplitPlaceholderView.setLayoutParams(new FrameLayout.LayoutParams(((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height));
        setPivotX(0.0f);
        setPivotY(0.0f);
        this.mThumbnailView.setThumbnail(bitmap);
        this.mThumbnailView.setVisibility(0);
        RecentsView recentsView = (RecentsView) statefulActivity.getOverviewPanel();
        this.mOrientationHandler = recentsView.getPagedOrientationHandler();
        this.mStagePosition = recentsView.getSplitSelectController().getActiveSplitStagePosition();
        this.mSplitPlaceholderView.setIcon(drawable, this.mSplitHolderSize);
        this.mSplitPlaceholderView.getIconView().setRotation(this.mOrientationHandler.getDegreesRotated());
    }

    public void addAnimation(PendingAnimation pendingAnimation, RectF rectF, Rect rect, boolean z4, boolean z5, SplitAnimationTimings splitAnimationTimings) {
        this.mFullscreenParams.setIsStagedTask(z5);
        int[] iArr = new int[2];
        this.mActivity.getDragLayer().getLocationOnScreen(iArr);
        SplitOverlayProperties splitOverlayProperties = new SplitOverlayProperties(rect, rectF, iArr[0], iArr[1]);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        pendingAnimation.add(ofFloat);
        long duration = pendingAnimation.getDuration();
        RectF rectF2 = new RectF();
        if (z4) {
            pendingAnimation.setViewAlpha(this.mThumbnailView, 0.0f, y0.e.b(splitAnimationTimings.getPlaceholderFadeInStartOffset(), splitAnimationTimings.getPlaceholderFadeInEndOffset(), y0.e.f12949m));
            fadeInSplitPlaceholder(pendingAnimation, splitAnimationTimings);
        } else if (z5 && this.mSplitPlaceholderView.getAlpha() == 0.0f) {
            this.mSplitPlaceholderView.getIconView().setAlpha(0.0f);
            fadeInSplitPlaceholder(pendingAnimation, splitAnimationTimings);
        }
        ofFloat.addUpdateListener(new MultiValueUpdateListener(splitOverlayProperties, duration, splitAnimationTimings, rectF2, rectF) { // from class: com.android.quickstep.views.FloatingTaskView.2
            final MultiValueUpdateListener.FloatProp mDx;
            final MultiValueUpdateListener.FloatProp mDy;
            final MultiValueUpdateListener.FloatProp mTaskViewScaleX;
            final MultiValueUpdateListener.FloatProp mTaskViewScaleY;
            final /* synthetic */ long val$animDuration;
            final /* synthetic */ RectF val$floatingTaskViewBounds;
            final /* synthetic */ SplitOverlayProperties val$prop;
            final /* synthetic */ RectF val$startingBounds;
            final /* synthetic */ SplitAnimationTimings val$timings;

            {
                this.val$prop = splitOverlayProperties;
                this.val$animDuration = duration;
                this.val$timings = splitAnimationTimings;
                this.val$floatingTaskViewBounds = rectF2;
                this.val$startingBounds = rectF;
                float f4 = (float) duration;
                this.mDx = new MultiValueUpdateListener.FloatProp(0.0f, splitOverlayProperties.dX, 0.0f, f4, y0.e.b(splitAnimationTimings.getStagedRectSlideStartOffset(), splitAnimationTimings.getStagedRectSlideEndOffset(), splitAnimationTimings.getStagedRectXInterpolator()));
                this.mDy = new MultiValueUpdateListener.FloatProp(0.0f, splitOverlayProperties.dY, 0.0f, f4, y0.e.b(splitAnimationTimings.getStagedRectSlideStartOffset(), splitAnimationTimings.getStagedRectSlideEndOffset(), splitAnimationTimings.getStagedRectYInterpolator()));
                this.mTaskViewScaleX = new MultiValueUpdateListener.FloatProp(1.0f, splitOverlayProperties.finalTaskViewScaleX, 0.0f, f4, y0.e.b(splitAnimationTimings.getStagedRectSlideStartOffset(), splitAnimationTimings.getStagedRectSlideEndOffset(), splitAnimationTimings.getStagedRectScaleXInterpolator()));
                this.mTaskViewScaleY = new MultiValueUpdateListener.FloatProp(1.0f, splitOverlayProperties.finalTaskViewScaleY, 0.0f, f4, y0.e.b(splitAnimationTimings.getStagedRectSlideStartOffset(), splitAnimationTimings.getStagedRectSlideEndOffset(), splitAnimationTimings.getStagedRectScaleYInterpolator()));
            }

            @Override // com.android.quickstep.util.MultiValueUpdateListener
            public void onUpdate(float f4, boolean z6) {
                this.val$floatingTaskViewBounds.set(this.val$startingBounds);
                this.val$floatingTaskViewBounds.offset(this.mDx.value, this.mDy.value);
                Utilities.scaleRectFAboutCenter(this.val$floatingTaskViewBounds, this.mTaskViewScaleX.value, this.mTaskViewScaleY.value);
                FloatingTaskView.this.update(this.val$floatingTaskViewBounds, f4);
            }
        });
    }

    public void addConfirmAnimation(PendingAnimation pendingAnimation, RectF rectF, Rect rect, boolean z4, boolean z5) {
        addAnimation(pendingAnimation, rectF, rect, z4, z5, AnimUtils.getDeviceSplitToConfirmTimings(this.mActivity.getDeviceProfile().isTablet));
    }

    public void addStagingAnimation(PendingAnimation pendingAnimation, RectF rectF, Rect rect, boolean z4, boolean z5) {
        boolean z6 = this.mActivity.getDeviceProfile().isTablet;
        addAnimation(pendingAnimation, rectF, rect, z4, z5, (z6 && z4) ? SplitAnimationTimings.TABLET_OVERVIEW_TO_SPLIT : (z6 || !z4) ? SplitAnimationTimings.TABLET_HOME_TO_SPLIT : SplitAnimationTimings.PHONE_OVERVIEW_TO_SPLIT);
    }

    public void centerIconView(IconView iconView, float f4, float f5) {
        PagedOrientationHandler pagedOrientationHandler = this.mOrientationHandler;
        FullscreenDrawParams fullscreenDrawParams = this.mFullscreenParams;
        pagedOrientationHandler.updateSplitIconParams(iconView, f4, f5, fullscreenDrawParams.mScaleX, fullscreenDrawParams.mScaleY, iconView.getDrawableWidth(), iconView.getDrawableHeight(), this.mActivity.getDeviceProfile(), this.mStagePosition);
    }

    public void drawRoundedRect(Canvas canvas, Paint paint) {
        if (this.mFullscreenParams == null) {
            return;
        }
        float measuredWidth = getMeasuredWidth();
        float measuredHeight = getMeasuredHeight();
        FullscreenDrawParams fullscreenDrawParams = this.mFullscreenParams;
        float f4 = fullscreenDrawParams.mCurrentDrawnCornerRadius;
        canvas.drawRoundRect(0.0f, 0.0f, measuredWidth, measuredHeight, f4 / fullscreenDrawParams.mScaleX, f4 / fullscreenDrawParams.mScaleY, paint);
    }

    public void fadeInSplitPlaceholder(PendingAnimation pendingAnimation, SplitAnimationTimings splitAnimationTimings) {
        SplitPlaceholderView splitPlaceholderView = this.mSplitPlaceholderView;
        Interpolator interpolator = y0.e.f12949m;
        pendingAnimation.setViewAlpha(splitPlaceholderView, 1.0f, y0.e.b(splitAnimationTimings.getPlaceholderFadeInStartOffset(), splitAnimationTimings.getPlaceholderFadeInEndOffset(), interpolator));
        pendingAnimation.setViewAlpha(this.mSplitPlaceholderView.getIconView(), 1.0f, y0.e.b(splitAnimationTimings.getPlaceholderIconFadeInStartOffset(), splitAnimationTimings.getPlaceholderIconFadeInEndOffset(), interpolator));
    }

    public int getStagePosition() {
        return this.mStagePosition;
    }

    public void initPosition(RectF rectF, InsettableFrameLayout.LayoutParams layoutParams) {
        this.mStartingPosition.set(rectF);
        layoutParams.ignoreInsets = true;
        ((FrameLayout.LayoutParams) layoutParams).topMargin = Math.round(rectF.top);
        if (this.mIsRtl) {
            layoutParams.setMarginStart(this.mActivity.getDeviceProfile().widthPx - Math.round(rectF.right));
        } else {
            layoutParams.setMarginStart(Math.round(rectF.left));
        }
        int i4 = (int) rectF.left;
        int i5 = ((FrameLayout.LayoutParams) layoutParams).topMargin;
        layout(i4, i5, ((FrameLayout.LayoutParams) layoutParams).width + i4, ((FrameLayout.LayoutParams) layoutParams).height + i5);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mThumbnailView = (FloatingTaskThumbnailView) findViewById(R.id.thumbnail);
        SplitPlaceholderView splitPlaceholderView = (SplitPlaceholderView) findViewById(R.id.split_placeholder);
        this.mSplitPlaceholderView = splitPlaceholderView;
        splitPlaceholderView.setAlpha(0.0f);
    }

    public void setIcon(Drawable drawable) {
        this.mSplitPlaceholderView.setIcon(drawable, this.mSplitHolderSize);
    }

    public void update(RectF rectF, float f4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        float f5 = rectF.left - this.mStartingPosition.left;
        float f6 = rectF.top - marginLayoutParams.topMargin;
        float width = rectF.width() / marginLayoutParams.width;
        float height = rectF.height() / marginLayoutParams.height;
        this.mFullscreenParams.updateParams(rectF, f4, width, height);
        setTranslationX(f5);
        setTranslationY(f6);
        setScaleX(width);
        setScaleY(height);
        this.mSplitPlaceholderView.invalidate();
        this.mThumbnailView.invalidate();
        this.mOrientationHandler.setPrimaryScale(this.mSplitPlaceholderView.getIconView(), 1.0f / width);
        this.mOrientationHandler.setSecondaryScale(this.mSplitPlaceholderView.getIconView(), 1.0f / height);
    }

    public void updateInitialPositionForView(View view) {
        if (view.getContext() instanceof TaskbarActivityContext) {
            view.getBoundsOnScreen(this.mTmpRect);
            this.mStartingPosition.set(this.mTmpRect);
            int[] locationOnScreen = this.mActivity.getDragLayer().getLocationOnScreen();
            this.mStartingPosition.offset(-locationOnScreen[0], -locationOnScreen[1]);
        } else {
            Utilities.getBoundsForViewInDragLayer(this.mActivity.getDragLayer(), view, new Rect(0, 0, view.getWidth(), view.getHeight()), false, this.mStartingPosition);
        }
        InsettableFrameLayout.LayoutParams layoutParams = new BaseDragLayer.LayoutParams(Math.round(this.mStartingPosition.width()), Math.round(this.mStartingPosition.height()));
        initPosition(this.mStartingPosition, layoutParams);
        setLayoutParams(layoutParams);
    }

    public void updateOrientationHandler(PagedOrientationHandler pagedOrientationHandler) {
        this.mOrientationHandler = pagedOrientationHandler;
        this.mSplitPlaceholderView.getIconView().setRotation(this.mOrientationHandler.getDegreesRotated());
    }

    public FloatingTaskView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FloatingTaskView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mTmpRect = new Rect();
        this.mActivity = (StatefulActivity) BaseActivity.fromContext(context);
        this.mIsRtl = Utilities.isRtl(getResources());
        this.mFullscreenParams = new FullscreenDrawParams(context);
        this.mSplitHolderSize = context.getResources().getDimensionPixelSize(R.dimen.split_placeholder_icon_size);
    }
}
