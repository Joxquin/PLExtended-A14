package com.android.quickstep.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.Property;
import android.view.View;
import android.widget.ImageView;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.recents.utilities.PreviewPositionHelper;
/* loaded from: classes.dex */
public class TaskThumbnailView extends View {
    private final BaseActivity mActivity;
    private final Paint mBackgroundPaint;
    protected BitmapShader mBitmapShader;
    private final Paint mClearPaint;
    private float mDimAlpha;
    private final int mDimColor;
    private final Paint mDimmingPaintAfterClearing;
    private TaskView.FullscreenDrawParams mFullscreenParams;
    private TaskOverlayFactory.TaskOverlay mOverlay;
    private boolean mOverlayEnabled;
    private final Paint mPaint;
    private final PreviewPositionHelper mPreviewPositionHelper;
    private final Rect mPreviewRect;
    private boolean mShowSplashForSplitSelection;
    private int mSplashAlpha;
    private final Paint mSplashBackgroundPaint;
    private ImageView mSplashView;
    private Drawable mSplashViewDrawable;
    private float mSplitSelectTranslateX;
    private float mSplitSelectTranslateY;
    private Task mTask;
    private ThumbnailData mThumbnailData;
    private static final MainThreadInitializedObject TEMP_PARAMS = new MainThreadInitializedObject(new P());
    public static final Property DIM_ALPHA = new FloatProperty("dimAlpha") { // from class: com.android.quickstep.views.TaskThumbnailView.1
        @Override // android.util.Property
        public Float get(TaskThumbnailView taskThumbnailView) {
            return Float.valueOf(taskThumbnailView.mDimAlpha);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskThumbnailView taskThumbnailView, float f4) {
            taskThumbnailView.setDimAlpha(f4);
        }
    };
    public static final Property SPLASH_ALPHA = new FloatProperty("splashAlpha") { // from class: com.android.quickstep.views.TaskThumbnailView.2
        @Override // android.util.Property
        public Float get(TaskThumbnailView taskThumbnailView) {
            return Float.valueOf(taskThumbnailView.mSplashAlpha / 255.0f);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskThumbnailView taskThumbnailView, float f4) {
            taskThumbnailView.setSplashAlpha(f4);
        }
    };
    public static final Property SPLIT_SELECT_TRANSLATE_X = new FloatProperty("splitSelectTranslateX") { // from class: com.android.quickstep.views.TaskThumbnailView.3
        @Override // android.util.Property
        public Float get(TaskThumbnailView taskThumbnailView) {
            return Float.valueOf(taskThumbnailView.mSplitSelectTranslateX);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskThumbnailView taskThumbnailView, float f4) {
            taskThumbnailView.applySplitSelectTranslateX(f4);
        }
    };
    public static final Property SPLIT_SELECT_TRANSLATE_Y = new FloatProperty("splitSelectTranslateY") { // from class: com.android.quickstep.views.TaskThumbnailView.4
        @Override // android.util.Property
        public Float get(TaskThumbnailView taskThumbnailView) {
            return Float.valueOf(taskThumbnailView.mSplitSelectTranslateY);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskThumbnailView taskThumbnailView, float f4) {
            taskThumbnailView.applySplitSelectTranslateY(f4);
        }
    };

    public TaskThumbnailView(Context context) {
        this(context, null);
    }

    private void applyTranslateX() {
        setTranslationX(this.mSplitSelectTranslateX);
    }

    private void applyTranslateY() {
        setTranslationY(this.mSplitSelectTranslateY);
    }

    private ColorFilter getColorFilter(float f4) {
        return Utilities.makeColorTintingColorFilter(f4, this.mDimColor);
    }

    private boolean isThumbnailAspectRatioDifferentFromThumbnailData() {
        ThumbnailData thumbnailData = this.mThumbnailData;
        if (thumbnailData == null || thumbnailData.thumbnail == null) {
            return false;
        }
        return com.android.systemui.shared.recents.utilities.Utilities.isRelativePercentDifferenceGreaterThan(getWidth() / getHeight(), this.mThumbnailData.thumbnail.getWidth() / this.mThumbnailData.thumbnail.getHeight(), 0.1f);
    }

