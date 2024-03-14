.class public final synthetic Lcom/android/launcher3/touch/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Landroid/view/animation/Interpolator;


# direct methods
.method public synthetic constructor <init>(FLandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/touch/c;->a:F

    iput-object p2, p0, Lcom/android/launcher3/touch/c;->b:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/touch/c;->a:F

    iget-object p0, p0, Lcom/android/launcher3/touch/c;->b:Landroid/view/animation/Interpolator;

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    :goto_0
    return p0
.end method
