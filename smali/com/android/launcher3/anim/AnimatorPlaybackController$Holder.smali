.class final Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final anim:Landroid/animation/ValueAnimator;

.field public final globalEndProgress:F

.field public final interpolator:Landroid/animation/TimeInterpolator;

.field public mapper:Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;

.field public final springProperty:Lcom/android/launcher3/anim/SpringProperty;


# direct methods
.method public constructor <init>(Landroid/animation/Animator;FLcom/android/launcher3/anim/SpringProperty;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->anim:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->springProperty:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    long-to-float p1, v0

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->globalEndProgress:F

    sget-object p1, Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;->DEFAULT:Lcom/android/launcher3/anim/g;

    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->mapper:Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;

    return-void
.end method
