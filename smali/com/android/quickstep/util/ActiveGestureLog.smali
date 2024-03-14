.class public Lcom/android/quickstep/util/ActiveGestureLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

.field public static final INTENT_EXTRA_LOG_TRACE_ID:Ljava/lang/String; = "INTENT_EXTRA_LOG_TRACE_ID"

.field private static final MAX_GESTURES_TRACKED:I = 0xa

.field private static final TYPE_BOOL_FALSE:I = 0x4

.field private static final TYPE_BOOL_TRUE:I = 0x3

.field private static final TYPE_FLOAT:I = 0x1

.field private static final TYPE_GESTURE_EVENT:I = 0x6

.field private static final TYPE_INPUT_CONSUMER:I = 0x5

.field private static final TYPE_INTEGER:I = 0x2

.field private static final TYPE_ONE_OFF:I


# instance fields
.field private final logs:[Lcom/android/quickstep/util/ActiveGestureLog$EventLog;

.field private mCurrentLogId:I

.field private nextIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureLog;

    invoke-direct {v0}, Lcom/android/quickstep/util/ActiveGestureLog;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/quickstep/util/ActiveGestureLog;->mCurrentLogId:I

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/quickstep/util/ActiveGestureLog$EventLog;

    iput-object v0, p0, Lcom/android/quickstep/util/ActiveGestureLog;->logs:[Lcom/android/quickstep/util/ActiveGestureLog$EventLog;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/ActiveGestureLog;->nextIndex:I

    return-void
.end method

.method private addLog(ILjava/lang/String;FLcom/android/quickstep/util/ActiveGestureLog$CompoundString;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V
    .locals 10

    .line 9
    iget-object v0, p0, Lcom/android/quickstep/util/ActiveGestureLog;->logs:[Lcom/android/quickstep/util/ActiveGestureLog$EventLog;

    iget v1, p0, Lcom/android/quickstep/util/ActiveGestureLog;->nextIndex:I

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 10
    iget v2, p0, Lcom/android/quickstep/util/ActiveGestureLog;->mCurrentLogId:I

    iget v3, v0, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;->logId:I

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;->eventEntries:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move-object v3, p0

    move-object v4, v2

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 14
    invoke-direct/range {v3 .. v9}, Lcom/android/quickstep/util/ActiveGestureLog;->isEntrySame(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;ILjava/lang/String;FLcom/android/quickstep/util/ActiveGestureLog$CompoundString;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 15
    invoke-static {v2}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->a(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {v2, p0}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->h(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;I)V

    return-void

    .line 16
    :cond_2
    new-instance p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;

    invoke-direct {p0, v1}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;-><init>(I)V

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 17
    invoke-static/range {v3 .. v8}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->i(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;ILjava/lang/String;FLcom/android/quickstep/util/ActiveGestureLog$CompoundString;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    .line 18
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 19
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;

    iget v2, p0, Lcom/android/quickstep/util/ActiveGestureLog;->mCurrentLogId:I

    invoke-direct {v0, v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;-><init>(II)V

    .line 20
    new-instance v2, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;

    invoke-direct {v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;-><init>(I)V

    move-object v3, v2

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 21
    invoke-static/range {v3 .. v8}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->i(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;ILjava/lang/String;FLcom/android/quickstep/util/ActiveGestureLog$CompoundString;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    .line 22
    iget-object p1, v0, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;->eventEntries:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcom/android/quickstep/util/ActiveGestureLog;->logs:[Lcom/android/quickstep/util/ActiveGestureLog$EventLog;

    iget p2, p0, Lcom/android/quickstep/util/ActiveGestureLog;->nextIndex:I

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 24
    array-length p1, p1

    rem-int/2addr p2, p1

    iput p2, p0, Lcom/android/quickstep/util/ActiveGestureLog;->nextIndex:I

    return-void
.end method

.method private isEntrySame(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;ILjava/lang/String;FLcom/android/quickstep/util/ActiveGestureLog$CompoundString;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->g(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)I

    move-result p0

    if-ne p0, p2, :cond_0

    invoke-static {p1}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->b(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->c(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)F

    move-result p0

    invoke-static {p0, p4}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->e(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->d(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    move-result-object p0

    if-ne p0, p6, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addLog(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)V
    .locals 6

    const/4 v1, 0x5

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(ILjava/lang/String;FLcom/android/quickstep/util/ActiveGestureLog$CompoundString;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    return-void
.end method

.method public addLog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    return-void
.end method

.method public addLog(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;ILcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    return-void
.end method

.method public addLog(Ljava/lang/String;ILcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V
    .locals 6

    const/4 v1, 0x2

    int-to-float v3, p2

    .line 6
    sget-object v4, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->NO_OP:Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(ILjava/lang/String;FLcom/android/quickstep/util/ActiveGestureLog$CompoundString;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    return-void
.end method

.method public addLog(Ljava/lang/String;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 5
    sget-object v4, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->NO_OP:Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(ILjava/lang/String;FLcom/android/quickstep/util/ActiveGestureLog$CompoundString;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    return-void
.end method

.method public addLog(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;ZLcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    return-void
.end method

.method public addLog(Ljava/lang/String;ZLcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V
    .locals 6

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    move v1, p2

    const/4 v3, 0x0

    .line 7
    sget-object v4, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->NO_OP:Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(ILjava/lang/String;FLcom/android/quickstep/util/ActiveGestureLog$CompoundString;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ActiveGestureErrorDetector:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/util/ActiveGestureLog;->logs:[Lcom/android/quickstep/util/ActiveGestureLog$EventLog;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget v3, p0, Lcom/android/quickstep/util/ActiveGestureLog;->nextIndex:I

    add-int/2addr v3, v1

    array-length v4, v2

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2, v2}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->analyseAndDump(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/quickstep/util/ActiveGestureLog$EventLog;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ActiveGestureLog history:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss.SSSZ  "

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    :goto_2
    iget-object v3, p0, Lcom/android/quickstep/util/ActiveGestureLog;->logs:[Lcom/android/quickstep/util/ActiveGestureLog$EventLog;

    array-length v4, v3

    if-ge v0, v4, :cond_5

    iget v4, p0, Lcom/android/quickstep/util/ActiveGestureLog;->nextIndex:I

    add-int/2addr v4, v0

    array-length v5, v3

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    if-nez v3, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v4, "\tLogs for logId: "

    invoke-static {p1, v4}, Lt/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;->logId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;->eventEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;

    invoke-static {v4}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->f(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/Date;->setTime(J)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\t\t"

    invoke-static {p1, v6}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->b(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->g(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)I

    move-result v6

    const-string v7, ": "

    packed-switch v6, :pswitch_data_0

    goto :goto_4

    :pswitch_1
    invoke-static {v4}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->e(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_2
    const-string v6, ": false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_3
    const-string v6, ": true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->c(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_5
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->c(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_4
    invoke-static {v4}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->a(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, " & "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->a(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " similar events"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLogId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/ActiveGestureLog;->mCurrentLogId:I

    return p0
.end method

.method public incrementLogId()I
    .locals 2

    iget v0, p0, Lcom/android/quickstep/util/ActiveGestureLog;->mCurrentLogId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/quickstep/util/ActiveGestureLog;->mCurrentLogId:I

    return v0
.end method

.method public trackEvent(Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V
    .locals 6

    const/4 v1, 0x6

    const-string v2, ""

    const/4 v3, 0x0

    sget-object v4, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->NO_OP:Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(ILjava/lang/String;FLcom/android/quickstep/util/ActiveGestureLog$CompoundString;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    return-void
.end method
