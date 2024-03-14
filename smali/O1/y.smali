.class public final synthetic LO1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic b:Landroid/view/SurfaceControl;

.field public final synthetic c:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO1/y;->a:Landroid/view/SurfaceControl$Transaction;

    iput-object p2, p0, LO1/y;->b:Landroid/view/SurfaceControl;

    iput-object p3, p0, LO1/y;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LO1/y;->a:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, LO1/y;->b:Landroid/view/SurfaceControl;

    iget-object p0, p0, LO1/y;->c:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, p0, v0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method
