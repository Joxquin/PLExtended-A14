.class public final Lkotlinx/coroutines/channels/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/channels/k;

.field public static final b:I

.field public static final c:I

.field public static final d:Lkotlinx/coroutines/internal/E;

.field public static final e:Lkotlinx/coroutines/internal/E;

.field public static final f:Lkotlinx/coroutines/internal/E;

.field public static final g:Lkotlinx/coroutines/internal/E;

.field public static final h:Lkotlinx/coroutines/internal/E;

.field public static final i:Lkotlinx/coroutines/internal/E;

.field public static final j:Lkotlinx/coroutines/internal/E;

.field public static final k:Lkotlinx/coroutines/internal/E;

.field public static final l:Lkotlinx/coroutines/internal/E;

.field public static final m:Lkotlinx/coroutines/internal/E;

.field public static final n:Lkotlinx/coroutines/internal/E;

.field public static final o:Lkotlinx/coroutines/internal/E;

.field public static final p:Lkotlinx/coroutines/internal/E;

.field public static final q:Lkotlinx/coroutines/internal/E;

.field public static final r:Lkotlinx/coroutines/internal/E;

.field public static final s:Lkotlinx/coroutines/internal/E;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v6, Lkotlinx/coroutines/channels/k;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/channels/k;-><init>(JLkotlinx/coroutines/channels/k;Lkotlinx/coroutines/channels/c;I)V

    sput-object v6, Lkotlinx/coroutines/channels/d;->a:Lkotlinx/coroutines/channels/k;

    const-string v0, "kotlinx.coroutines.bufferedChannel.segmentSize"

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v2, v3}, Lkotlinx/coroutines/internal/F;->c(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Lkotlinx/coroutines/channels/d;->b:I

    const-string v0, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v1, 0x2710

    invoke-static {v0, v1, v2, v2, v3}, Lkotlinx/coroutines/internal/F;->c(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Lkotlinx/coroutines/channels/d;->c:I

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "BUFFERED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->e:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->f:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->g:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "POISONED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->h:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->i:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->j:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->k:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->m:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->n:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "FAILED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->o:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->p:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->q:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->r:Lkotlinx/coroutines/internal/E;

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/d;->s:Lkotlinx/coroutines/internal/E;

    return-void
.end method

.method public static final a(Lkotlinx/coroutines/g;Ljava/lang/Object;Lm3/l;)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/g;->f(Ljava/lang/Object;Lm3/l;)Lkotlinx/coroutines/internal/E;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/g;->w(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
