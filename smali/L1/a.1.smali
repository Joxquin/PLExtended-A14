.class public final LL1/a;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Z


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;IZII)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput-object p1, p0, LL1/a;->a:Landroid/graphics/RectF;

    iput p2, p0, LL1/a;->b:I

    iput-boolean p3, p0, LL1/a;->e:Z

    iput p4, p0, LL1/a;->c:I

    iput p5, p0, LL1/a;->d:I

    return-void
.end method

.method public static a(Landroid/graphics/RectF;IZII)LL1/a;
    .locals 7

    new-instance v6, LL1/a;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, LL1/a;-><init>(Landroid/graphics/RectF;IZII)V

    return-object v6
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    sget-boolean p2, LL1/r;->a:Z

    if-eqz p2, :cond_0

    iget p2, p0, LL1/a;->b:I

    mul-int/lit8 p2, p2, 0xa

    const/16 p3, 0x32

    const/16 p4, 0x64

    invoke-static {p3, p4, p4, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->setColor(I)V

    float-to-int p2, p5

    int-to-float p4, p2

    int-to-float p5, p6

    iget-object p0, p0, LL1/a;->a:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    float-to-int p0, p0

    add-int/2addr p2, p0

    int-to-float p6, p2

    int-to-float p7, p8

    move-object p3, p1

    move-object p8, p9

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    if-eqz p5, :cond_0

    iget-object p1, p0, LL1/a;->a:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    const/4 p1, 0x0

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_0
    iget-object p0, p0, LL1/a;->a:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method
