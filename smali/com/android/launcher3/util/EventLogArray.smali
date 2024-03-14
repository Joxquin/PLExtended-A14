.class public final Lcom/android/launcher3/util/EventLogArray;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/android/launcher3/util/EventLogArray$Companion;


# instance fields
.field private final logs:[Lcom/android/launcher3/util/EventLogArray$EventEntry;

.field private final name:Ljava/lang/String;

.field private nextIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/EventLogArray$Companion;

    invoke-direct {v0}, Lcom/android/launcher3/util/EventLogArray$Companion;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/EventLogArray;->Companion:Lcom/android/launcher3/util/EventLogArray$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/EventLogArray;->name:Ljava/lang/String;

    const/16 p1, 0x14

    new-array p1, p1, [Lcom/android/launcher3/util/EventLogArray$EventEntry;

    iput-object p1, p0, Lcom/android/launcher3/util/EventLogArray;->logs:[Lcom/android/launcher3/util/EventLogArray$EventEntry;

    return-void
.end method

.method private final addLog(Ljava/lang/String;I)V
    .locals 7

    .line 4
    iget v0, p0, Lcom/android/launcher3/util/EventLogArray;->nextIndex:I

    iget-object v1, p0, Lcom/android/launcher3/util/EventLogArray;->logs:[Lcom/android/launcher3/util/EventLogArray$EventEntry;

    array-length v2, v1

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    array-length v3, v1

    rem-int/2addr v2, v3

    .line 5
    array-length v3, v1

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    array-length v3, v1

    rem-int/2addr v0, v3

    .line 6
    aget-object v3, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v3}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->getType()I

    move-result v6

    if-ne v6, p2, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->getEvent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    .line 8
    aget-object v3, v1, v0

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v3}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->getType()I

    move-result v6

    if-ne v6, p2, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->getEvent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    if-eqz v4, :cond_2

    .line 10
    aget-object p0, v1, v2

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->update(Ljava/lang/String;I)V

    .line 11
    aget-object p0, v1, v0

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->getDuplicateCount()I

    move-result p1

    add-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->setDuplicateCount(I)V

    return-void

    .line 12
    :cond_2
    iget v0, p0, Lcom/android/launcher3/util/EventLogArray;->nextIndex:I

    aget-object v2, v1, v0

    if-nez v2, :cond_3

    .line 13
    new-instance v2, Lcom/android/launcher3/util/EventLogArray$EventEntry;

    invoke-direct {v2}, Lcom/android/launcher3/util/EventLogArray$EventEntry;-><init>()V

    aput-object v2, v1, v0

    .line 14
    :cond_3
    aget-object v0, v1, v0

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->update(Ljava/lang/String;I)V

    .line 15
    iget p1, p0, Lcom/android/launcher3/util/EventLogArray;->nextIndex:I

    add-int/2addr p1, v5

    array-length p2, v1

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/util/EventLogArray;->nextIndex:I

    return-void
.end method


# virtual methods
.method public final addLog()V
    .locals 2

    const-string v0, "prepareForUnlock"

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;I)V

    return-void
.end method

.method public final addLog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;I)V

    return-void
.end method

.method public final addLog(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 3
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;I)V

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/EventLogArray;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event history:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "  HH:mm:ss.SSSZ  "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/util/EventLogArray;->logs:[Lcom/android/launcher3/util/EventLogArray$EventEntry;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    iget v5, p0, Lcom/android/launcher3/util/EventLogArray;->nextIndex:I

    array-length v6, v2

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    array-length v7, v2

    rem-int/2addr v5, v7

    aget-object v5, v2, v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->getTime()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/util/Date;->setTime(J)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->getEvent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->getType()I

    move-result v8

    const-string v9, ": "

    if-eq v8, v6, :cond_4

    const/4 v6, 0x2

    if-eq v8, v6, :cond_3

    const/4 v6, 0x3

    if-eq v8, v6, :cond_2

    const/4 v6, 0x4

    if-eq v8, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, ": false"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v6, ": true"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->getExtras()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->getExtras()F

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v5}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->getDuplicateCount()I

    move-result v6

    if-lez v6, :cond_5

    const-string v6, " & "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->getDuplicateCount()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " similar events"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
