.class public final LF1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:Landroid/view/View;

.field public final d:Landroid/view/SyncRtSurfaceTransactionApplier;

.field public final e:Landroid/graphics/Matrix;

.field public final f:Landroid/view/SurfaceControl;

.field public final g:Landroid/view/ViewGroup;

.field public final h:LA1/a;

.field public final i:Landroid/graphics/Rect;

.field public final j:I


# direct methods
.method public constructor <init>(FLandroid/view/View;Landroid/view/SurfaceControl;Lcom/android/launcher3/views/BaseDragLayer;LA1/a;Landroid/graphics/Rect;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LF1/f;->e:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, LF1/f;->a:F

    iput p1, p0, LF1/f;->b:F

    iput-object p2, p0, LF1/f;->c:Landroid/view/View;

    new-instance p1, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object p1, p0, LF1/f;->d:Landroid/view/SyncRtSurfaceTransactionApplier;

    iput-object p3, p0, LF1/f;->f:Landroid/view/SurfaceControl;

    iput-object p4, p0, LF1/f;->g:Landroid/view/ViewGroup;

    iput-object p5, p0, LF1/f;->h:LA1/a;

    iput-object p6, p0, LF1/f;->i:Landroid/graphics/Rect;

    iput p7, p0, LF1/f;->j:I

    return-void
.end method
