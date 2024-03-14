.class public final LY2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:Ljava/util/Queue;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x4000

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, LY2/e;->a:I

    const/high16 v1, 0x20000

    div-int/2addr v1, v0

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, LY2/e;->b:Ljava/util/Queue;

    return-void
.end method

.method public static a([B)V
    .locals 2

    array-length v0, p0

    sget v1, LY2/e;->a:I

    if-ne v0, v1, :cond_0

    sget-object v0, LY2/e;->b:Ljava/util/Queue;

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
