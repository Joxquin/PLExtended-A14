.class public final synthetic LK0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK0/h;->d:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iput-object p2, p0, LK0/h;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LK0/h;->d:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iget-object p0, p0, LK0/h;->e:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->c(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;)Landroid/view/SurfaceControlViewHost;

    move-result-object p0

    return-object p0
.end method
