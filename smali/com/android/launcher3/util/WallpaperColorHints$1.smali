.class final Lcom/android/launcher3/util/WallpaperColorHints$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $onColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

.field public final synthetic d:I

.field final synthetic this$0:Lcom/android/launcher3/util/WallpaperColorHints;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperManager$OnColorsChangedListener;I)V
    .locals 0

    iput p3, p0, Lcom/android/launcher3/util/WallpaperColorHints$1;->d:I

    iput-object p1, p0, Lcom/android/launcher3/util/WallpaperColorHints$1;->this$0:Lcom/android/launcher3/util/WallpaperColorHints;

    iput-object p2, p0, Lcom/android/launcher3/util/WallpaperColorHints$1;->$onColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/util/WallpaperColorHints$1;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperColorHints$1;->this$0:Lcom/android/launcher3/util/WallpaperColorHints;

    invoke-static {v0}, Lcom/android/launcher3/util/WallpaperColorHints;->access$getWallpaperManager(Lcom/android/launcher3/util/WallpaperColorHints;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/util/WallpaperColorHints$1;->$onColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperColorHints$1;->this$0:Lcom/android/launcher3/util/WallpaperColorHints;

    invoke-static {v0}, Lcom/android/launcher3/util/WallpaperColorHints;->access$getWallpaperManager(Lcom/android/launcher3/util/WallpaperColorHints;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/util/WallpaperColorHints$1;->$onColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
