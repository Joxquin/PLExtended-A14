package com.android.quickstep.util;

import android.animation.Animator;
import android.animation.RectEvaluator;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import android.view.SurfaceControl;
import android.view.View;
import android.window.PictureInPictureSurfaceTransaction;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.icons.IconProvider;
import com.android.quickstep.TaskAnimationManager;
import com.android.quickstep.util.RectFSpringAnim;
import com.android.systemui.shared.pip.PipSurfaceTransactionHelper;
import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
/* loaded from: classes.dex */
public class SwipePipToHomeAnimator extends RectFSpringAnim {
    private static final float END_PROGRESS = 1.0f;
    private static final String TAG = "SwipePipToHomeAnimator";
    private final ActivityInfo mActivityInfo;
    private final Rect mAppBounds;
    private final Rect mCurrentBounds;
    private final RectF mCurrentBoundsF;
    private final Rect mDestinationBounds;
    private final Rect mDestinationBoundsTransformed;
    private final int mFromRotation;
    private boolean mHasAnimationEnded;
    private final Matrix mHomeToWindowPositionMap;
    private final RectEvaluator mInsetsEvaluator;
    private final SurfaceControl mLeash;
    private com.android.wm.shell.pip.d mPipContentOverlay;
    private final Rect mSourceHintRectInsets;
    private final Rect mSourceInsets;
    private final Rect mSourceRectHint;
    private final Rect mStartBounds;
    private final PipSurfaceTransactionHelper mSurfaceTransactionHelper;
    private final int mTaskId;

    /* loaded from: classes.dex */
    public class Builder {
        private ActivityInfo mActivityInfo;
        private Rect mAppBounds;
        private int mAppIconSizePx;
        private View mAttachedView;
        private Context mContext;
        private int mCornerRadius;
        private Rect mDestinationBounds;
        private Rect mDisplayCutoutInsets;
        private Matrix mHomeToWindowPositionMap;
        private SurfaceControl mLeash;
        private int mShadowRadius;
        private Rect mSourceRectHint;
        private RectF mStartBounds;
        private int mTaskId;
        private int mFromRotation = 0;
        private final Rect mDestinationBoundsTransformed = new Rect();

        public SwipePipToHomeAnimator build() {
            Rect rect;
            if (this.mDestinationBoundsTransformed.isEmpty()) {
                this.mDestinationBoundsTransformed.set(this.mDestinationBounds);
            }
            Rect rect2 = this.mSourceRectHint;
            if (rect2 != null && (rect = this.mDisplayCutoutInsets) != null) {
                int i4 = this.mFromRotation;
                if (i4 == 1) {
                    rect2.offset(rect.left, rect.top);
                } else if (i4 == 3) {
                    this.mAppBounds.inset(rect);
                }
            }
            return new SwipePipToHomeAnimator(this.mContext, this.mTaskId, this.mActivityInfo, this.mAppIconSizePx, this.mLeash, this.mSourceRectHint, this.mAppBounds, this.mHomeToWindowPositionMap, this.mStartBounds, this.mDestinationBounds, this.mFromRotation, this.mDestinationBoundsTransformed, this.mCornerRadius, this.mShadowRadius, this.mAttachedView, 0);
        }

        public Builder setActivityInfo(ActivityInfo activityInfo) {
            this.mActivityInfo = activityInfo;
            return this;
        }

        public Builder setAppBounds(Rect rect) {
            this.mAppBounds = new Rect(rect);
            return this;
        }

        public Builder setAppIconSizePx(int i4) {
            this.mAppIconSizePx = i4;
            return this;
        }

        public Builder setAttachedView(View view) {
            this.mAttachedView = view;
            return this;
        }

        public Builder setContext(Context context) {
            this.mContext = context;
            return this;
        }

        public Builder setCornerRadius(int i4) {
            this.mCornerRadius = i4;
            return this;
        }

        public Builder setDestinationBounds(Rect rect) {
            this.mDestinationBounds = new Rect(rect);
            return this;
        }

