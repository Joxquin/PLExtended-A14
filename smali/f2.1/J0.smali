.class public final Lf2/J0;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:Lf2/J0;

.field public static final ENTRY_POINT_FIELD_NUMBER:I = 0x6

.field public static final FIRST_EDIT_TIME_MS_FIELD_NUMBER:I = 0x2

.field public static final LAST_EDIT_TIME_MS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final QUERY_CLEAR_TAP_TIMES_MS_FIELD_NUMBER:I = 0x5

.field public static final SUGGESTIONS_FIELD_NUMBER:I = 0x1

.field public static final SUGGESTION_LONG_PRESS_TIMES_MS_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private entryPoint_:I

.field private firstEditTimeMs_:J

.field private lastEditTimeMs_:J

.field private queryClearTapTimesMsMemoizedSerializedSize:I

.field private queryClearTapTimesMs_:Lcom/google/protobuf/Q;

.field private suggestionLongPressTimesMsMemoizedSerializedSize:I

.field private suggestionLongPressTimesMs_:Lcom/google/protobuf/Q;

.field private suggestions_:Lcom/google/protobuf/S;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf2/J0;

    invoke-direct {v0}, Lf2/J0;-><init>()V

    sput-object v0, Lf2/J0;->DEFAULT_INSTANCE:Lf2/J0;

    const-class v1, Lf2/J0;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lf2/J0;->suggestionLongPressTimesMsMemoizedSerializedSize:I

    iput v0, p0, Lf2/J0;->queryClearTapTimesMsMemoizedSerializedSize:I

    sget-object v0, Lcom/google/protobuf/A0;->g:Lcom/google/protobuf/A0;

    iput-object v0, p0, Lf2/J0;->suggestions_:Lcom/google/protobuf/S;

    sget-object v0, Lcom/google/protobuf/d0;->g:Lcom/google/protobuf/d0;

    iput-object v0, p0, Lf2/J0;->suggestionLongPressTimesMs_:Lcom/google/protobuf/Q;

    iput-object v0, p0, Lf2/J0;->queryClearTapTimesMs_:Lcom/google/protobuf/Q;

    return-void
.end method

