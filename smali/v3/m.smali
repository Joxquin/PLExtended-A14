.class public final Lv3/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:J

.field public static final c:I

.field public static final d:I

.field public static final e:J

.field public static final f:Lv3/f;

.field public static final g:Lv3/k;

.field public static final h:Lv3/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "kotlinx.coroutines.scheduler.default.name"

    invoke-static {v0}, Lkotlinx/coroutines/internal/F;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "DefaultDispatcher"

    :cond_0
    sput-object v0, Lv3/m;->a:Ljava/lang/String;

    const-string v1, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v2, 0x186a0

    const-wide/16 v4, 0x1

    const-wide v6, 0x7fffffffffffffffL

    invoke-static/range {v1 .. v7}, Lkotlinx/coroutines/internal/F;->a(Ljava/lang/String;JJJ)J

    move-result-wide v0

    sput-wide v0, Lv3/m;->b:J

    sget v0, Lkotlinx/coroutines/internal/G;->a:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    const/16 v1, 0x8

    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v1}, Lkotlinx/coroutines/internal/F;->c(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Lv3/m;->c:I

    const-string v0, "kotlinx.coroutines.scheduler.max.pool.size"

    const/4 v1, 0x4

    const v2, 0x1ffffe

    invoke-static {v0, v2, v4, v2, v1}, Lkotlinx/coroutines/internal/F;->c(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Lv3/m;->d:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v5, "kotlinx.coroutines.scheduler.keep.alive.sec"

    const-wide/16 v6, 0x3c

    const-wide/16 v8, 0x1

    const-wide v10, 0x7fffffffffffffffL

    invoke-static/range {v5 .. v11}, Lkotlinx/coroutines/internal/F;->a(Ljava/lang/String;JJJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lv3/m;->e:J

    sget-object v0, Lv3/f;->a:Lv3/f;

    sput-object v0, Lv3/m;->f:Lv3/f;

    new-instance v0, Lv3/k;

    invoke-direct {v0, v4}, Lv3/k;-><init>(I)V

    sput-object v0, Lv3/m;->g:Lv3/k;

    new-instance v0, Lv3/k;

    invoke-direct {v0, v3}, Lv3/k;-><init>(I)V

    sput-object v0, Lv3/m;->h:Lv3/k;

    return-void
.end method
