.class public Lv/l;
.super Lv/f;
.source "SourceFile"

# interfaces
.implements Lv/k;


# instance fields
.field public s0:[Lv/f;

.field public t0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lv/f;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lv/f;

    iput-object v0, p0, Lv/l;->s0:[Lv/f;

    const/4 v0, 0x0

    iput v0, p0, Lv/l;->t0:I

    return-void
.end method


# virtual methods
.method public final R(ILw/m;Ljava/util/ArrayList;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lv/l;->t0:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lv/l;->s0:[Lv/f;

    aget-object v2, v2, v1

    iget-object v3, p2, Lw/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget v1, p0, Lv/l;->t0:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lv/l;->s0:[Lv/f;

    aget-object v1, v1, v0

    invoke-static {v1, p1, p3, p2}, Lw/i;->a(Lv/f;ILjava/util/ArrayList;Lw/m;)Lw/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public a()V
    .locals 0

    return-void
.end method
