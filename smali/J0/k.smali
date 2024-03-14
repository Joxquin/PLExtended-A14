.class public final synthetic LJ0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/views/ActivityContext;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Landroid/graphics/Canvas;

.field public final synthetic h:Landroid/graphics/Canvas;

.field public final synthetic i:Landroid/graphics/Canvas;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/ActivityContext;IILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ0/k;->d:Lcom/android/launcher3/views/ActivityContext;

    iput p2, p0, LJ0/k;->e:I

    iput p3, p0, LJ0/k;->f:I

    iput-object p4, p0, LJ0/k;->g:Landroid/graphics/Canvas;

    iput-object p5, p0, LJ0/k;->h:Landroid/graphics/Canvas;

    iput-object p6, p0, LJ0/k;->i:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, LJ0/k;->d:Lcom/android/launcher3/views/ActivityContext;

    iget v1, p0, LJ0/k;->e:I

    iget v2, p0, LJ0/k;->f:I

    iget-object v3, p0, LJ0/k;->g:Landroid/graphics/Canvas;

    iget-object v4, p0, LJ0/k;->h:Landroid/graphics/Canvas;

    iget-object v5, p0, LJ0/k;->i:Landroid/graphics/Canvas;

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->a(Lcom/android/launcher3/views/ActivityContext;IILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V

    return-void
.end method
