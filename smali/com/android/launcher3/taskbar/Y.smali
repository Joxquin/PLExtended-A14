.class public final synthetic Lcom/android/launcher3/taskbar/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;


# instance fields
.field public final synthetic a:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic b:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/Y;->a:Landroid/view/SurfaceControl$Transaction;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/Y;->b:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final updateDragShadow(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/Y;->a:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/Y;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p0, p3, p3}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p0, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
