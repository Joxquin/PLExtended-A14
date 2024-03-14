.class public final synthetic Lcom/android/quickstep/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/q0;->d:I

    iput-object p2, p0, Lcom/android/quickstep/q0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/q0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/q0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RecentsActivity;

    invoke-static {p0}, Lcom/android/quickstep/RecentsActivity;->h(Lcom/android/quickstep/RecentsActivity;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/quickstep/q0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RecentsActivity;

    invoke-static {p0}, Lcom/android/quickstep/RecentsActivity;->j(Lcom/android/quickstep/RecentsActivity;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/quickstep/q0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RecentsActivity;

    invoke-static {p0}, Lcom/android/quickstep/RecentsActivity;->g(Lcom/android/quickstep/RecentsActivity;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/q0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
