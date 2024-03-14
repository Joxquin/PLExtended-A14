.class public final Lcom/android/launcher3/responsive/HotseatSpecs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final specs:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/responsive/HotseatSpecs;->specs:Ljava/util/List;

    return-void
.end method

.method public static final create(Lcom/android/launcher3/util/ResourceHelper;)Lcom/android/launcher3/responsive/HotseatSpecs;
    .locals 4

    new-instance v0, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;

    invoke-direct {v0, p0}, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;-><init>(Lcom/android/launcher3/util/ResourceHelper;)V

    const-string p0, "hotseatSpec"

    sget-object v1, Lcom/android/launcher3/responsive/HotseatSpecs$Companion$create$specs$1;->INSTANCE:Lcom/android/launcher3/responsive/HotseatSpecs$Companion$create$specs$1;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->parseXML(Ljava/lang/String;Lm3/p;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/responsive/HotseatSpec;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/HotseatSpec;->getSpecType()Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;->HEIGHT:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/android/launcher3/responsive/HotseatSpecs;

    invoke-direct {p0, v0}, Lcom/android/launcher3/responsive/HotseatSpecs;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public final getCalculatedHeightSpec(I)Lcom/android/launcher3/responsive/CalculatedHotseatSpec;
    .locals 4

    iget-object p0, p0, Lcom/android/launcher3/responsive/HotseatSpecs;->specs:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/responsive/HotseatSpec;

    invoke-virtual {v3}, Lcom/android/launcher3/responsive/HotseatSpec;->getMaxAvailableSize()I

    move-result v3

    if-gt p1, v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lcom/android/launcher3/responsive/HotseatSpec;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    new-instance p0, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;-><init>(ILcom/android/launcher3/responsive/HotseatSpec;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "No available height spec found within "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
