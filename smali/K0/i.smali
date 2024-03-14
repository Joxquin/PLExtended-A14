.class public final synthetic LK0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/android/launcher3/InvariantDeviceProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK0/i;->a:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iput-object p2, p0, LK0/i;->b:Landroid/content/Context;

    iput-object p3, p0, LK0/i;->c:Lcom/android/launcher3/InvariantDeviceProfile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v1, p0, LK0/i;->a:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iget-object v2, p0, LK0/i;->b:Landroid/content/Context;

    iget-object v4, p0, LK0/i;->c:Lcom/android/launcher3/InvariantDeviceProfile;

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_0

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p1, Lcom/android/launcher3/graphics/b;

    const/4 v5, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/graphics/b;-><init>(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Object;Lcom/android/launcher3/InvariantDeviceProfile;I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "PreviewSurfaceRenderer"

    const-string p1, "Model loading failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