    private boolean isThumbnailRotationDifferentFromTask() {
        RecentsView recentsView = getTaskView().getRecentsView();
        if (recentsView == null || this.mThumbnailData == null) {
            return false;
        }
        return recentsView.getPagedOrientationHandler() == PagedOrientationHandler.PORTRAIT ? (recentsView.getPagedViewOrientedState().getRecentsActivityRotation() - this.mThumbnailData.rotation) % 2 != 0 : recentsView.getPagedOrientationHandler().getRotation() != this.mThumbnailData.rotation;
    }

    private void refreshOverlay() {
        if (this.mOverlayEnabled) {
            getTaskOverlay().initOverlay(this.mTask, this.mThumbnailData, this.mPreviewPositionHelper.getMatrix(), this.mPreviewPositionHelper.isOrientationChanged());
        } else {
            getTaskOverlay().reset();
        }
    }

    private void updateSplashView(Drawable drawable) {
        if (drawable == null || drawable.getConstantState() == null) {
            this.mSplashViewDrawable = null;
            this.mSplashView = null;
            return;
        }
        Drawable mutate = drawable.getConstantState().newDrawable().mutate();
        this.mSplashViewDrawable = mutate;
        mutate.setAlpha(this.mSplashAlpha);
        ImageView imageView = this.mSplashView;
        if (imageView == null) {
            imageView = new ImageView(getContext());
        }
        imageView.setImageDrawable(this.mSplashViewDrawable);
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        Matrix matrix = new Matrix();
        float measuredWidth = getMeasuredWidth();
        float f4 = measuredWidth / 2.0f;
        float measuredHeight = getMeasuredHeight();
        float f5 = measuredHeight / 2.0f;
        float intrinsicWidth = (measuredWidth - this.mSplashViewDrawable.getIntrinsicWidth()) / 2.0f;
        float intrinsicHeight = (measuredHeight - this.mSplashViewDrawable.getIntrinsicHeight()) / 2.0f;
        float nonGridScale = (getTaskView() == null ? 1.0f : 1.0f / getTaskView().getNonGridScale()) * ((getTaskView() == null || getTaskView().getRecentsView() == null) ? 1.0f : 1.0f / getTaskView().getRecentsView().getMaxScaleForFullScreen());
        matrix.setTranslate(intrinsicWidth, intrinsicHeight);
        matrix.postScale((1.0f / getScaleX()) * nonGridScale, (1.0f / getScaleY()) * nonGridScale, f4, f5);
        imageView.setImageMatrix(matrix);
        this.mSplashView = imageView;
    }

    private void updateThumbnailMatrix() {
        ThumbnailData thumbnailData;
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        this.mPreviewPositionHelper.setOrientationChanged(false);
        if (this.mBitmapShader != null && (thumbnailData = this.mThumbnailData) != null) {
            this.mPreviewRect.set(0, 0, thumbnailData.thumbnail.getWidth(), this.mThumbnailData.thumbnail.getHeight());
            this.mPreviewPositionHelper.updateThumbnailMatrix(this.mPreviewRect, this.mThumbnailData, getMeasuredWidth(), getMeasuredHeight(), deviceProfile.widthPx, deviceProfile.heightPx, deviceProfile.taskbarHeight, deviceProfile.isTablet, getTaskView().getRecentsView().getPagedViewOrientedState().getRecentsActivityRotation(), getLayoutDirection() == 1);
            this.mBitmapShader.setLocalMatrix(this.mPreviewPositionHelper.getMatrix());
            this.mPaint.setShader(this.mBitmapShader);
        }
        getTaskView().updateCurrentFullscreenParams(this.mPreviewPositionHelper);
        invalidate();
    }

    private void updateThumbnailPaintFilter() {
        ColorFilter colorFilter = getColorFilter(this.mDimAlpha);
        this.mBackgroundPaint.setColorFilter(colorFilter);
        int i4 = (int) (this.mDimAlpha * 255.0f);
        this.mDimmingPaintAfterClearing.setAlpha(i4);
        if (this.mBitmapShader != null) {
            this.mPaint.setColorFilter(colorFilter);
        } else {
            this.mPaint.setColorFilter(null);
            this.mPaint.setColor(E.a.d(-16777216, this.mDimColor, i4));
        }
        invalidate();
    }

    public void applySplitSelectTranslateX(float f4) {
        this.mSplitSelectTranslateX = f4;
        applyTranslateX();
    }

    public void applySplitSelectTranslateY(float f4) {
        this.mSplitSelectTranslateY = f4;
        applyTranslateY();
    }

