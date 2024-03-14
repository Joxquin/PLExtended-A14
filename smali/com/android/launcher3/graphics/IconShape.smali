.class public abstract Lcom/android/launcher3/graphics/IconShape;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/android/launcher3/graphics/IconShape;

.field private static sNormalizationScale:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/graphics/IconShape$Circle;

    invoke-direct {v0}, Lcom/android/launcher3/graphics/IconShape$Circle;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    const v0, 0x3f6b851f    # 0.92f

    sput v0, Lcom/android/launcher3/graphics/IconShape;->sNormalizationScale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNormalizationScale()F
    .locals 1

    sget v0, Lcom/android/launcher3/graphics/IconShape;->sNormalizationScale:F

    return v0
.end method

.method public static getShape()Lcom/android/launcher3/graphics/IconShape;
    .locals 1

    sget-object v0, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    return-object v0
.end method

.method private static getShapeDefinition(Ljava/lang/String;F)Lcom/android/launcher3/graphics/IconShape;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Circle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "RoundedSquare"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "Squircle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "TearDrop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid shape type: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p0, Lcom/android/launcher3/graphics/IconShape$Circle;

    invoke-direct {p0}, Lcom/android/launcher3/graphics/IconShape$Circle;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;-><init>(F)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/launcher3/graphics/IconShape$Squircle;

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/IconShape$Squircle;-><init>(F)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/launcher3/graphics/IconShape$TearDrop;

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/IconShape$TearDrop;-><init>(F)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x5f5ab76f -> :sswitch_3
        -0x2aba5404 -> :sswitch_2
        -0x1b5a6df6 -> :sswitch_1
        0x7851a8f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 16

    new-instance v0, Landroid/graphics/Region;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Region;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    new-instance v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x1000000

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v4, v5, v7}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v1, v1, v2, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    invoke-virtual {v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    new-instance v6, Landroid/graphics/Region;

    invoke-direct {v6}, Landroid/graphics/Region;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f160011

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x3

    if-eq v9, v11, :cond_0

    if-eq v9, v10, :cond_0

    const-string v9, "shapes"

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    const v12, 0x7f04023a

    filled-new-array {v12}, [I

    move-result-object v12

    :goto_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    if-ne v13, v11, :cond_1

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v9, :cond_3

    :cond_1
    if-eq v13, v10, :cond_3

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    move-object/from16 v14, p0

    invoke-virtual {v14, v13, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v13, v1, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    invoke-static {v15, v10}, Lcom/android/launcher3/graphics/IconShape;->getShapeDefinition(Ljava/lang/String;F)Lcom/android/launcher3/graphics/IconShape;

    move-result-object v10

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v14, p0

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const v7, 0x7fffffff

    const/4 v8, 0x0

    move-object v9, v8

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/graphics/IconShape;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v12, v11, v5}, Lcom/android/launcher3/graphics/IconShape;->addToPath(FFFLandroid/graphics/Path;)V

    invoke-virtual {v6, v5, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    sget-object v11, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v6, v3, v11}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-static {v6}, Lcom/android/launcher3/icons/GraphicsUtils;->getArea(Landroid/graphics/Region;)I

    move-result v11

    if-ge v11, v7, :cond_4

    move-object v9, v10

    move v7, v11

    goto :goto_2

    :cond_5
    if-eqz v9, :cond_6

    sput-object v9, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    :cond_6
    invoke-static {v4, v2, v8}, Lcom/android/launcher3/icons/IconNormalizer;->normalizeAdaptiveIcon(Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;)F

    move-result v0

    sput v0, Lcom/android/launcher3/graphics/IconShape;->sNormalizationScale:F

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_7

    :try_start_3
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract addToPath(FFFLandroid/graphics/Path;)V
.end method

.method public abstract createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;
.end method

.method public abstract drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
.end method
