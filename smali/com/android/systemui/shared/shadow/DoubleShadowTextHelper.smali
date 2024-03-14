.class public final Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;

    invoke-direct {v0}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;->INSTANCE:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyShadows(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/widget/TextView;Landroid/graphics/Canvas;Lm3/a;)V
    .locals 4

    const-string p0, "keyShadowInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ambientShadowInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "canvas"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onDrawCallback"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getBlur()F

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getOffsetX()F

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getOffsetY()F

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getAlpha()F

    move-result p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v3, v3}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p2

    invoke-virtual {p0, v0, v1, v2, p2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-interface {p5}, Lm3/a;->invoke()Ljava/lang/Object;

    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p3}, Landroid/widget/TextView;->getScrollX()I

    move-result p0

    invoke-virtual {p3}, Landroid/widget/TextView;->getScrollY()I

    move-result p2

    invoke-virtual {p3}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3}, Landroid/widget/TextView;->getScrollX()I

    move-result p2

    invoke-virtual {p3}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p3}, Landroid/widget/TextView;->getScrollY()I

    move-result p2

    invoke-virtual {p3}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p4, p0, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getBlur()F

    move-result p2

    invoke-virtual {p1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getOffsetX()F

    move-result p3

    invoke-virtual {p1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getOffsetY()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->getAlpha()F

    move-result p1

    invoke-static {p1, v3, v3, v3}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p1

    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-interface {p5}, Lm3/a;->invoke()Ljava/lang/Object;

    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