    public void bind(Task task) {
        getTaskOverlay().reset();
        this.mTask = task;
        int i4 = task != null ? (-16777216) | task.colorBackground : -16777216;
        this.mPaint.setColor(i4);
        this.mBackgroundPaint.setColor(i4);
        this.mSplashBackgroundPaint.setColor(i4);
        updateSplashView(this.mTask.icon);
    }

    public void drawOnCanvas(Canvas canvas, float f4, float f5, float f6, float f7, float f8) {
        float f9;
        float f10;
        if (this.mTask != null && getTaskView().isRunningTask() && !getTaskView().showScreenshot()) {
            canvas.drawRoundRect(f4, f5, f6, f7, f8, f8, this.mClearPaint);
            canvas.drawRoundRect(f4, f5, f6, f7, f8, f8, this.mDimmingPaintAfterClearing);
            return;
        }
        float f11 = f5 + 1.0f;
        canvas.drawRoundRect(f4, f11, f6, f7 - 1.0f, f8, f8, this.mBackgroundPaint);
        Task task = this.mTask;
        if (task == null || task.isLocked || this.mBitmapShader == null || this.mThumbnailData == null) {
            return;
        }
        canvas.drawRoundRect(f4, f5, f6, f7, f8, f8, this.mPaint);
        if (shouldShowSplashView()) {
            if (this.mShowSplashForSplitSelection) {
                f9 = f8 / getScaleX();
                f10 = f8 / getScaleY();
            } else {
                f9 = f8;
                f10 = f9;
            }
            canvas.drawRoundRect(f4, f5, f6 + 1.0f, f7 + 1.0f, f9, f10, this.mSplashBackgroundPaint);
            ImageView imageView = this.mSplashView;
            if (imageView != null) {
                imageView.layout((int) f4, (int) f11, (int) f6, ((int) f7) - 1);
                this.mSplashView.draw(canvas);
            }
        }
    }

    public float getDimAlpha() {
        return this.mDimAlpha;
    }

    public PreviewPositionHelper getPreviewPositionHelper() {
        return this.mPreviewPositionHelper;
    }

    public Insets getScaledInsets() {
        if (this.mThumbnailData == null) {
            return Insets.NONE;
        }
        RectF rectF = new RectF(0.0f, 0.0f, this.mThumbnailData.thumbnail.getWidth(), this.mThumbnailData.thumbnail.getHeight());
        RectF rectF2 = new RectF(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
        Matrix matrix = new Matrix();
        this.mPreviewPositionHelper.getMatrix().invert(matrix);
        RectF rectF3 = new RectF();
        matrix.mapRect(rectF3, rectF2);
        return Insets.of(0, 0, 0, this.mActivity.getDeviceProfile().isTablet ? Math.round(rectF.bottom - rectF3.bottom) : 0);
    }

    public int getSysUiStatusNavFlags() {
        ThumbnailData thumbnailData = this.mThumbnailData;
        if (thumbnailData != null) {
            int i4 = thumbnailData.appearance;
            return ((i4 & 16) != 0 ? 1 : 2) | 0 | ((i4 & 8) != 0 ? 4 : 8);
        }
        return 0;
    }

    public TaskOverlayFactory.TaskOverlay getTaskOverlay() {
        if (this.mOverlay == null) {
            this.mOverlay = getTaskView().getRecentsView().getTaskOverlayFactory().createOverlay(this);
        }
        return this.mOverlay;
    }

    public TaskView getTaskView() {
        return (TaskView) getParent();
    }

    public Bitmap getThumbnail() {
        ThumbnailData thumbnailData = this.mThumbnailData;
        if (thumbnailData == null) {
            return null;
        }
        return thumbnailData.thumbnail;
    }

    public boolean isRealSnapshot() {
        ThumbnailData thumbnailData = this.mThumbnailData;
        return (thumbnailData == null || !thumbnailData.isRealSnapshot || this.mTask.isLocked) ? false : true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        drawOnCanvas(canvas, 0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), this.mFullscreenParams.mCurrentDrawnCornerRadius);
        canvas.restore();
    }

