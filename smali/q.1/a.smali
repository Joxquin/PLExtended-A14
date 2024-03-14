.class public final Lq/a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lq/f;


# direct methods
.method public constructor <init>(Lq/f;)V
    .locals 0

    iput-object p1, p0, Lq/a;->d:Lq/f;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lq/d;

    iget-object p0, p0, Lq/a;->d:Lq/f;

    invoke-direct {v0, p0}, Lq/d;-><init>(Lq/f;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lq/a;->d:Lq/f;

    iget p0, p0, Lq/m;->f:I

    return p0
.end method
