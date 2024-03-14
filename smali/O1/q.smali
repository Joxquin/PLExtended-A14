.class public final synthetic LO1/q;
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

    iput p1, p0, LO1/q;->d:I

    iput-object p2, p0, LO1/q;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, LO1/q;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LO1/q;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    return-void

    :pswitch_1
    iget-object p0, p0, LO1/q;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    return-void

    :goto_0
    iget-object p0, p0, LO1/q;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

    sget v0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->n:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, LO1/s;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, LO1/s;-><init>(Landroid/view/ViewGroup;I)V

    sget-object v5, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v6, LO1/t;

    invoke-direct {v6, p0, v4}, LO1/t;-><init>(Landroid/view/ViewGroup;I)V

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/android/launcher3/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
