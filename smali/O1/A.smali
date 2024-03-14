.class public final synthetic LO1/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LO1/E;

.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:Landroid/view/SurfaceControl;

.field public final synthetic g:Landroid/view/SurfaceControl;

.field public final synthetic h:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(LO1/E;LO1/q;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO1/A;->d:LO1/E;

    iput-object p2, p0, LO1/A;->e:Ljava/lang/Runnable;

    iput-object p3, p0, LO1/A;->f:Landroid/view/SurfaceControl;

    iput-object p4, p0, LO1/A;->g:Landroid/view/SurfaceControl;

    iput-object p5, p0, LO1/A;->h:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LO1/A;->d:LO1/E;

    iget-object v1, p0, LO1/A;->e:Ljava/lang/Runnable;

    iget-object v2, p0, LO1/A;->f:Landroid/view/SurfaceControl;

    iget-object v3, p0, LO1/A;->g:Landroid/view/SurfaceControl;

    iget-object p0, p0, LO1/A;->h:Landroid/view/SurfaceControl;

    iget-object v4, v0, LO1/E;->e:LO1/D;

    if-nez v4, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, LO1/E;->g:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->release()V

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method