    @Override // android.view.View
    public void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        updateSplashView(this.mSplashViewDrawable);
    }

    @Override // android.view.View
    public void onSizeChanged(int i4, int i5, int i6, int i7) {
        super.onSizeChanged(i4, i5, i6, i7);
        updateThumbnailMatrix();
        refreshOverlay();
    }

    public void refresh() {
        refresh(false);
    }

    public void refreshSplashView() {
        Task task = this.mTask;
        if (task != null) {
            updateSplashView(task.icon);
            invalidate();
        }
    }

    public void resetViewTransforms() {
        this.mSplitSelectTranslateX = 0.0f;
        this.mSplitSelectTranslateY = 0.0f;
    }

    public void setDimAlpha(float f4) {
        this.mDimAlpha = f4;
        updateThumbnailPaintFilter();
    }

    public void setFullscreenParams(TaskView.FullscreenDrawParams fullscreenDrawParams) {
        this.mFullscreenParams = fullscreenDrawParams;
        getTaskOverlay().setFullscreenParams(fullscreenDrawParams);
        invalidate();
    }

    public void setOverlayEnabled(boolean z4) {
        if (this.mOverlayEnabled != z4) {
            this.mOverlayEnabled = z4;
            refreshOverlay();
        }
    }

    public void setShowSplashForSplitSelection(boolean z4) {
        this.mShowSplashForSplitSelection = z4;
    }

    public void setSplashAlpha(float f4) {
        int boundToRange = (int) (Utilities.boundToRange(f4, 0.0f, 1.0f) * 255.0f);
        this.mSplashAlpha = boundToRange;
        Drawable drawable = this.mSplashViewDrawable;
        if (drawable != null) {
            drawable.setAlpha(boundToRange);
        }
        this.mSplashBackgroundPaint.setAlpha(this.mSplashAlpha);
        invalidate();
    }

    public void setThumbnail(Task task, ThumbnailData thumbnailData, boolean z4) {
        this.mTask = task;
        boolean z5 = true;
        boolean z6 = this.mThumbnailData == null;
        this.mThumbnailData = (thumbnailData == null || thumbnailData.thumbnail == null) ? null : null;
        if (task != null) {
            updateSplashView(task.icon);
        }
        if (z4) {
            if (!z6 || this.mThumbnailData == null) {
                z5 = false;
            }
            refresh(z5);
        }
    }

    public boolean shouldShowSplashView() {
        return isThumbnailAspectRatioDifferentFromThumbnailData() || isThumbnailRotationDifferentFromTask() || this.mShowSplashForSplitSelection;
    }

    public TaskThumbnailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void refresh(boolean z4) {
        Bitmap bitmap;
        ThumbnailData thumbnailData = this.mThumbnailData;
        if (thumbnailData != null && (bitmap = thumbnailData.thumbnail) != null) {
            bitmap.prepareToDraw();
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
            this.mBitmapShader = bitmapShader;
            this.mPaint.setShader(bitmapShader);
            updateThumbnailMatrix();
            if (z4) {
                refreshOverlay();
            }
        } else {
            this.mBitmapShader = null;
            this.mThumbnailData = null;
            this.mPaint.setShader(null);
            getTaskOverlay().reset();
        }
        updateThumbnailPaintFilter();
    }

    public TaskThumbnailView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Paint paint = new Paint(1);
        this.mPaint = paint;
        Paint paint2 = new Paint(1);
        this.mBackgroundPaint = paint2;
        Paint paint3 = new Paint(1);
        this.mSplashBackgroundPaint = paint3;
        Paint paint4 = new Paint();
        this.mClearPaint = paint4;
        Paint paint5 = new Paint();
        this.mDimmingPaintAfterClearing = paint5;
        this.mPreviewRect = new Rect();
        this.mPreviewPositionHelper = new PreviewPositionHelper();
        this.mDimAlpha = 0.0f;
        this.mSplashAlpha = 0;
        paint.setFilterBitmap(true);
        paint2.setColor(-1);
        paint3.setColor(-1);
        paint4.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.mActivity = BaseActivity.fromContext(context);
        this.mFullscreenParams = (TaskView.FullscreenDrawParams) TEMP_PARAMS.get(context);
        int foregroundScrimDimColor = RecentsView.getForegroundScrimDimColor(context);
        this.mDimColor = foregroundScrimDimColor;
        paint5.setColor(foregroundScrimDimColor);
    }

    public void setThumbnail(Task task, ThumbnailData thumbnailData) {
        setThumbnail(task, thumbnailData, true);
    }
}
