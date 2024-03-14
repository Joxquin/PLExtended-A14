.class public final Lv1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;I)V
    .locals 0

    iput p2, p0, Lv1/c;->d:I

    iput-object p1, p0, Lv1/c;->e:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lv1/c;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lv1/c;->e:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    invoke-static {v0}, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->access$getFilter$p(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;)Lv1/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv1/g;->onTransitionFinished()V

    sget-object v1, Le3/f;->a:Le3/f;

    :cond_0
    if-nez v1, :cond_1

    iget-object p0, p0, Lv1/c;->e:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    invoke-static {p0}, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->access$getOutputProgressListener$p(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;)Lv1/b;

    move-result-object p0

    invoke-virtual {p0}, Lv1/b;->onTransitionFinished()V

    :cond_1
    return-void

    :goto_0
    iget-object v0, p0, Lv1/c;->e:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    invoke-static {v0}, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->access$getFilter$p(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;)Lv1/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lv1/g;->onTransitionStarted()V

    sget-object v1, Le3/f;->a:Le3/f;

    :cond_2
    if-nez v1, :cond_3

    iget-object p0, p0, Lv1/c;->e:Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    invoke-static {p0}, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->access$getOutputProgressListener$p(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;)Lv1/b;

    move-result-object p0

    invoke-virtual {p0}, Lv1/b;->onTransitionStarted()V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