        public Builder setFromRotation(TaskViewSimulator taskViewSimulator, int i4, Rect rect) {
            if (i4 != 1 && i4 != 3) {
                String str = SwipePipToHomeAnimator.TAG;
                Log.wtf(str, "Not a supported rotation, rotation=" + i4);
                return this;
            }
            Matrix matrix = new Matrix();
            taskViewSimulator.applyWindowToHomeRotation(matrix);
            RectF rectF = new RectF(this.mDestinationBounds);
            matrix.mapRect(rectF, new RectF(this.mDestinationBounds));
            rectF.round(this.mDestinationBoundsTransformed);
            this.mFromRotation = i4;
            if (rect != null) {
                this.mDisplayCutoutInsets = new Rect(rect);
            }
            return this;
        }

        public Builder setHomeToWindowPositionMap(Matrix matrix) {
            this.mHomeToWindowPositionMap = new Matrix(matrix);
            return this;
        }

        public Builder setLeash(SurfaceControl surfaceControl) {
            this.mLeash = surfaceControl;
            return this;
        }

        public Builder setShadowRadius(int i4) {
            this.mShadowRadius = i4;
            return this;
        }

        public Builder setSourceRectHint(Rect rect) {
            this.mSourceRectHint = new Rect(rect);
            return this;
        }

        public Builder setStartBounds(RectF rectF) {
            this.mStartBounds = new RectF(rectF);
            return this;
        }

