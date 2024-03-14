.class public final synthetic Lcom/android/launcher3/anim/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/j;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/anim/FlingSpringAnim;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/dynamicanimation/animation/q;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Landroidx/dynamicanimation/animation/j;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/anim/FlingSpringAnim;Ljava/lang/Object;Landroidx/dynamicanimation/animation/q;FFLcom/android/quickstep/util/F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/h;->a:Lcom/android/launcher3/anim/FlingSpringAnim;

    iput-object p2, p0, Lcom/android/launcher3/anim/h;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/h;->c:Landroidx/dynamicanimation/animation/q;

    iput p4, p0, Lcom/android/launcher3/anim/h;->d:F

    iput p5, p0, Lcom/android/launcher3/anim/h;->e:F

    iput-object p6, p0, Lcom/android/launcher3/anim/h;->f:Landroidx/dynamicanimation/animation/j;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/m;ZFF)V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/anim/h;->a:Lcom/android/launcher3/anim/FlingSpringAnim;

    iget-object v1, p0, Lcom/android/launcher3/anim/h;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/anim/h;->c:Landroidx/dynamicanimation/animation/q;

    iget v3, p0, Lcom/android/launcher3/anim/h;->d:F

    iget v4, p0, Lcom/android/launcher3/anim/h;->e:F

    iget-object v5, p0, Lcom/android/launcher3/anim/h;->f:Landroidx/dynamicanimation/animation/j;

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/anim/FlingSpringAnim;->a(Lcom/android/launcher3/anim/FlingSpringAnim;Ljava/lang/Object;Landroidx/dynamicanimation/animation/q;FFLandroidx/dynamicanimation/animation/j;FF)V

    return-void
.end method
