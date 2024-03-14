.class public final LY2/d;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements LX2/T;


# instance fields
.field public d:[[B

.field public e:[B

.field public f:I

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LY2/d;->d:[[B

    .line 3
    array-length v1, p1

    if-lez v1, :cond_0

    move-object v0, p1

    :cond_0
    iput-object v0, p0, LY2/d;->e:[B

    .line 4
    array-length p1, p1

    iput p1, p0, LY2/d;->h:I

    return-void
.end method

.method public constructor <init>([[BI)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 6
    iput-object p1, p0, LY2/d;->d:[[B

    .line 7
    iput p2, p0, LY2/d;->h:I

    .line 8
    array-length p2, p1

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 9
    aget-object p1, p1, p2

    iput-object p1, p0, LY2/d;->e:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, LY2/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LY2/d;->f:I

    const/4 v1, 0x0

    iput v1, p0, LY2/d;->g:I

    iget-object v1, p0, LY2/d;->d:[[B

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    iput-object v0, p0, LY2/d;->e:[B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LY2/d;->e:[B

    :goto_0
    return-void
.end method

.method public final available()I
    .locals 0

    iget p0, p0, LY2/d;->h:I

    return p0
.end method

.method public final close()V
    .locals 4

    iget-boolean v0, p0, LY2/d;->i:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, LY2/d;->i:Z

    iget-object v0, p0, LY2/d;->d:[[B

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, LY2/e;->a([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LY2/d;->e:[B

    if-eqz v0, :cond_1

    invoke-static {v0}, LY2/e;->a([B)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, LY2/d;->e:[B

    iput-object v0, p0, LY2/d;->d:[[B

    :cond_2
    return-void
.end method

.method public final read()I
    .locals 4

    .line 1
    iget-object v0, p0, LY2/d;->e:[B

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, LY2/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LY2/d;->g:I

    aget-byte v1, v0, v1

    .line 3
    iget v3, p0, LY2/d;->h:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, LY2/d;->h:I

    .line 4
    array-length v0, v0

    if-ne v2, v0, :cond_0

    .line 5
    invoke-virtual {p0}, LY2/d;->a()V

    :cond_0
    return v1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final read([BII)I
    .locals 5

    move v0, p3

    .line 6
    :goto_0
    iget-object v1, p0, LY2/d;->e:[B

    if-eqz v1, :cond_3

    .line 7
    array-length v1, v1

    iget v2, p0, LY2/d;->g:I

    sub-int/2addr v1, v2

    iget v2, p0, LY2/d;->h:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    .line 8
    aget v2, v1, v2

    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 9
    aget v4, v1, v3

    if-ge v4, v2, :cond_0

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, p0, LY2/d;->e:[B

    iget v3, p0, LY2/d;->g:I

    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr v0, v2

    .line 11
    iget v1, p0, LY2/d;->h:I

    sub-int/2addr v1, v2

    iput v1, p0, LY2/d;->h:I

    if-nez v0, :cond_2

    .line 12
    iget p1, p0, LY2/d;->g:I

    add-int/2addr p1, v2

    iput p1, p0, LY2/d;->g:I

    .line 13
    iget-object p2, p0, LY2/d;->e:[B

    array-length p2, p2

    if-ne p1, p2, :cond_3

    .line 14
    invoke-virtual {p0}, LY2/d;->a()V

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {p0}, LY2/d;->a()V

    goto :goto_0

    :cond_3
    :goto_2
    sub-int/2addr p3, v0

    if-gtz p3, :cond_5

    .line 16
    iget p0, p0, LY2/d;->h:I

    if-lez p0, :cond_4

    goto :goto_3

    :cond_4
    const/4 p0, -0x1

    return p0

    :cond_5
    :goto_3
    return p3
.end method
