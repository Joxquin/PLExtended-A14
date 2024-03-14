.class public final Lcom/android/launcher3/DevicePaddings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mDevicePaddings:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "DevicePaddings"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/DevicePaddings;->mDevicePaddings:Ljava/util/ArrayList;

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    :cond_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_a

    :cond_1
    const/4 v7, 0x1

    if-eq v5, v7, :cond_a

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    const-string v5, "device-paddings"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    if-ne v9, v6, :cond_2

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-le v10, v5, :cond_0

    :cond_2
    if-eq v9, v7, :cond_0

    if-ne v9, v8, :cond_9

    const-string v9, "device-padding"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    sget-object v10, Lcom/android/launcher3/R$styleable;->DevicePadding:[I

    invoke-virtual {v1, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    const/4 v11, 0x0

    move-object v12, v11

    move-object v13, v12

    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    if-ne v14, v6, :cond_3

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v9, :cond_7

    :cond_3
    if-eq v14, v7, :cond_7

    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v15

    if-ne v14, v8, :cond_6

    const-string v14, "workspaceTopPadding"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lcom/android/launcher3/DevicePaddings$PaddingFormula;

    invoke-direct {v6, v1, v15}, Lcom/android/launcher3/DevicePaddings$PaddingFormula;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v11, v6

    goto :goto_2

    :cond_4
    const-string v6, "workspaceBottomPadding"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Lcom/android/launcher3/DevicePaddings$PaddingFormula;

    invoke-direct {v6, v1, v15}, Lcom/android/launcher3/DevicePaddings$PaddingFormula;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v12, v6

    goto :goto_2

    :cond_5
    const-string v6, "hotseatBottomPadding"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Lcom/android/launcher3/DevicePaddings$PaddingFormula;

    invoke-direct {v6, v1, v15}, Lcom/android/launcher3/DevicePaddings$PaddingFormula;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v13, v6

    :cond_6
    :goto_2
    const/4 v6, 0x3

    goto :goto_1

    :cond_7
    new-instance v6, Lcom/android/launcher3/DevicePaddings$DevicePadding;

    invoke-direct {v6, v10, v11, v12, v13}, Lcom/android/launcher3/DevicePaddings$DevicePadding;-><init>(ILcom/android/launcher3/DevicePaddings$PaddingFormula;Lcom/android/launcher3/DevicePaddings$PaddingFormula;Lcom/android/launcher3/DevicePaddings$PaddingFormula;)V

    invoke-virtual {v6}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->isValid()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v0, Lcom/android/launcher3/DevicePaddings;->mDevicePaddings:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const-string v6, "Invalid device padding found."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_3
    const/4 v6, 0x3

    goto/16 :goto_0

    :cond_a
    :try_start_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v0, v0, Lcom/android/launcher3/DevicePaddings;->mDevicePaddings:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/p;

    invoke-direct {v1}, Lcom/android/launcher3/p;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_b

    :try_start_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Failure parsing device padding layout."

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
