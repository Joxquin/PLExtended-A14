.class Lcom/android/systemui/shared/recents/view/RecentsTransition$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# instance fields
.field private mHandled:Z

.field final synthetic val$animationStartCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$1;->val$animationStartCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStarted(J)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$1;->mHandled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$1;->mHandled:Z

    iget-object p0, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$1;->val$animationStartCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
