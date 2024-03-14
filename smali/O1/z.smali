.class public final synthetic LO1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:LO1/E;

.field public final synthetic b:Landroid/graphics/Point;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(LO1/E;Landroid/graphics/Point;LO1/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO1/z;->a:LO1/E;

    iput-object p2, p0, LO1/z;->b:Landroid/graphics/Point;

    iput-object p3, p0, LO1/z;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LO1/z;->a:LO1/E;

    iget-object v1, p0, LO1/z;->b:Landroid/graphics/Point;

    iget-object p0, p0, LO1/z;->c:Ljava/lang/Runnable;

    check-cast p1, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, LO1/D;

    iget-object v3, v0, LO1/E;->a:LO1/l;

    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v2, v3, p1, v1, p0}, LO1/D;-><init>(LO1/l;Landroid/graphics/Bitmap;Landroid/graphics/Point;Ljava/lang/Runnable;)V

    iput-object v2, v0, LO1/E;->e:LO1/D;

    iget-object p0, v0, LO1/E;->b:LO1/j;

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :goto_0
    return-void
.end method
