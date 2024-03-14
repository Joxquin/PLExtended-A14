.class public final synthetic Lcom/android/quickstep/A1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/graphics/Matrix;

.field public final synthetic f:[Landroid/graphics/Matrix;

.field public final synthetic g:[Landroid/graphics/Matrix;

.field public final synthetic h:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

.field public final synthetic i:[Landroid/graphics/Matrix;

.field public final synthetic j:[Lcom/android/quickstep/views/TaskThumbnailView;


# direct methods
.method public synthetic constructor <init>(ILandroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;[Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/A1;->d:I

    iput-object p2, p0, Lcom/android/quickstep/A1;->e:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/android/quickstep/A1;->f:[Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/android/quickstep/A1;->g:[Landroid/graphics/Matrix;

    iput-object p5, p0, Lcom/android/quickstep/A1;->h:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iput-object p6, p0, Lcom/android/quickstep/A1;->i:[Landroid/graphics/Matrix;

    iput-object p7, p0, Lcom/android/quickstep/A1;->j:[Lcom/android/quickstep/views/TaskThumbnailView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/quickstep/A1;->d:I

    iget-object v1, p0, Lcom/android/quickstep/A1;->e:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/quickstep/A1;->f:[Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/quickstep/A1;->g:[Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/quickstep/A1;->h:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iget-object v5, p0, Lcom/android/quickstep/A1;->i:[Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/quickstep/A1;->j:[Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-static/range {v0 .. v6}, Lcom/android/quickstep/TaskViewUtils;->d(ILandroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;[Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;)V

    return-void
.end method
