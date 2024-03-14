.class public final Lcom/android/launcher3/responsive/ResponsiveSpecsParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final resourceHelper:Lcom/android/launcher3/util/ResourceHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/ResourceHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->resourceHelper:Lcom/android/launcher3/util/ResourceHelper;

    return-void
.end method

.method private final parseSizeSpecs(Landroid/content/res/XmlResourceParser;)Ljava/util/Map;
    .locals 5

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parser.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const-string v4, "asAttributeSet(parser)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->resourceHelper:Lcom/android/launcher3/util/ResourceHelper;

    invoke-static {v4, v3}, Lcom/android/launcher3/responsive/SizeSpec$Companion;->create(Lcom/android/launcher3/util/ResourceHelper;Landroid/util/AttributeSet;)Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final parseXML(Ljava/lang/String;Lm3/p;)Ljava/util/List;
    .locals 6

    const-string v0, "map"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->resourceHelper:Lcom/android/launcher3/util/ResourceHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ResourceHelper;->getXml()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    :goto_0
    if-eq v4, v2, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    const-string v5, "asAttributeSet(parser)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/android/launcher3/R$styleable;->ResponsiveSpec:[I

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/ResourceHelper;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->parseSizeSpecs(Landroid/content/res/XmlResourceParser;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lm3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    instance-of p1, p0, Ljava/lang/NoSuchFieldException;

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    instance-of p1, p0, Ljava/io/IOException;

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    instance-of v2, p0, Lorg/xmlpull/v1/XmlPullParserException;

    :goto_2
    if-eqz v2, :cond_4

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failure parsing specs file."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p0
.end method
