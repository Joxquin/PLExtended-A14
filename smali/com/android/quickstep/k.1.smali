.class public final synthetic Lcom/android/quickstep/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/AbsSwipeUpHandler;

.field public final synthetic e:F

.field public final synthetic f:Z

.field public final synthetic g:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;FZLandroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/k;->d:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput p2, p0, Lcom/android/quickstep/k;->e:F

    iput-boolean p3, p0, Lcom/android/quickstep/k;->f:Z

    iput-object p4, p0, Lcom/android/quickstep/k;->g:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/k;->d:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget v1, p0, Lcom/android/quickstep/k;->e:F

    iget-boolean v2, p0, Lcom/android/quickstep/k;->f:Z

    iget-object p0, p0, Lcom/android/quickstep/k;->g:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->L(Lcom/android/quickstep/AbsSwipeUpHandler;FZLandroid/graphics/PointF;)V

    return-void
.end method
