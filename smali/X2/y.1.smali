.class public final LX2/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LX2/y;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, LX2/y;

    new-instance v1, LX2/s;

    invoke-direct {v1}, LX2/s;-><init>()V

    sget-object v2, LX2/t;->a:LX2/t;

    filled-new-array {v1, v2}, [LX2/x;

    move-result-object v1

    invoke-direct {v0, v1}, LX2/y;-><init>([LX2/x;)V

    sput-object v0, LX2/y;->b:LX2/y;

    return-void
.end method

.method public varargs constructor <init>([LX2/x;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LX2/y;->a:Ljava/util/concurrent/ConcurrentMap;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, LX2/y;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, LX2/x;->a()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
