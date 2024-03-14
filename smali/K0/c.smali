.class public final synthetic LK0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/graphics/IconShape$Squircle;

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:F

.field public final synthetic m:F

.field public final synthetic n:F

.field public final synthetic o:Landroid/graphics/Path;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/IconShape$Squircle;FFFFFFFFFFLandroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK0/c;->d:Lcom/android/launcher3/graphics/IconShape$Squircle;

    iput p2, p0, LK0/c;->e:F

    iput p3, p0, LK0/c;->f:F

    iput p4, p0, LK0/c;->g:F

    iput p5, p0, LK0/c;->h:F

    iput p6, p0, LK0/c;->i:F

    iput p7, p0, LK0/c;->j:F

    iput p8, p0, LK0/c;->k:F

    iput p9, p0, LK0/c;->l:F

    iput p10, p0, LK0/c;->m:F

    iput p11, p0, LK0/c;->n:F

    iput-object p12, p0, LK0/c;->o:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, LK0/c;->d:Lcom/android/launcher3/graphics/IconShape$Squircle;

    iget v2, v0, LK0/c;->e:F

    iget v3, v0, LK0/c;->f:F

    iget v4, v0, LK0/c;->g:F

    iget v5, v0, LK0/c;->h:F

    iget v6, v0, LK0/c;->i:F

    iget v7, v0, LK0/c;->j:F

    iget v8, v0, LK0/c;->k:F

    iget v9, v0, LK0/c;->l:F

    const/4 v10, 0x0

    iget v11, v0, LK0/c;->m:F

    const/4 v12, 0x0

    iget v13, v0, LK0/c;->n:F

    iget-object v14, v0, LK0/c;->o:Landroid/graphics/Path;

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    move-object/from16 v14, p1

    invoke-static/range {v0 .. v14}, Lcom/android/launcher3/graphics/IconShape$Squircle;->a(Lcom/android/launcher3/graphics/IconShape$Squircle;FFFFFFFFFFFFLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V

    return-void
.end method