.method public static a(Lf2/J0;Ljava/lang/Iterable;)V
    .locals 4

    iget-object v0, p0, Lf2/J0;->queryClearTapTimesMs_:Lcom/google/protobuf/Q;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/c;

    iget-boolean v1, v1, Lcom/google/protobuf/c;->d:Z

    if-nez v1, :cond_2

    check-cast v0, Lcom/google/protobuf/d0;

    iget v1, v0, Lcom/google/protobuf/d0;->f:I

    if-nez v1, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v1, 0x2

    :goto_0
    if-lt v2, v1, :cond_1

    new-instance v1, Lcom/google/protobuf/d0;

    iget-object v3, v0, Lcom/google/protobuf/d0;->e:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iget v0, v0, Lcom/google/protobuf/d0;->f:I

    invoke-direct {v1, v2, v0}, Lcom/google/protobuf/d0;-><init>([JI)V

    iput-object v1, p0, Lf2/J0;->queryClearTapTimesMs_:Lcom/google/protobuf/Q;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lf2/J0;->queryClearTapTimesMs_:Lcom/google/protobuf/Q;

    invoke-static {p1, p0}, Lcom/google/protobuf/b;->addAll(Ljava/lang/Iterable;Lcom/google/protobuf/S;)V

    return-void
.end method

.method public static b(Lf2/J0;Ljava/lang/Iterable;)V
    .locals 4

    iget-object v0, p0, Lf2/J0;->suggestionLongPressTimesMs_:Lcom/google/protobuf/Q;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/c;

    iget-boolean v1, v1, Lcom/google/protobuf/c;->d:Z

    if-nez v1, :cond_2

    check-cast v0, Lcom/google/protobuf/d0;

    iget v1, v0, Lcom/google/protobuf/d0;->f:I

    if-nez v1, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v1, 0x2

    :goto_0
    if-lt v2, v1, :cond_1

    new-instance v1, Lcom/google/protobuf/d0;

    iget-object v3, v0, Lcom/google/protobuf/d0;->e:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iget v0, v0, Lcom/google/protobuf/d0;->f:I

    invoke-direct {v1, v2, v0}, Lcom/google/protobuf/d0;-><init>([JI)V

    iput-object v1, p0, Lf2/J0;->suggestionLongPressTimesMs_:Lcom/google/protobuf/Q;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lf2/J0;->suggestionLongPressTimesMs_:Lcom/google/protobuf/Q;

    invoke-static {p1, p0}, Lcom/google/protobuf/b;->addAll(Ljava/lang/Iterable;Lcom/google/protobuf/S;)V

    return-void
.end method

.method public static c(Lf2/J0;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lf2/J0;->suggestions_:Lcom/google/protobuf/S;

    invoke-interface {v0}, Lcom/google/protobuf/S;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/J;->mutableCopy(Lcom/google/protobuf/S;)Lcom/google/protobuf/S;

    move-result-object v0

    iput-object v0, p0, Lf2/J0;->suggestions_:Lcom/google/protobuf/S;

    :cond_0
    iget-object p0, p0, Lf2/J0;->suggestions_:Lcom/google/protobuf/S;

    invoke-static {p1, p0}, Lcom/google/protobuf/b;->addAll(Ljava/lang/Iterable;Lcom/google/protobuf/S;)V

    return-void
.end method

.method public static d(Lf2/J0;Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;->getNumber()I

    move-result p1

    iput p1, p0, Lf2/J0;->entryPoint_:I

    iget p1, p0, Lf2/J0;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lf2/J0;->bitField0_:I

    return-void
.end method

.method public static e(Lf2/J0;J)V
    .locals 1

    iget v0, p0, Lf2/J0;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf2/J0;->bitField0_:I

    iput-wide p1, p0, Lf2/J0;->firstEditTimeMs_:J

    return-void
.end method

.method public static f(Lf2/J0;J)V
    .locals 1

    iget v0, p0, Lf2/J0;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lf2/J0;->bitField0_:I

    iput-wide p1, p0, Lf2/J0;->lastEditTimeMs_:J

    return-void
.end method

.method public static bridge synthetic g()Lf2/J0;
    .locals 1

    sget-object v0, Lf2/J0;->DEFAULT_INSTANCE:Lf2/J0;

    return-object v0
.end method

.method public static h()Lf2/J0;
    .locals 1

    sget-object v0, Lf2/J0;->DEFAULT_INSTANCE:Lf2/J0;

    return-object v0
.end method

.method public static p()Lf2/I0;
    .locals 1

    sget-object v0, Lf2/J0;->DEFAULT_INSTANCE:Lf2/J0;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, Lf2/I0;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lf2/J0;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lf2/J0;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lf2/J0;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lf2/J0;->DEFAULT_INSTANCE:Lf2/J0;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lf2/J0;->PARSER:Lcom/google/protobuf/x0;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    :pswitch_1
    sget-object p0, Lf2/J0;->DEFAULT_INSTANCE:Lf2/J0;

    return-object p0

    :pswitch_2
    new-instance p0, Lf2/I0;

    invoke-direct {p0}, Lf2/I0;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lf2/J0;

    invoke-direct {p0}, Lf2/J0;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "suggestions_"

    const-class v2, Lf2/x0;

    const-string v3, "firstEditTimeMs_"

    const-string v4, "lastEditTimeMs_"

    const-string v5, "suggestionLongPressTimesMs_"

    const-string v6, "queryClearTapTimesMs_"

    const-string v7, "entryPoint_"

    sget-object v8, Lf2/U;->a:Lf2/U;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0003\u0000\u0001\u001b\u0002\u1003\u0000\u0003\u1003\u0001\u0004&\u0005&\u0006\u100c\u0002"

    sget-object v0, Lf2/J0;->DEFAULT_INSTANCE:Lf2/J0;

    new-instance v1, Lcom/google/protobuf/B0;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/protobuf/B0;-><init>(Lcom/google/protobuf/J;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    const/4 p0, 0x0

    return-object p0

    :pswitch_6
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;
    .locals 0

    iget p0, p0, Lf2/J0;->entryPoint_:I

    invoke-static {p0}, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;->a(I)Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;->d:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;

    :cond_0
    return-object p0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lf2/J0;->firstEditTimeMs_:J

    return-wide v0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Lf2/J0;->lastEditTimeMs_:J

    return-wide v0
.end method

.method public final l()I
    .locals 0

    iget-object p0, p0, Lf2/J0;->queryClearTapTimesMs_:Lcom/google/protobuf/Q;

    check-cast p0, Lcom/google/protobuf/d0;

    iget p0, p0, Lcom/google/protobuf/d0;->f:I

    return p0
.end method

.method public final m()I
    .locals 0

    iget-object p0, p0, Lf2/J0;->suggestionLongPressTimesMs_:Lcom/google/protobuf/Q;

    check-cast p0, Lcom/google/protobuf/d0;

    iget p0, p0, Lcom/google/protobuf/d0;->f:I

    return p0
.end method

.method public final n(I)Lf2/x0;
    .locals 0

    iget-object p0, p0, Lf2/J0;->suggestions_:Lcom/google/protobuf/S;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf2/x0;

    return-object p0
.end method

.method public final o()I
    .locals 0

    iget-object p0, p0, Lf2/J0;->suggestions_:Lcom/google/protobuf/S;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
