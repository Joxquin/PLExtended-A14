.class public final Lw1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lw1/d;

.field public final synthetic f:Lw1/b;


# direct methods
.method public synthetic constructor <init>(Lw1/d;Lw1/b;I)V
    .locals 0

    iput p3, p0, Lw1/c;->d:I

    iput-object p1, p0, Lw1/c;->e:Lw1/d;

    iput-object p2, p0, Lw1/c;->f:Lw1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lw1/c;->d:I

    const-string v1, "e.rethrowFromSystemServer()"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lw1/c;->e:Lw1/d;

    iget-object v0, v0, Lw1/d;->g:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw1/c;->e:Lw1/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v0, Lw1/d;->d:Landroid/hardware/display/DisplayManager;

    iget-object v3, v0, Lw1/d;->h:Lw1/a;

    iget-object v0, v0, Lw1/d;->f:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    :cond_0
    :goto_0
    iget-object v0, p0, Lw1/c;->e:Lw1/d;

    iget-object v0, v0, Lw1/d;->g:Ljava/util/List;

    iget-object p0, p0, Lw1/c;->f:Lw1/b;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :goto_1
    iget-object v0, p0, Lw1/c;->e:Lw1/d;

    iget-object v0, v0, Lw1/d;->g:Ljava/util/List;

    iget-object v2, p0, Lw1/c;->f:Lw1/b;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw1/c;->e:Lw1/d;

    iget-object v0, v0, Lw1/d;->g:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lw1/c;->e:Lw1/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v2, v0, Lw1/d;->d:Landroid/hardware/display/DisplayManager;

    iget-object v0, v0, Lw1/d;->h:Lw1/a;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object p0, p0, Lw1/c;->e:Lw1/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lw1/d;->i:Ljava/lang/Integer;

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
