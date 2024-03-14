.class public final synthetic Lcom/android/quickstep/T1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/os/Binder;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Binder;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/quickstep/T1;->d:I

    iput-object p1, p0, Lcom/android/quickstep/T1;->e:Landroid/os/Binder;

    iput-object p2, p0, Lcom/android/quickstep/T1;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/T1;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/T1;->e:Landroid/os/Binder;

    check-cast v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget-object p0, p0, Lcom/android/quickstep/T1;->f:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Region;

    invoke-static {v0, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->n(Lcom/android/quickstep/TouchInteractionService$TISBinder;Landroid/graphics/Region;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/quickstep/T1;->e:Landroid/os/Binder;

    check-cast v0, Lcom/android/quickstep/TouchInteractionService$1;

    iget-object p0, p0, Lcom/android/quickstep/T1;->f:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/android/quickstep/TouchInteractionService$1;->a(Lcom/android/quickstep/TouchInteractionService$1;Landroid/content/Intent;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/T1;->e:Landroid/os/Binder;

    check-cast v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget-object p0, p0, Lcom/android/quickstep/T1;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {v0, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->k(Lcom/android/quickstep/TouchInteractionService$TISBinder;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
