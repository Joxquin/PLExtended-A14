.class public final Ls1/b;
.super LU2/c;
.source "SourceFile"


# static fields
.field public static volatile d:[Ls1/b;


# instance fields
.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LU2/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ls1/b;->b:I

    iput v0, p0, Ls1/b;->c:I

    const/4 v0, -0x1

    iput v0, p0, LU2/c;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget v0, p0, Ls1/b;->b:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/16 v3, 0x8

    invoke-static {v3}, LU2/a;->a(I)I

    move-result v3

    if-ltz v0, :cond_0

    invoke-static {v0}, LU2/a;->a(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr v3, v0

    add-int/2addr v2, v3

    :cond_1
    iget p0, p0, Ls1/b;->c:I

    if-eqz p0, :cond_3

    const/16 v0, 0x10

    invoke-static {v0}, LU2/a;->a(I)I

    move-result v0

    if-ltz p0, :cond_2

    invoke-static {p0}, LU2/a;->a(I)I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    add-int/2addr v2, v0

    :cond_3
    return v2
.end method
