package com.android.quickstep.util;

import android.animation.Animator;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.RectF;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.FlingSpringAnim;
import com.android.launcher3.touch.OverScroll;
import com.android.launcher3.util.DynamicResource;
import com.android.quickstep.RemoteAnimationTargets;
import com.android.systemui.shared.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class RectFSpringAnim extends RemoteAnimationTargets.ReleaseCheck {
    public static final int TRACKING_BOTTOM = 2;
    public static final int TRACKING_CENTER = 1;
    public static final int TRACKING_TOP = 0;
    private boolean mAnimsStarted;
    private float mCurrentCenterX;
    private float mCurrentScaleProgress;
    private float mCurrentY;
    protected final float mDampingX;
    protected final float mDampingY;
    private int mMaxVelocityPxPerS;
    private float mMinVisChange;
    private androidx.dynamicanimation.animation.s mRectScaleAnim;
    private boolean mRectScaleAnimEnded;
    protected final float mRectStiffness;
    private FlingSpringAnim mRectXAnim;
    private boolean mRectXAnimEnded;
    private FlingSpringAnim mRectYAnim;
    private boolean mRectYAnimEnded;
    private final RectF mStartRect;
    protected final float mStiffnessX;
    protected final float mStiffnessY;
    private final RectF mTargetRect;
    public final int mTracking;
    private static final androidx.dynamicanimation.animation.q RECT_CENTER_X = new androidx.dynamicanimation.animation.q("rectCenterXSpring") { // from class: com.android.quickstep.util.RectFSpringAnim.1
        @Override // androidx.dynamicanimation.animation.q
        public float getValue(RectFSpringAnim rectFSpringAnim) {
            return rectFSpringAnim.mCurrentCenterX;
        }

        @Override // androidx.dynamicanimation.animation.q
        public void setValue(RectFSpringAnim rectFSpringAnim, float f4) {
            rectFSpringAnim.mCurrentCenterX = f4;
            rectFSpringAnim.onUpdate();
        }
    };
    private static final androidx.dynamicanimation.animation.q RECT_Y = new androidx.dynamicanimation.animation.q("rectYSpring") { // from class: com.android.quickstep.util.RectFSpringAnim.2
        @Override // androidx.dynamicanimation.animation.q
        public float getValue(RectFSpringAnim rectFSpringAnim) {
            return rectFSpringAnim.mCurrentY;
        }

        @Override // androidx.dynamicanimation.animation.q
        public void setValue(RectFSpringAnim rectFSpringAnim, float f4) {
            rectFSpringAnim.mCurrentY = f4;
            rectFSpringAnim.onUpdate();
        }
    };
    private static final androidx.dynamicanimation.animation.q RECT_SCALE_PROGRESS = new androidx.dynamicanimation.animation.q("rectScaleProgress") { // from class: com.android.quickstep.util.RectFSpringAnim.3
        @Override // androidx.dynamicanimation.animation.q
        public float getValue(RectFSpringAnim rectFSpringAnim) {
            return rectFSpringAnim.mCurrentScaleProgress;
        }

        @Override // androidx.dynamicanimation.animation.q
        public void setValue(RectFSpringAnim rectFSpringAnim, float f4) {
            rectFSpringAnim.mCurrentScaleProgress = f4;
            rectFSpringAnim.onUpdate();
        }
    };
    private final RectF mCurrentRect = new RectF();
    private final List mOnUpdateListeners = new ArrayList();
    private final List mAnimatorListeners = new ArrayList();

    /* loaded from: classes.dex */
    public class DefaultSpringConfig extends SpringConfig {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DefaultSpringConfig(Context context, DeviceProfile deviceProfile, RectF rectF, RectF rectF2) {
            super(context, rectF, rectF2, 0);
            boolean z4 = false;
            n1.m provider = DynamicResource.provider(context);
            this.tracking = getDefaultTracking(deviceProfile);
            this.stiffnessX = provider.getFloat(R.dimen.swipe_up_rect_xy_stiffness);
            this.stiffnessY = provider.getFloat(R.dimen.swipe_up_rect_xy_stiffness);
            this.dampingX = provider.getFloat(R.dimen.swipe_up_rect_xy_damping_ratio);
            this.dampingY = provider.getFloat(R.dimen.swipe_up_rect_xy_damping_ratio);
            this.startRect = rectF;
            this.targetRect = rectF2;
            if (deviceProfile != null && (deviceProfile.isLandscape || deviceProfile.isTablet)) {
                z4 = true;
            }
            this.rectStiffness = z4 ? provider.getFloat(R.dimen.swipe_up_rect_scale_higher_stiffness) : provider.getFloat(R.dimen.swipe_up_rect_scale_stiffness);
        }

        private int getDefaultTracking(DeviceProfile deviceProfile) {
            if (deviceProfile != null) {
                int i4 = deviceProfile.heightPx;
                float f4 = i4 / 3.0f;
                float f5 = i4 - deviceProfile.workspacePadding.bottom;
                RectF rectF = this.targetRect;
                if (rectF.bottom <= f5) {
                    return rectF.top < f4 ? 0 : 1;
                }
            } else if (this.startRect.bottom >= this.targetRect.bottom) {
                return 0;
            }
            return 2;
        }
    }

    /* loaded from: classes.dex */
    public interface OnUpdateListener {
        default void onCancel() {
        }

        void onUpdate(RectF rectF, float f4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public abstract class SpringConfig {
        protected float dampingX;
        protected float dampingY;
        protected int maxVelocityPxPerS;
        protected float minVisChange;
        protected float rectStiffness;
        protected RectF startRect;
        protected float stiffnessX;
        protected float stiffnessY;
        protected RectF targetRect;
        protected int tracking;

        public /* synthetic */ SpringConfig(Context context, RectF rectF, RectF rectF2, int i4) {
            this(context, rectF, rectF2);
        }

        private SpringConfig(Context context, RectF rectF, RectF rectF2) {
            this.startRect = rectF;
            this.targetRect = rectF2;
            n1.m provider = DynamicResource.provider(context);
            this.minVisChange = provider.getDimension(R.dimen.swipe_up_fling_min_visible_change);
            this.maxVelocityPxPerS = (int) provider.getDimension(R.dimen.swipe_up_max_velocity);
        }
    }

    /* loaded from: classes.dex */
    public class TaskbarHotseatSpringConfig extends SpringConfig {
        public TaskbarHotseatSpringConfig(Context context, RectF rectF, RectF rectF2) {
            super(context, rectF, rectF2, 0);
            n1.m provider = DynamicResource.provider(context);
            this.tracking = 1;
            this.stiffnessX = provider.getFloat(R.dimen.taskbar_swipe_up_rect_x_stiffness);
            this.stiffnessY = provider.getFloat(R.dimen.taskbar_swipe_up_rect_y_stiffness);
            this.dampingX = provider.getFloat(R.dimen.taskbar_swipe_up_rect_x_damping);
            this.dampingY = provider.getFloat(R.dimen.taskbar_swipe_up_rect_y_damping);
            this.rectStiffness = provider.getFloat(R.dimen.taskbar_swipe_up_rect_scale_stiffness);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Tracking {
    }

    public RectFSpringAnim(SpringConfig springConfig) {
        RectF rectF = springConfig.startRect;
        this.mStartRect = rectF;
        this.mTargetRect = springConfig.targetRect;
        this.mCurrentCenterX = rectF.centerX();
        this.mMinVisChange = springConfig.minVisChange;
        this.mMaxVelocityPxPerS = springConfig.maxVelocityPxPerS;
        setCanRelease(true);
        this.mTracking = springConfig.tracking;
        this.mStiffnessX = springConfig.stiffnessX;
        this.mStiffnessY = springConfig.stiffnessY;
        this.mDampingX = springConfig.dampingX;
        this.mDampingY = springConfig.dampingY;
        this.mRectStiffness = springConfig.rectStiffness;
        this.mCurrentY = getTrackedYFromRect(rectF);
    }

    private float getTrackedYFromRect(RectF rectF) {
        int i4 = this.mTracking;
        return i4 != 0 ? i4 != 2 ? rectF.centerY() : rectF.bottom : rectF.top;
    }

    private boolean isEnded() {
        return this.mRectXAnimEnded && this.mRectYAnimEnded && this.mRectScaleAnimEnded;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$0(androidx.dynamicanimation.animation.m mVar, boolean z4, float f4, float f5) {
        this.mRectXAnimEnded = true;
        maybeOnEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$1(androidx.dynamicanimation.animation.m mVar, boolean z4, float f4, float f5) {
        this.mRectYAnimEnded = true;
        maybeOnEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$2(androidx.dynamicanimation.animation.m mVar, boolean z4, float f4, float f5) {
        this.mRectScaleAnimEnded = true;
        maybeOnEnd();
    }

    private void maybeOnEnd() {
        if (this.mAnimsStarted && isEnded()) {
            this.mAnimsStarted = false;
            setCanRelease(true);
            for (Animator.AnimatorListener animatorListener : this.mAnimatorListeners) {
                animatorListener.onAnimationEnd(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUpdate() {
        if (isEnded() || this.mOnUpdateListeners.isEmpty()) {
            return;
        }
        float f4 = this.mCurrentScaleProgress;
        float width = this.mStartRect.width();
        float width2 = this.mTargetRect.width();
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        float a4 = w.f.a(width2, width, f4, width);
        float f5 = this.mCurrentScaleProgress;
        float height = this.mStartRect.height();
        float height2 = ((this.mTargetRect.height() - height) * f5) + height;
        int i4 = this.mTracking;
        if (i4 == 0) {
            RectF rectF = this.mCurrentRect;
            float f6 = this.mCurrentCenterX;
            float f7 = a4 / 2.0f;
            float f8 = this.mCurrentY;
            rectF.set(f6 - f7, f8, f6 + f7, height2 + f8);
        } else if (i4 == 1) {
            RectF rectF2 = this.mCurrentRect;
            float f9 = this.mCurrentCenterX;
            float f10 = a4 / 2.0f;
            float f11 = this.mCurrentY;
            float f12 = height2 / 2.0f;
            rectF2.set(f9 - f10, f11 - f12, f9 + f10, f11 + f12);
        } else if (i4 == 2) {
            RectF rectF3 = this.mCurrentRect;
            float f13 = this.mCurrentCenterX;
            float f14 = a4 / 2.0f;
            float f15 = this.mCurrentY;
            rectF3.set(f13 - f14, f15 - height2, f13 + f14, f15);
        }
        for (OnUpdateListener onUpdateListener : this.mOnUpdateListeners) {
            onUpdateListener.onUpdate(this.mCurrentRect, this.mCurrentScaleProgress);
        }
    }

    public void addAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.mAnimatorListeners.add(animatorListener);
    }

    public void addOnUpdateListener(OnUpdateListener onUpdateListener) {
        this.mOnUpdateListeners.add(onUpdateListener);
    }

    public void cancel() {
        if (this.mAnimsStarted) {
            for (OnUpdateListener onUpdateListener : this.mOnUpdateListeners) {
                onUpdateListener.onCancel();
            }
        }
        end();
    }

    public void end() {
        if (this.mAnimsStarted) {
            this.mRectXAnim.end();
            this.mRectYAnim.end();
            androidx.dynamicanimation.animation.s sVar = this.mRectScaleAnim;
            if (sVar.f3211x.f3215b > 0.0d) {
                sVar.k();
            }
        }
        this.mRectXAnimEnded = true;
        this.mRectYAnimEnded = true;
        this.mRectScaleAnimEnded = true;
        maybeOnEnd();
    }

    public void onTargetPositionChanged() {
        FlingSpringAnim flingSpringAnim = this.mRectXAnim;
        if (flingSpringAnim != null && flingSpringAnim.getTargetPosition() != this.mTargetRect.centerX()) {
            this.mRectXAnim.updatePosition(this.mCurrentCenterX, this.mTargetRect.centerX());
        }
        FlingSpringAnim flingSpringAnim2 = this.mRectYAnim;
        if (flingSpringAnim2 != null) {
            int i4 = this.mTracking;
            if (i4 == 0) {
                float targetPosition = flingSpringAnim2.getTargetPosition();
                float f4 = this.mTargetRect.top;
                if (targetPosition != f4) {
                    this.mRectYAnim.updatePosition(this.mCurrentY, f4);
                }
            } else if (i4 == 1) {
                if (flingSpringAnim2.getTargetPosition() != this.mTargetRect.centerY()) {
                    this.mRectYAnim.updatePosition(this.mCurrentY, this.mTargetRect.centerY());
                }
            } else if (i4 != 2) {
            } else {
                float targetPosition2 = flingSpringAnim2.getTargetPosition();
                float f5 = this.mTargetRect.bottom;
                if (targetPosition2 != f5) {
                    this.mRectYAnim.updatePosition(this.mCurrentY, f5);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r10v0, types: [com.android.quickstep.util.F] */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.android.quickstep.util.F] */
    public void start(Context context, DeviceProfile deviceProfile, PointF pointF) {
        ?? r12 = new androidx.dynamicanimation.animation.j(this) { // from class: com.android.quickstep.util.F

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ RectFSpringAnim f5802b;

            {
                this.f5802b = this;
            }

            @Override // androidx.dynamicanimation.animation.j
            public final void onAnimationEnd(androidx.dynamicanimation.animation.m mVar, boolean z4, float f4, float f5) {
                int i4 = r2;
                RectFSpringAnim rectFSpringAnim = this.f5802b;
                switch (i4) {
                    case 0:
                        rectFSpringAnim.lambda$start$0(mVar, z4, f4, f5);
                        return;
                    case 1:
                        rectFSpringAnim.lambda$start$1(mVar, z4, f4, f5);
                        return;
                    default:
                        rectFSpringAnim.lambda$start$2(mVar, z4, f4, f5);
                        return;
                }
            }
        };
        ?? r10 = new androidx.dynamicanimation.animation.j(this) { // from class: com.android.quickstep.util.F

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ RectFSpringAnim f5802b;

            {
                this.f5802b = this;
            }

            @Override // androidx.dynamicanimation.animation.j
            public final void onAnimationEnd(androidx.dynamicanimation.animation.m mVar, boolean z4, float f4, float f5) {
                int i4 = r2;
                RectFSpringAnim rectFSpringAnim = this.f5802b;
                switch (i4) {
                    case 0:
                        rectFSpringAnim.lambda$start$0(mVar, z4, f4, f5);
                        return;
                    case 1:
                        rectFSpringAnim.lambda$start$1(mVar, z4, f4, f5);
                        return;
                    default:
                        rectFSpringAnim.lambda$start$2(mVar, z4, f4, f5);
                        return;
                }
            }
        };
        float f4 = pointF.x * 1000.0f;
        float f5 = pointF.y * 1000.0f;
        float signum = Math.signum(f4) * OverScroll.dampedScroll(Math.abs(f4), this.mMaxVelocityPxPerS);
        float signum2 = Math.signum(f5) * OverScroll.dampedScroll(Math.abs(f5), this.mMaxVelocityPxPerS);
        float f6 = this.mCurrentCenterX;
        float centerX = this.mTargetRect.centerX();
        this.mRectXAnim = new FlingSpringAnim(this, context, RECT_CENTER_X, f6, centerX, signum, this.mMinVisChange, Math.min(f6, centerX), Math.max(f6, centerX), this.mDampingX, this.mStiffnessX, r12);
        float f7 = this.mCurrentY;
        float trackedYFromRect = getTrackedYFromRect(this.mTargetRect);
        this.mRectYAnim = new FlingSpringAnim(this, context, RECT_Y, f7, trackedYFromRect, signum2, this.mMinVisChange, Math.min(f7, trackedYFromRect), Math.max(f7, trackedYFromRect), this.mDampingY, this.mStiffnessY, r10);
        float abs = Math.abs(1.0f / this.mStartRect.height());
        n1.m provider = DynamicResource.provider(context);
        float f8 = provider.getFloat(R.dimen.swipe_up_rect_scale_damping_ratio);
        float f9 = deviceProfile != null && (deviceProfile.isLandscape || deviceProfile.isTablet) ? provider.getFloat(R.dimen.swipe_up_rect_scale_higher_stiffness) : provider.getFloat(R.dimen.swipe_up_rect_scale_stiffness);
        androidx.dynamicanimation.animation.s sVar = new androidx.dynamicanimation.animation.s(RECT_SCALE_PROGRESS, this);
        androidx.dynamicanimation.animation.t tVar = new androidx.dynamicanimation.animation.t(1.0f);
        tVar.a(f8);
        tVar.b(f9);
        sVar.f3211x = tVar;
        sVar.f3194a = pointF.y * abs;
        sVar.f3200g = 1.0f;
        sVar.e(abs);
        sVar.a(new androidx.dynamicanimation.animation.j(this) { // from class: com.android.quickstep.util.F

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ RectFSpringAnim f5802b;

            {
                this.f5802b = this;
            }

            @Override // androidx.dynamicanimation.animation.j
            public final void onAnimationEnd(androidx.dynamicanimation.animation.m mVar, boolean z4, float f42, float f52) {
                int i4 = r2;
                RectFSpringAnim rectFSpringAnim = this.f5802b;
                switch (i4) {
                    case 0:
                        rectFSpringAnim.lambda$start$0(mVar, z4, f42, f52);
                        return;
                    case 1:
                        rectFSpringAnim.lambda$start$1(mVar, z4, f42, f52);
                        return;
                    default:
                        rectFSpringAnim.lambda$start$2(mVar, z4, f42, f52);
                        return;
                }
            }
        });
        this.mRectScaleAnim = sVar;
        setCanRelease(false);
        this.mAnimsStarted = true;
        this.mRectXAnim.start();
        this.mRectYAnim.start();
        this.mRectScaleAnim.h();
        for (Animator.AnimatorListener animatorListener : this.mAnimatorListeners) {
            animatorListener.onAnimationStart(null);
        }
    }
}
