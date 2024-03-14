.class final Lcom/android/launcher3/anim/AnimatorListeners$RunnableSuccessListener;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorListeners$RunnableSuccessListener;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatorListeners$RunnableSuccessListener;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
