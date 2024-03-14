.class public final Lcom/android/launcher3/responsive/SizeSpec$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(Lcom/android/launcher3/util/ResourceHelper;Landroid/util/AttributeSet;)Lcom/android/launcher3/responsive/SizeSpec;
    .locals 6

    const-string v0, "resourceHelper"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/R$styleable;->SizeSpec:[I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/ResourceHelper;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/responsive/SizeSpec$Companion;->getValue(Landroid/content/res/TypedArray;I)F

    move-result v1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/launcher3/responsive/SizeSpec$Companion;->getValue(Landroid/content/res/TypedArray;I)F

    move-result v2

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/launcher3/responsive/SizeSpec$Companion;->getValue(Landroid/content/res/TypedArray;I)F

    move-result v3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/4 p1, 0x2

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Lcom/android/launcher3/responsive/SizeSpec;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/responsive/SizeSpec;-><init>(FFFZI)V

    return-object p0
.end method

.method private static getValue(Landroid/content/res/TypedArray;I)F
    .locals 3

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    int-to-float v2, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    :goto_0
    return v2
.end method
