package com.android.quickstep.util;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.util.SplitConfigurationOptions$SplitSelectSource;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.views.FloatingTaskView;
import com.android.quickstep.views.IconView;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.SplitInstructionsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.quickstep.views.TaskView;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final class SplitAnimationController {
    public static final Companion Companion = new Companion(null);
    private final SplitSelectStateController splitSelectStateController;

    /* loaded from: classes.dex */
    public final class Companion {

        /* loaded from: classes.dex */
        public final class SplitAnimInitProps {
            private final boolean fadeWithThumbnail;
            private final Drawable iconDrawable;
            private final View iconView;
            private final boolean isStagedTask;
            private final Bitmap originalBitmap;
            private final View originalView;

            public SplitAnimInitProps(View originalView, Bitmap bitmap, Drawable iconDrawable, boolean z4, boolean z5, View view) {
                kotlin.jvm.internal.h.e(originalView, "originalView");
                kotlin.jvm.internal.h.e(iconDrawable, "iconDrawable");
                this.originalView = originalView;
                this.originalBitmap = bitmap;
                this.iconDrawable = iconDrawable;
                this.fadeWithThumbnail = z4;
                this.isStagedTask = z5;
                this.iconView = view;
            }

            public static /* synthetic */ SplitAnimInitProps copy$default(SplitAnimInitProps splitAnimInitProps, View view, Bitmap bitmap, Drawable drawable, boolean z4, boolean z5, View view2, int i4, Object obj) {
                if ((i4 & 1) != 0) {
                    view = splitAnimInitProps.originalView;
                }
                if ((i4 & 2) != 0) {
                    bitmap = splitAnimInitProps.originalBitmap;
                }
                Bitmap bitmap2 = bitmap;
                if ((i4 & 4) != 0) {
                    drawable = splitAnimInitProps.iconDrawable;
                }
                Drawable drawable2 = drawable;
                if ((i4 & 8) != 0) {
                    z4 = splitAnimInitProps.fadeWithThumbnail;
                }
                boolean z6 = z4;
                if ((i4 & 16) != 0) {
                    z5 = splitAnimInitProps.isStagedTask;
                }
                boolean z7 = z5;
                if ((i4 & 32) != 0) {
                    view2 = splitAnimInitProps.iconView;
                }
                return splitAnimInitProps.copy(view, bitmap2, drawable2, z6, z7, view2);
            }

            public final View component1() {
                return this.originalView;
            }

            public final Bitmap component2() {
                return this.originalBitmap;
            }

            public final Drawable component3() {
                return this.iconDrawable;
            }

            public final boolean component4() {
                return this.fadeWithThumbnail;
            }

            public final boolean component5() {
                return this.isStagedTask;
            }

            public final View component6() {
                return this.iconView;
            }

            public final SplitAnimInitProps copy(View originalView, Bitmap bitmap, Drawable iconDrawable, boolean z4, boolean z5, View view) {
                kotlin.jvm.internal.h.e(originalView, "originalView");
                kotlin.jvm.internal.h.e(iconDrawable, "iconDrawable");
                return new SplitAnimInitProps(originalView, bitmap, iconDrawable, z4, z5, view);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof SplitAnimInitProps) {
                    SplitAnimInitProps splitAnimInitProps = (SplitAnimInitProps) obj;
                    return kotlin.jvm.internal.h.a(this.originalView, splitAnimInitProps.originalView) && kotlin.jvm.internal.h.a(this.originalBitmap, splitAnimInitProps.originalBitmap) && kotlin.jvm.internal.h.a(this.iconDrawable, splitAnimInitProps.iconDrawable) && this.fadeWithThumbnail == splitAnimInitProps.fadeWithThumbnail && this.isStagedTask == splitAnimInitProps.isStagedTask && kotlin.jvm.internal.h.a(this.iconView, splitAnimInitProps.iconView);
                }
                return false;
            }

            public final boolean getFadeWithThumbnail() {
                return this.fadeWithThumbnail;
            }

            public final Drawable getIconDrawable() {
                return this.iconDrawable;
            }

            public final View getIconView() {
                return this.iconView;
            }

            public final Bitmap getOriginalBitmap() {
                return this.originalBitmap;
            }

            public final View getOriginalView() {
                return this.originalView;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public int hashCode() {
                int hashCode = this.originalView.hashCode() * 31;
                Bitmap bitmap = this.originalBitmap;
                int hashCode2 = (this.iconDrawable.hashCode() + ((hashCode + (bitmap == null ? 0 : bitmap.hashCode())) * 31)) * 31;
                boolean z4 = this.fadeWithThumbnail;
                int i4 = z4;
                if (z4 != 0) {
                    i4 = 1;
                }
                int i5 = (hashCode2 + i4) * 31;
                boolean z5 = this.isStagedTask;
                int i6 = (i5 + (z5 ? 1 : z5 ? 1 : 0)) * 31;
                View view = this.iconView;
                return i6 + (view != null ? view.hashCode() : 0);
            }

            public final boolean isStagedTask() {
                return this.isStagedTask;
            }

            public String toString() {
                View view = this.originalView;
                Bitmap bitmap = this.originalBitmap;
                Drawable drawable = this.iconDrawable;
                boolean z4 = this.fadeWithThumbnail;
                boolean z5 = this.isStagedTask;
                View view2 = this.iconView;
                return "SplitAnimInitProps(originalView=" + view + ", originalBitmap=" + bitmap + ", iconDrawable=" + drawable + ", fadeWithThumbnail=" + z4 + ", isStagedTask=" + z5 + ", iconView=" + view2 + ")";
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }
    }

    public SplitAnimationController(SplitSelectStateController splitSelectStateController) {
        kotlin.jvm.internal.h.e(splitSelectStateController, "splitSelectStateController");
        this.splitSelectStateController = splitSelectStateController;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void safeRemoveViewFromDragLayer(StatefulActivity statefulActivity, View view) {
        if (view != null) {
            statefulActivity.getDragLayer().removeView(view);
        }
    }

    public final void addInitialSplitFromPair(TaskView.TaskIdAttributeContainer taskIdAttributeContainer, PendingAnimation builder, DeviceProfile deviceProfile, int i4, int i5, boolean z4) {
        kotlin.jvm.internal.h.e(taskIdAttributeContainer, "taskIdAttributeContainer");
        kotlin.jvm.internal.h.e(builder, "builder");
        kotlin.jvm.internal.h.e(deviceProfile, "deviceProfile");
        TaskThumbnailView thumbnailView = taskIdAttributeContainer.getThumbnailView();
        IconView iconView = taskIdAttributeContainer.getIconView();
        kotlin.jvm.internal.h.d(iconView, "taskIdAttributeContainer.iconView");
        builder.add(ObjectAnimator.ofFloat(thumbnailView, TaskThumbnailView.SPLASH_ALPHA, 1.0f));
        thumbnailView.setShowSplashForSplitSelection(true);
        if (deviceProfile.isLandscape) {
            float width = i4 / thumbnailView.getWidth();
            builder.add(ObjectAnimator.ofFloat(thumbnailView, TaskThumbnailView.SPLIT_SELECT_TRANSLATE_X, (i4 - thumbnailView.getWidth()) / 2.0f));
            builder.add(ObjectAnimator.ofFloat(iconView, View.TRANSLATION_X, -((i4 - iconView.getWidth()) / 2.0f)));
            builder.add(ObjectAnimator.ofFloat(thumbnailView, View.SCALE_X, width));
            thumbnailView.setScaleY(1.0f);
            builder.add(ObjectAnimator.ofFloat(thumbnailView, TaskThumbnailView.SPLIT_SELECT_TRANSLATE_Y, z4 ? deviceProfile.overviewTaskThumbnailTopMarginPx : 0.0f));
            return;
        }
        int i6 = i5 - deviceProfile.overviewTaskThumbnailTopMarginPx;
        float height = z4 ? ((i6 - thumbnailView.getHeight()) / 2.0f) + deviceProfile.overviewTaskThumbnailTopMarginPx : (i6 - thumbnailView.getHeight()) / 2.0f;
        float height2 = i6 / thumbnailView.getHeight();
        builder.add(ObjectAnimator.ofFloat(thumbnailView, TaskThumbnailView.SPLIT_SELECT_TRANSLATE_Y, height));
        builder.add(ObjectAnimator.ofFloat(iconView, View.TRANSLATION_X, 0.0f));
        builder.add(ObjectAnimator.ofFloat(thumbnailView, View.SCALE_Y, height2));
        thumbnailView.setScaleX(1.0f);
        builder.add(ObjectAnimator.ofFloat(thumbnailView, TaskThumbnailView.SPLIT_SELECT_TRANSLATE_X, 0.0f));
    }

    public final AnimatorSet createPlaceholderDismissAnim(final StatefulActivity launcher) {
        kotlin.jvm.internal.h.e(launcher, "launcher");
        AnimatorSet animatorSet = new AnimatorSet();
        View overviewPanel = launcher.getOverviewPanel();
        kotlin.jvm.internal.h.d(overviewPanel, "launcher.getOverviewPanel()");
        RecentsView recentsView = (RecentsView) overviewPanel;
        FloatingTaskView firstFloatingTaskView = this.splitSelectStateController.getFirstFloatingTaskView();
        if (firstFloatingTaskView == null) {
            return animatorSet;
        }
        BaseDragLayer dragLayer = launcher.getDragLayer();
        kotlin.jvm.internal.h.d(dragLayer, "launcher.dragLayer");
        RectF rectF = new RectF();
        Utilities.getBoundsForViewInDragLayer(dragLayer, firstFloatingTaskView, new Rect(0, 0, firstFloatingTaskView.getWidth(), firstFloatingTaskView.getHeight()), false, rectF);
        rectF.intersect(dragLayer.getLeft(), dragLayer.getTop(), dragLayer.getRight(), dragLayer.getBottom());
        animatorSet.play(ObjectAnimator.ofFloat(firstFloatingTaskView, FloatingTaskView.PRIMARY_TRANSLATE_OFFSCREEN, recentsView.getPagedOrientationHandler().getFloatingTaskOffscreenTranslationTarget(firstFloatingTaskView, rectF, firstFloatingTaskView.getStagePosition(), launcher.getDeviceProfile())));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.util.SplitAnimationController$createPlaceholderDismissAnim$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                kotlin.jvm.internal.h.e(animation, "animation");
                SplitAnimationController.this.getSplitSelectStateController().resetState();
                SplitAnimationController splitAnimationController = SplitAnimationController.this;
                splitAnimationController.safeRemoveViewFromDragLayer(launcher, splitAnimationController.getSplitSelectStateController().getSplitInstructionsView());
            }
        });
        return animatorSet;
    }

    public final Drawable getDrawable(IconView iconView, SplitConfigurationOptions$SplitSelectSource splitConfigurationOptions$SplitSelectSource) {
        kotlin.jvm.internal.h.e(iconView, "iconView");
        return (iconView.getDrawable() != null || splitConfigurationOptions$SplitSelectSource == null) ? iconView.getDrawable() : splitConfigurationOptions$SplitSelectSource.getDrawable();
    }

    public final Companion.SplitAnimInitProps getFirstAnimInitViews(Supplier taskViewSupplier, Supplier splitSelectSourceSupplier) {
        kotlin.jvm.internal.h.e(taskViewSupplier, "taskViewSupplier");
        kotlin.jvm.internal.h.e(splitSelectSourceSupplier, "splitSelectSourceSupplier");
        SplitConfigurationOptions$SplitSelectSource splitConfigurationOptions$SplitSelectSource = (SplitConfigurationOptions$SplitSelectSource) splitSelectSourceSupplier.get();
        if (!this.splitSelectStateController.isAnimateCurrentTaskDismissal()) {
            kotlin.jvm.internal.h.b(splitConfigurationOptions$SplitSelectSource);
            View view = splitConfigurationOptions$SplitSelectSource.getView();
            kotlin.jvm.internal.h.d(view, "splitSelectSource!!.view");
            Drawable drawable = splitConfigurationOptions$SplitSelectSource.getDrawable();
            kotlin.jvm.internal.h.d(drawable, "splitSelectSource.drawable");
            return new Companion.SplitAnimInitProps(view, null, drawable, false, true, null);
        } else if (!this.splitSelectStateController.isDismissingFromSplitPair()) {
            Object obj = taskViewSupplier.get();
            kotlin.jvm.internal.h.d(obj, "taskViewSupplier.get()");
            TaskView taskView = (TaskView) obj;
            IconView iconView = taskView.getIconView();
            kotlin.jvm.internal.h.d(iconView, "taskView.iconView");
            Drawable drawable2 = getDrawable(iconView, splitConfigurationOptions$SplitSelectSource);
            TaskThumbnailView thumbnail = taskView.getThumbnail();
            kotlin.jvm.internal.h.d(thumbnail, "taskView.thumbnail");
            Bitmap thumbnail2 = taskView.getThumbnail().getThumbnail();
            kotlin.jvm.internal.h.b(drawable2);
            return new Companion.SplitAnimInitProps(thumbnail, thumbnail2, drawable2, true, true, taskView.getIconView());
        } else {
            Object obj2 = taskViewSupplier.get();
            kotlin.jvm.internal.h.d(obj2, "taskViewSupplier.get()");
            TaskView.TaskIdAttributeContainer[] taskIdAttributeContainers = ((TaskView) obj2).getTaskIdAttributeContainers();
            kotlin.jvm.internal.h.d(taskIdAttributeContainers, "taskView.taskIdAttributeContainers");
            for (TaskView.TaskIdAttributeContainer taskIdAttributeContainer : taskIdAttributeContainers) {
                kotlin.jvm.internal.h.d(taskIdAttributeContainer, "taskView.taskIdAttributeContainers");
                if (taskIdAttributeContainer.getTask().getKey().getId() == this.splitSelectStateController.getInitialTaskId()) {
                    IconView iconView2 = taskIdAttributeContainer.getIconView();
                    kotlin.jvm.internal.h.d(iconView2, "container.iconView");
                    Drawable drawable3 = getDrawable(iconView2, splitConfigurationOptions$SplitSelectSource);
                    TaskThumbnailView thumbnailView = taskIdAttributeContainer.getThumbnailView();
                    kotlin.jvm.internal.h.d(thumbnailView, "container.thumbnailView");
                    Bitmap thumbnail3 = taskIdAttributeContainer.getThumbnailView().getThumbnail();
                    kotlin.jvm.internal.h.b(drawable3);
                    return new Companion.SplitAnimInitProps(thumbnailView, thumbnail3, drawable3, true, true, taskIdAttributeContainer.getIconView());
                }
            }
            throw new IllegalStateException("Attempting to init split from existing split pair without a valid taskIdAttributeContainer");
        }
    }

    public final PendingAnimation getShowSplitInstructionsAnim(StatefulActivity launcher) {
        kotlin.jvm.internal.h.e(launcher, "launcher");
        safeRemoveViewFromDragLayer(launcher, this.splitSelectStateController.getSplitInstructionsView());
        SplitInstructionsView splitInstructionsView = SplitInstructionsView.getSplitInstructionsView(launcher);
        this.splitSelectStateController.setSplitInstructionsView(splitInstructionsView);
        SplitAnimationTimings deviceOverviewToSplitTimings = AnimUtils.getDeviceOverviewToSplitTimings(launcher.getDeviceProfile().isTablet);
        PendingAnimation pendingAnimation = new PendingAnimation(100L);
        Interpolator interpolator = y0.e.f12949m;
        pendingAnimation.setViewAlpha(splitInstructionsView, 1.0f, y0.e.b(deviceOverviewToSplitTimings.getInstructionsContainerFadeInStartOffset(), deviceOverviewToSplitTimings.getInstructionsContainerFadeInEndOffset(), interpolator));
        kotlin.jvm.internal.h.b(splitInstructionsView);
        pendingAnimation.setViewAlpha(splitInstructionsView.getTextView(), 1.0f, y0.e.b(deviceOverviewToSplitTimings.getInstructionsTextFadeInStartOffset(), deviceOverviewToSplitTimings.getInstructionsTextFadeInEndOffset(), interpolator));
        pendingAnimation.addFloat(splitInstructionsView, SplitInstructionsView.UNFOLD, 0.1f, 1.0f, y0.e.b(deviceOverviewToSplitTimings.getInstructionsUnfoldStartOffset(), deviceOverviewToSplitTimings.getInstructionsUnfoldEndOffset(), y0.e.f12939c));
        return pendingAnimation;
    }

    public final SplitSelectStateController getSplitSelectStateController() {
        return this.splitSelectStateController;
    }

    public final void playPlaceholderDismissAnim(StatefulActivity launcher) {
        kotlin.jvm.internal.h.e(launcher, "launcher");
        if (this.splitSelectStateController.isSplitSelectActive()) {
            createPlaceholderDismissAnim(launcher).start();
        }
    }

    public final void removeSplitInstructionsView(StatefulActivity launcher) {
        kotlin.jvm.internal.h.e(launcher, "launcher");
        safeRemoveViewFromDragLayer(launcher, this.splitSelectStateController.getSplitInstructionsView());
    }
}
