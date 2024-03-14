package com.android.quickstep.util;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.FloatProperty;
import android.view.RemoteAnimationTarget;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.SplitConfigurationOptions$SplitBounds;
import com.android.launcher3.util.TraceHelper;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.TaskAnimationManager;
import com.android.quickstep.util.SurfaceTransaction;
import com.android.quickstep.util.TransformParams;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.recents.utilities.PreviewPositionHelper;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class TaskViewSimulator implements TransformParams.BuilderProxy {
    private static final boolean DEBUG = false;
    private static final String TAG = "TaskViewSimulator";
    private final Context mContext;
    private final TaskView.FullscreenDrawParams mCurrentFullscreenParams;
    private DeviceProfile mDp;
    private boolean mIsDesktopTask;
    private boolean mIsGridTask;
    private final boolean mIsRecentsRtl;
    private RecentsOrientedState mOrientationState;
    private int mOrientationStateId;
    private final BaseActivityInterface mSizeStrategy;
    private SplitConfigurationOptions$SplitBounds mSplitBounds;
    private int mTaskRectTranslationX;
    private int mTaskRectTranslationY;
    private final Rect mTmpCropRect = new Rect();
    private final RectF mTempRectF = new RectF();
    private final float[] mTempPoint = new float[2];
    private final Rect mTaskRect = new Rect();
    private final PointF mPivot = new PointF();
    private int mStagePosition = -1;
    private final Matrix mMatrix = new Matrix();
    private final Matrix mMatrixTmp = new Matrix();
    private final Rect mThumbnailPosition = new Rect();
    private final ThumbnailData mThumbnailData = new ThumbnailData();
    private final PreviewPositionHelper mPositionHelper = new PreviewPositionHelper();
    private final Matrix mInversePositionMatrix = new Matrix();
    public final AnimatedFloat taskPrimaryTranslation = new AnimatedFloat();
    public final AnimatedFloat taskSecondaryTranslation = new AnimatedFloat();
    public final AnimatedFloat recentsViewScale = new AnimatedFloat();
    public final AnimatedFloat fullScreenProgress = new AnimatedFloat();
    public final AnimatedFloat recentsViewSecondaryTranslation = new AnimatedFloat();
    public final AnimatedFloat recentsViewPrimaryTranslation = new AnimatedFloat();
    public final AnimatedFloat recentsViewScroll = new AnimatedFloat();
    private boolean mLayoutValid = false;
    private Boolean mDrawsBelowRecents = null;

    public TaskViewSimulator(final Context context, final BaseActivityInterface baseActivityInterface) {
        this.mContext = context;
        this.mSizeStrategy = baseActivityInterface;
        RecentsOrientedState recentsOrientedState = (RecentsOrientedState) TraceHelper.allowIpcs("TaskViewSimulator.init", new Supplier() { // from class: com.android.quickstep.util.b0
            @Override // java.util.function.Supplier
            public final Object get() {
                RecentsOrientedState lambda$new$1;
                lambda$new$1 = TaskViewSimulator.lambda$new$1(context, baseActivityInterface);
                return lambda$new$1;
            }
        });
        this.mOrientationState = recentsOrientedState;
        recentsOrientedState.setGestureActive(true);
        this.mCurrentFullscreenParams = new TaskView.FullscreenDrawParams(context);
        this.mOrientationStateId = this.mOrientationState.getStateId();
        this.mIsRecentsRtl = this.mOrientationState.getOrientationHandler().getRecentsRtlSetting(context.getResources());
    }

    public static H1.e convertSplitBounds(SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds) {
        return new H1.e(splitConfigurationOptions$SplitBounds.leftTopBounds, splitConfigurationOptions$SplitBounds.rightBottomBounds, splitConfigurationOptions$SplitBounds.leftTopTaskId, splitConfigurationOptions$SplitBounds.rightBottomTaskId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(int i4) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ RecentsOrientedState lambda$new$1(Context context, BaseActivityInterface baseActivityInterface) {
        return new RecentsOrientedState(context, baseActivityInterface, new c0());
    }

    public void addAppToOverviewAnim(PendingAnimation pendingAnimation, TimeInterpolator timeInterpolator) {
        AnimatedFloat animatedFloat = this.fullScreenProgress;
        FloatProperty floatProperty = AnimatedFloat.VALUE;
        pendingAnimation.addFloat(animatedFloat, floatProperty, 1.0f, 0.0f, timeInterpolator);
        pendingAnimation.addFloat(this.recentsViewScale, floatProperty, getFullScreenScale(), 1.0f, timeInterpolator);
    }

    public void addOverviewToAppAnim(PendingAnimation pendingAnimation, TimeInterpolator timeInterpolator) {
        AnimatedFloat animatedFloat = this.fullScreenProgress;
        FloatProperty floatProperty = AnimatedFloat.VALUE;
        pendingAnimation.addFloat(animatedFloat, floatProperty, 0.0f, 1.0f, timeInterpolator);
        pendingAnimation.addFloat(this.recentsViewScale, floatProperty, 1.0f, getFullScreenScale(), timeInterpolator);
    }

    public void apply(TransformParams transformParams) {
        if (this.mDp == null || this.mThumbnailPosition.isEmpty()) {
            return;
        }
        if (!this.mLayoutValid || this.mOrientationStateId != this.mOrientationState.getStateId()) {
            this.mLayoutValid = true;
            this.mOrientationStateId = this.mOrientationState.getStateId();
            getFullScreenScale();
            if (TaskAnimationManager.SHELL_TRANSITIONS_ROTATION) {
                this.mThumbnailData.rotation = this.mOrientationState.getTouchRotation();
            } else {
                this.mThumbnailData.rotation = this.mOrientationState.getDisplayRotation();
            }
            PreviewPositionHelper previewPositionHelper = this.mPositionHelper;
            Rect rect = this.mThumbnailPosition;
            ThumbnailData thumbnailData = this.mThumbnailData;
            int width = this.mTaskRect.width();
            int height = this.mTaskRect.height();
            DeviceProfile deviceProfile = this.mDp;
            previewPositionHelper.updateThumbnailMatrix(rect, thumbnailData, width, height, deviceProfile.widthPx, deviceProfile.heightPx, deviceProfile.taskbarHeight, deviceProfile.isTablet, this.mOrientationState.getRecentsActivityRotation(), !this.mIsRecentsRtl);
            this.mPositionHelper.getMatrix().invert(this.mInversePositionMatrix);
        }
        float boundToRange = Utilities.boundToRange(this.fullScreenProgress.value, 0.0f, 1.0f);
        this.mCurrentFullscreenParams.setProgress(boundToRange, this.recentsViewScale.value, 1.0f, this.mTaskRect.width(), this.mDp, this.mPositionHelper);
        this.mMatrix.set(this.mPositionHelper.getMatrix());
        Matrix matrix = this.mMatrix;
        Rect rect2 = this.mTaskRect;
        matrix.postTranslate(rect2.left, rect2.top);
        PagedOrientationHandler orientationHandler = this.mOrientationState.getOrientationHandler();
        Matrix matrix2 = this.mMatrix;
        com.android.launcher3.touch.k kVar = PagedOrientationHandler.MATRIX_POST_TRANSLATE;
        orientationHandler.setPrimary(matrix2, kVar, this.taskPrimaryTranslation.value);
        this.mOrientationState.getOrientationHandler().setSecondary(this.mMatrix, kVar, this.taskSecondaryTranslation.value);
        this.mOrientationState.getOrientationHandler().setPrimary(this.mMatrix, kVar, this.recentsViewScroll.value);
        Matrix matrix3 = this.mMatrix;
        float f4 = this.recentsViewScale.value;
        PointF pointF = this.mPivot;
        matrix3.postScale(f4, f4, pointF.x, pointF.y);
        this.mOrientationState.getOrientationHandler().setSecondary(this.mMatrix, kVar, this.recentsViewSecondaryTranslation.value);
        this.mOrientationState.getOrientationHandler().setPrimary(this.mMatrix, kVar, this.recentsViewPrimaryTranslation.value);
        applyWindowToHomeRotation(this.mMatrix);
        this.mTempRectF.set(0.0f, 0.0f, this.mTaskRect.width(), this.mTaskRect.height());
        this.mInversePositionMatrix.mapRect(this.mTempRectF);
        this.mTempRectF.roundOut(this.mTmpCropRect);
        transformParams.setProgress(1.0f - boundToRange);
        transformParams.applySurfaceParams(transformParams.createSurfaceParams(this));
    }

    public void applyWindowToHomeRotation(Matrix matrix) {
        DeviceProfile deviceProfile = this.mDp;
        matrix.postTranslate(deviceProfile.windowX, deviceProfile.windowY);
        int displayRotation = this.mOrientationState.getDisplayRotation() - this.mOrientationState.getRecentsActivityRotation();
        if (displayRotation < 0) {
            displayRotation += 4;
        }
        DeviceProfile deviceProfile2 = this.mDp;
        RecentsOrientedState.postDisplayRotation(displayRotation, deviceProfile2.widthPx, deviceProfile2.heightPx, matrix);
    }

    public float getCurrentCornerRadius() {
        float f4 = this.mCurrentFullscreenParams.mCurrentDrawnCornerRadius;
        float[] fArr = this.mTempPoint;
        fArr[0] = f4;
        fArr[1] = 0.0f;
        this.mInversePositionMatrix.mapVectors(fArr);
        return Math.max(Math.abs(this.mTempPoint[0]), Math.abs(this.mTempPoint[1]));
    }

    public RectF getCurrentCropRect() {
        this.mTempRectF.set(0.0f, 0.0f, this.mTaskRect.width(), this.mTaskRect.height());
        this.mInversePositionMatrix.mapRect(this.mTempRectF);
        return this.mTempRectF;
    }

    public Matrix getCurrentMatrix() {
        return this.mMatrix;
    }

    public RectF getCurrentRect() {
        RectF currentCropRect = getCurrentCropRect();
        this.mMatrixTmp.set(this.mMatrix);
        int displayRotation = this.mOrientationState.getDisplayRotation();
        DeviceProfile deviceProfile = this.mDp;
        RecentsOrientedState.preDisplayRotation(displayRotation, deviceProfile.widthPx, deviceProfile.heightPx, this.mMatrixTmp);
        this.mMatrixTmp.mapRect(currentCropRect);
        return currentCropRect;
    }

    public float getFullScreenScale() {
        Rect rect;
        DeviceProfile deviceProfile = this.mDp;
        if (deviceProfile == null) {
            return 1.0f;
        }
        if (this.mIsDesktopTask) {
            this.mTaskRect.set(this.mThumbnailPosition);
            this.mPivot.set(this.mTaskRect.centerX(), this.mTaskRect.centerY());
            return 1.0f;
        }
        if (this.mIsGridTask) {
            this.mSizeStrategy.calculateGridTaskSize(this.mContext, deviceProfile, this.mTaskRect, this.mOrientationState.getOrientationHandler());
        } else {
            this.mSizeStrategy.calculateTaskSize(this.mContext, deviceProfile, this.mTaskRect, this.mOrientationState.getOrientationHandler());
        }
        if (this.mSplitBounds != null) {
            rect = new Rect(this.mTaskRect);
            this.mOrientationState.getOrientationHandler().setSplitTaskSwipeRect(this.mDp, this.mTaskRect, this.mSplitBounds, this.mStagePosition);
            this.mTaskRect.offset(this.mTaskRectTranslationX, this.mTaskRectTranslationY);
        } else {
            rect = this.mTaskRect;
        }
        rect.offset(this.mTaskRectTranslationX, this.mTaskRectTranslationY);
        return this.mOrientationState.getFullScreenScaleAndPivot(rect, this.mDp, this.mPivot);
    }

    public RecentsOrientedState getOrientationState() {
        return this.mOrientationState;
    }

    @Override // com.android.quickstep.util.TransformParams.BuilderProxy
    public void onBuildTargetParams(SurfaceTransaction.SurfaceProperties surfaceProperties, RemoteAnimationTarget remoteAnimationTarget, TransformParams transformParams) {
        surfaceProperties.setMatrix(this.mMatrix).setWindowCrop(this.mTmpCropRect).setCornerRadius(getCurrentCornerRadius());
        Boolean bool = this.mDrawsBelowRecents;
        if (bool != null) {
            surfaceProperties.setLayer(bool.booleanValue() ? remoteAnimationTarget.prefixOrderIndex - 2147483648 : TaskAnimationManager.ENABLE_SHELL_TRANSITIONS ? Integer.MAX_VALUE : 0);
        }
    }

    public void setDp(DeviceProfile deviceProfile) {
        this.mDp = deviceProfile;
        this.mLayoutValid = false;
        this.mOrientationState.setDeviceProfile(deviceProfile);
    }

    public void setDrawsBelowRecents(boolean z4) {
        this.mDrawsBelowRecents = Boolean.valueOf(z4);
    }

    public void setIsDesktopTask(boolean z4) {
        this.mIsDesktopTask = z4;
    }

    public void setIsGridTask(boolean z4) {
        this.mIsGridTask = z4;
    }

    public void setOrientationState(RecentsOrientedState recentsOrientedState) {
        this.mOrientationState = recentsOrientedState;
        this.mLayoutValid = false;
    }

    public void setPreview(RemoteAnimationTarget remoteAnimationTarget) {
        Rect rect = remoteAnimationTarget.startBounds;
        if (rect == null) {
            rect = remoteAnimationTarget.screenSpaceBounds;
        }
        setPreviewBounds(rect, remoteAnimationTarget.contentInsets);
    }

    public void setPreviewBounds(Rect rect, Rect rect2) {
        this.mThumbnailData.insets.set(rect2);
        this.mThumbnailData.windowingMode = 1;
        this.mThumbnailPosition.set(rect);
        this.mLayoutValid = false;
    }

    public void setScroll(float f4) {
        this.recentsViewScroll.value = f4;
    }

    public void setTaskRectTranslation(int i4, int i5) {
        this.mTaskRectTranslationX = i4;
        this.mTaskRectTranslationY = i5;
    }

    public void setPreview(RemoteAnimationTarget remoteAnimationTarget, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds) {
        setPreview(remoteAnimationTarget);
        this.mSplitBounds = splitConfigurationOptions$SplitBounds;
        if (splitConfigurationOptions$SplitBounds == null) {
            this.mStagePosition = -1;
            return;
        }
        this.mStagePosition = !this.mThumbnailPosition.equals(splitConfigurationOptions$SplitBounds.leftTopBounds);
        this.mPositionHelper.setSplitBounds(convertSplitBounds(this.mSplitBounds), this.mStagePosition);
    }
}
