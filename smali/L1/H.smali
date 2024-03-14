.class public final LL1/H;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# instance fields
.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public static a(LL1/H;Landroid/view/View;Landroid/graphics/Bitmap;LL1/w;FF)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p3, LL1/w;->q:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleX()F

    move-result p0

    move v4, p0

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    new-instance p0, LL1/G;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, LL1/G;-><init>(Landroid/graphics/Bitmap;Landroid/view/View;FFF)V

    new-instance p2, Landroid/content/ClipData$Item;

    const-string p4, "image"

    invoke-direct {p2, p4}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    new-instance p4, Landroid/content/ClipDescription;

    const-string p5, "text/plain"

    filled-new-array {p5}, [Ljava/lang/String;

    move-result-object p5

    const-string v1, "dragToShareImage"

    invoke-direct {p4, v1, p5}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance p5, Landroid/content/ClipData;

    invoke-direct {p5, p4, p2}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    const/4 p2, 0x0

    const/16 p4, 0x200

    invoke-virtual {p1, p5, p0, p2, p4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    sget-object p1, LL1/G;->k:LL1/F;

    const/4 p2, 0x1

    new-array p4, p2, [F

    const/4 p5, 0x0

    aput v0, p4, p5

    invoke-static {p0, p1, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p1, LU/b;

    invoke-direct {p1}, LU/b;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p3, p5}, LL1/w;->b(Z)V

    return-void
.end method