        public Builder setTaskId(int i4) {
            this.mTaskId = i4;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class RotatedPosition {
        private final float degree;
        private final float positionX;
        private final float positionY;

        public /* synthetic */ RotatedPosition(float f4, float f5, float f6, int i4) {
            this(f4, f5, f6);
        }

        private RotatedPosition(float f4, float f5, float f6) {
            this.degree = f4;
            this.positionX = f5;
            this.positionY = f6;
        }
    }

    public /* synthetic */ SwipePipToHomeAnimator(Context context, int i4, ActivityInfo activityInfo, int i5, SurfaceControl surfaceControl, Rect rect, Rect rect2, Matrix matrix, RectF rectF, Rect rect3, int i6, Rect rect4, int i7, int i8, View view, int i9) {
        this(context, i4, activityInfo, i5, surfaceControl, rect, rect2, matrix, rectF, rect3, i6, rect4, i7, i8, view);
    }

    private RotatedPosition getRotatedPosition(float f4) {
        int i4;
        int i5;
        float f5;
        float f6;
        int i6;
        float f7;
        float f8;
        int i7;
        int i8;
        int i9;
        if (TaskAnimationManager.SHELL_TRANSITIONS_ROTATION) {
            if (this.mFromRotation == 1) {
                float f9 = 1.0f - f4;
                f6 = (-90.0f) * f9;
                Rect rect = this.mDestinationBoundsTransformed;
                int i10 = rect.left;
                Rect rect2 = this.mStartBounds;
                f5 = ((i10 - i8) * f4) + rect2.left;
                int i11 = rect.top;
                f7 = (f4 * (i11 - i9)) + rect2.top;
                f8 = rect2.bottom * f9;
                return new RotatedPosition(f6, f5, f8 + f7, 0);
            }
            float f10 = 1.0f - f4;
            Rect rect3 = this.mDestinationBoundsTransformed;
            int i12 = rect3.left;
            Rect rect4 = this.mStartBounds;
            float f11 = (rect4.right * f10) + ((i12 - i7) * f4) + rect4.left;
            i4 = rect3.top;
            i5 = rect4.top;
            f6 = 90.0f * f10;
            f5 = f11;
        } else if (this.mFromRotation == 1) {
            f6 = (-90.0f) * f4;
            Rect rect5 = this.mDestinationBoundsTransformed;
            int i13 = rect5.left;
            Rect rect6 = this.mStartBounds;
            f5 = ((i13 - i6) * f4) + rect6.left;
            i4 = rect5.bottom;
            i5 = rect6.top;
        } else {
            Rect rect7 = this.mDestinationBoundsTransformed;
            int i14 = rect7.right;
            Rect rect8 = this.mStartBounds;
            int i15 = rect8.left;
            i4 = rect7.top;
            i5 = rect8.top;
            f5 = ((i14 - i15) * f4) + i15;
            f6 = 90.0f * f4;
        }
        f7 = f4 * (i4 - i5);
        f8 = i5;
        return new RotatedPosition(f6, f5, f8 + f7, 0);
    }

    private PictureInPictureSurfaceTransaction onAnimationScale(float f4, SurfaceControl.Transaction transaction, Rect rect) {
        int i4 = this.mFromRotation;
        if (i4 == 1 || i4 == 3) {
            RotatedPosition rotatedPosition = getRotatedPosition(f4);
            return this.mSurfaceTransactionHelper.scale(transaction, this.mLeash, this.mAppBounds, rect, rotatedPosition.degree, rotatedPosition.positionX, rotatedPosition.positionY);
        }
        return this.mSurfaceTransactionHelper.scale(transaction, this.mLeash, this.mAppBounds, rect);
    }

    private PictureInPictureSurfaceTransaction onAnimationScaleAndCrop(float f4, SurfaceControl.Transaction transaction, Rect rect) {
        Rect evaluate = this.mInsetsEvaluator.evaluate(f4, this.mSourceInsets, this.mSourceHintRectInsets);
        int i4 = this.mFromRotation;
        if (i4 == 1 || i4 == 3) {
            RotatedPosition rotatedPosition = getRotatedPosition(f4);
            return this.mSurfaceTransactionHelper.scaleAndRotate(transaction, this.mLeash, this.mAppBounds, rect, evaluate, rotatedPosition.degree, rotatedPosition.positionX, rotatedPosition.positionY);
        }
        return this.mSurfaceTransactionHelper.scaleAndCrop(transaction, this.mLeash, this.mSourceRectHint, this.mAppBounds, rect, evaluate, f4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimationUpdate(RectF rectF, float f4) {
        if (this.mHasAnimationEnded) {
            return;
        }
        SurfaceControl.Transaction newSurfaceControlTransaction = PipSurfaceTransactionHelper.newSurfaceControlTransaction();
        this.mHomeToWindowPositionMap.mapRect(this.mCurrentBoundsF, rectF);
        onAnimationUpdate(newSurfaceControlTransaction, this.mCurrentBoundsF, f4);
        newSurfaceControlTransaction.apply();
    }

    public ComponentName getComponentName() {
        return this.mActivityInfo.getComponentName();
    }

    public SurfaceControl getContentOverlay() {
        com.android.wm.shell.pip.d dVar = this.mPipContentOverlay;
        if (dVar == null) {
            return null;
        }
        return dVar.f6354a;
    }

    public Rect getDestinationBounds() {
        return this.mDestinationBounds;
    }

    public PictureInPictureSurfaceTransaction getFinishTransaction() {
        PictureInPictureSurfaceTransaction onAnimationUpdate = onAnimationUpdate(PipSurfaceTransactionHelper.newSurfaceControlTransaction(), new RectF(this.mDestinationBounds), 1.0f);
        onAnimationUpdate.setShouldDisableCanAffectSystemUiFlags(true);
        return onAnimationUpdate;
    }

    public int getTaskId() {
        return this.mTaskId;
    }

    private SwipePipToHomeAnimator(Context context, int i4, ActivityInfo activityInfo, int i5, SurfaceControl surfaceControl, Rect rect, Rect rect2, Matrix matrix, RectF rectF, Rect rect3, int i6, Rect rect4, int i7, int i8, final View view) {
        super(new RectFSpringAnim.DefaultSpringConfig(context, null, rectF, new RectF(rect4)));
        Rect rect5 = new Rect();
        this.mSourceRectHint = rect5;
        Rect rect6 = new Rect();
        this.mAppBounds = rect6;
        Matrix matrix2 = new Matrix();
        this.mHomeToWindowPositionMap = matrix2;
        Rect rect7 = new Rect();
        this.mStartBounds = rect7;
        this.mCurrentBoundsF = new RectF();
        this.mCurrentBounds = new Rect();
        Rect rect8 = new Rect();
        this.mDestinationBounds = rect8;
        this.mInsetsEvaluator = new RectEvaluator(new Rect());
        this.mSourceInsets = new Rect();
        Rect rect9 = new Rect();
        this.mDestinationBoundsTransformed = rect9;
        this.mTaskId = i4;
        this.mActivityInfo = activityInfo;
        this.mLeash = surfaceControl;
        rect6.set(rect2);
        matrix2.set(matrix);
        rectF.round(rect7);
        rect8.set(rect3);
        this.mFromRotation = i6;
        rect9.set(rect4);
        this.mSurfaceTransactionHelper = new PipSurfaceTransactionHelper(i7, i8);
        Rect rect10 = (rect == null || (rect.width() >= rect3.width() && rect.height() >= rect3.height())) ? rect : null;
        if (rect10 == null) {
            rect5.setEmpty();
            this.mSourceHintRectInsets = null;
            this.mPipContentOverlay = new com.android.wm.shell.pip.c(view.getContext(), rect6, new IconProvider(context).getIcon(activityInfo), i5);
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            com.android.wm.shell.pip.c cVar = (com.android.wm.shell.pip.c) this.mPipContentOverlay;
            transaction.show(cVar.f6354a);
            transaction.setLayer(cVar.f6354a, Integer.MAX_VALUE);
            transaction.setBuffer(cVar.f6354a, cVar.f6353e.getHardwareBuffer());
            transaction.setAlpha(cVar.f6354a, 0.0f);
            transaction.reparent(cVar.f6354a, surfaceControl);
            transaction.apply();
        } else {
            rect5.set(rect10);
            this.mSourceHintRectInsets = new Rect(rect10.left - rect2.left, rect10.top - rect2.top, rect2.right - rect10.right, rect2.bottom - rect10.bottom);
        }
        addAnimatorListener(new AnimationSuccessListener() { // from class: com.android.quickstep.util.SwipePipToHomeAnimator.1
            @Override // com.android.launcher3.anim.AnimationSuccessListener, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                InteractionJankMonitorWrapper.cancel(10);
            }

            @Override // com.android.launcher3.anim.AnimationSuccessListener, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (SwipePipToHomeAnimator.this.mHasAnimationEnded) {
                    return;
                }
                super.onAnimationEnd(animator);
                SwipePipToHomeAnimator.this.mHasAnimationEnded = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                InteractionJankMonitorWrapper.begin(view, 10);
                super.onAnimationStart(animator);
            }

            @Override // com.android.launcher3.anim.AnimationSuccessListener
            public void onAnimationSuccess(Animator animator) {
                InteractionJankMonitorWrapper.end(10);
            }
        });
        addOnUpdateListener(new RectFSpringAnim.OnUpdateListener() { // from class: com.android.quickstep.util.W
            @Override // com.android.quickstep.util.RectFSpringAnim.OnUpdateListener
            public final void onUpdate(RectF rectF2, float f4) {
                SwipePipToHomeAnimator.this.onAnimationUpdate(rectF2, f4);
            }
        });
    }

    private PictureInPictureSurfaceTransaction onAnimationUpdate(SurfaceControl.Transaction transaction, RectF rectF, float f4) {
        rectF.round(this.mCurrentBounds);
        com.android.wm.shell.pip.d dVar = this.mPipContentOverlay;
        if (dVar != null) {
            Rect rect = this.mCurrentBounds;
            com.android.wm.shell.pip.c cVar = (com.android.wm.shell.pip.c) dVar;
            Matrix matrix = cVar.f6351c;
            matrix.reset();
            Rect rect2 = cVar.f6350b;
            matrix.postScale(rect2.width() / rect.width(), rect2.height() / rect.height(), rect2.centerX(), rect2.centerY());
            transaction.setMatrix(cVar.f6354a, matrix, cVar.f6352d).setAlpha(cVar.f6354a, f4 < 0.5f ? 0.0f : (f4 - 0.5f) * 2.0f);
        }
        if (this.mSourceHintRectInsets == null) {
            return onAnimationScale(f4, transaction, this.mCurrentBounds);
        }
        return onAnimationScaleAndCrop(f4, transaction, this.mCurrentBounds);
    }
}
