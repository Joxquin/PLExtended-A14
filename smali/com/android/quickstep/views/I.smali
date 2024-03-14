.class public final synthetic Lcom/android/quickstep/views/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/views/I;->d:I

    iput-object p3, p0, Lcom/android/quickstep/views/I;->f:Ljava/lang/Object;

    iput p1, p0, Lcom/android/quickstep/views/I;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/views/I;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/views/I;->f:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView$21;

    iget p0, p0, Lcom/android/quickstep/views/I;->e:I

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView$21;->a(Lcom/android/quickstep/views/RecentsView$21;I)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/views/I;->f:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget p0, p0, Lcom/android/quickstep/views/I;->e:I

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->P(Lcom/android/quickstep/views/RecentsView;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
