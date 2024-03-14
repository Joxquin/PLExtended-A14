.class public final Lv0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:Lx3/h;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lx3/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/a;->a:[Ljava/lang/String;

    iput-object p2, p0, Lv0/a;->b:Lx3/h;

    return-void
.end method

.method public static varargs a([Ljava/lang/String;)Lv0/a;
    .locals 15

    :try_start_0
    array-length v0, p0

    new-array v0, v0, [Lokio/ByteString;

    new-instance v1, Lx3/b;

    invoke-direct {v1}, Lx3/b;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_7

    aget-object v4, p0, v3

    sget-object v5, Lcom/airbnb/lottie/parser/moshi/a;->h:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lx3/b;->l(I)Lx3/l;

    move-result-object v7

    iget v8, v7, Lx3/l;->c:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lx3/l;->c:I

    const/16 v9, 0x22

    int-to-byte v9, v9

    iget-object v7, v7, Lx3/l;->a:[B

    aput-byte v9, v7, v8

    iget-wide v7, v1, Lx3/b;->e:J

    const-wide/16 v10, 0x1

    add-long/2addr v7, v10

    iput-wide v7, v1, Lx3/b;->e:J

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    move v8, v2

    move v12, v8

    :goto_1
    if-ge v8, v7, :cond_5

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x80

    if-ge v13, v14, :cond_0

    aget-object v13, v5, v13

    if-nez v13, :cond_2

    goto :goto_3

    :cond_0
    const/16 v14, 0x2028

    if-ne v13, v14, :cond_1

    const-string v13, "\\u2028"

    goto :goto_2

    :cond_1
    const/16 v14, 0x2029

    if-ne v13, v14, :cond_4

    const-string v13, "\\u2029"

    :cond_2
    :goto_2
    if-ge v12, v8, :cond_3

    invoke-virtual {v1, v4, v12, v8}, Lx3/b;->o(Ljava/lang/String;II)V

    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v1, v13, v2, v12}, Lx3/b;->o(Ljava/lang/String;II)V

    add-int/lit8 v12, v8, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    if-ge v12, v7, :cond_6

    invoke-virtual {v1, v4, v12, v7}, Lx3/b;->o(Ljava/lang/String;II)V

    :cond_6
    invoke-virtual {v1, v6}, Lx3/b;->l(I)Lx3/l;

    move-result-object v4

    iget v5, v4, Lx3/l;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lx3/l;->c:I

    iget-object v4, v4, Lx3/l;->a:[B

    aput-byte v9, v4, v5

    iget-wide v4, v1, Lx3/b;->e:J

    add-long/2addr v4, v10

    iput-wide v4, v1, Lx3/b;->e:J

    invoke-virtual {v1}, Lx3/b;->c()B

    invoke-virtual {v1}, Lx3/b;->e()Lokio/ByteString;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    new-instance v1, Lv0/a;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {v0}, Lx3/h;->i([Lokio/ByteString;)Lx3/h;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lv0/a;-><init>([Ljava/lang/String;Lx3/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
