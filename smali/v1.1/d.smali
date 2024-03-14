.class public final Lv1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

.field public final synthetic e:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;F)V
    .locals 0

    iput-object p1, p0, Lv1/d;->d:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    iput p2, p0, Lv1/d;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lv1/d;->d:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    invoke-static {v0}, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->access$getFilter$p(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;)Lv1/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lv1/d;->e:F

    invoke-virtual {v0, v1}, Lv1/g;->onTransitionProgress(F)V

    sget-object v0, Le3/f;->a:Le3/f;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lv1/d;->d:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    invoke-static {v0}, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->access$getOutputProgressListener$p(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;)Lv1/b;

    move-result-object v0

    iget p0, p0, Lv1/d;->e:F

    invoke-virtual {v0, p0}, Lv1/b;->onTransitionProgress(F)V

    :cond_1
    return-void
.end method
