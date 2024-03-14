.class final Lcom/android/launcher3/util/WallpaperColorHints$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field final synthetic $onColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

.field final synthetic this$0:Lcom/android/launcher3/util/WallpaperColorHints;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/WallpaperColorHints$2;->this$0:Lcom/android/launcher3/util/WallpaperColorHints;

    iput-object p2, p0, Lcom/android/launcher3/util/WallpaperColorHints$2;->$onColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/util/WallpaperColorHints$1;

    iget-object v2, p0, Lcom/android/launcher3/util/WallpaperColorHints$2;->this$0:Lcom/android/launcher3/util/WallpaperColorHints;

    iget-object p0, p0, Lcom/android/launcher3/util/WallpaperColorHints$2;->$onColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lcom/android/launcher3/util/WallpaperColorHints$1;-><init>(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperManager$OnColorsChangedListener;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
