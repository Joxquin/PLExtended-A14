.class public final Lt3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lt3/f;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lt3/f;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lt3/a;->a:[Lt3/f;

    return-void
.end method
