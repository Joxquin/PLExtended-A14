.class final Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final mController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

.field private final mEndThreshold:F

.field private mHasCommitted:Z

.field private final mStartThreshold:F

.field private final mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;Lcom/android/launcher3/util/VibratorWrapper;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    iput p3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mStartThreshold:F

    iput p4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mEndThreshold:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mHasCommitted:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/FloatProperty;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {p1, v0}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mStartThreshold:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mEndThreshold:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/util/VibratorWrapper;->vibrateForDragTexture()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/util/VibratorWrapper;->vibrateForDragCommit()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mHasCommitted:Z

    :cond_2
    :goto_0
    return-void
.end method
