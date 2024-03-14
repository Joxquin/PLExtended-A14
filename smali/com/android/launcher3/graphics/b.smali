.class public final synthetic Lcom/android/launcher3/graphics/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/InvariantDeviceProfile;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Object;Lcom/android/launcher3/InvariantDeviceProfile;I)V
    .locals 0

    iput p5, p0, Lcom/android/launcher3/graphics/b;->d:I

    iput-object p1, p0, Lcom/android/launcher3/graphics/b;->f:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/graphics/b;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/graphics/b;->h:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/graphics/b;->e:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/graphics/b;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/b;->f:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;

    iget-object v1, p0, Lcom/android/launcher3/graphics/b;->g:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    iget-object v2, p0, Lcom/android/launcher3/graphics/b;->h:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/launcher3/graphics/b;->e:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->b(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/b;->f:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iget-object v1, p0, Lcom/android/launcher3/graphics/b;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/graphics/b;->h:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/graphics/b;->e:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-static {v1, p0, v0, v2}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->b(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Lcom/android/launcher3/model/BgDataModel;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
