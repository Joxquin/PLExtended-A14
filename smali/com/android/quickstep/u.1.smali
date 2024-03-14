.class public final synthetic Lcom/android/quickstep/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/u;->d:I

    iput-object p2, p0, Lcom/android/quickstep/u;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/quickstep/u;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/u;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/u;->f:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p0, p0, Lcom/android/quickstep/u;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-static {v0, p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->z(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/quickstep/u;->f:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/AbsSwipeUpHandler$4;

    iget-object p0, p0, Lcom/android/quickstep/u;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$4;->a(Lcom/android/quickstep/AbsSwipeUpHandler$4;Landroid/view/View;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/quickstep/u;->f:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/AbsSwipeUpHandler$2;

    iget-object p0, p0, Lcom/android/quickstep/u;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$2;->a(Lcom/android/quickstep/AbsSwipeUpHandler$2;Landroid/view/View;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/u;->f:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p0, p0, Lcom/android/quickstep/u;->e:Ljava/lang/Object;

    check-cast p0, [I

    invoke-static {v0, p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->Y(Lcom/android/quickstep/AbsSwipeUpHandler;[I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
