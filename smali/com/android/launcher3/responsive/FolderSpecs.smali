.class public final Lcom/android/launcher3/responsive/FolderSpecs;
.super Lcom/android/launcher3/responsive/ResponsiveSpecs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "widthSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "heightSpecs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/responsive/ResponsiveSpecs;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final create(Lcom/android/launcher3/util/ResourceHelper;)Lcom/android/launcher3/responsive/FolderSpecs;
    .locals 5

    new-instance v0, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;

    invoke-direct {v0, p0}, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;-><init>(Lcom/android/launcher3/util/ResourceHelper;)V

    const-string p0, "folderSpec"

    sget-object v1, Lcom/android/launcher3/responsive/FolderSpecs$Companion$create$specs$1;->INSTANCE:Lcom/android/launcher3/responsive/FolderSpecs$Companion$create$specs$1;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->parseXML(Ljava/lang/String;Lm3/p;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/responsive/FolderSpec;

    invoke-virtual {v3}, Lcom/android/launcher3/responsive/FolderSpec;->getSpecType()Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;->WIDTH:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/responsive/FolderSpecs;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/responsive/FolderSpecs;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method
