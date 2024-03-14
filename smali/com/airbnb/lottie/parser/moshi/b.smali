.class public final Lcom/airbnb/lottie/parser/moshi/b;
.super Lcom/airbnb/lottie/parser/moshi/a;
.source "SourceFile"


# static fields
.field public static final o:Lokio/ByteString;

.field public static final p:Lokio/ByteString;

.field public static final q:Lokio/ByteString;


# instance fields
.field public final i:Lx3/c;

.field public final j:Lx3/b;

.field public k:I

.field public l:J

.field public m:I

.field public n:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\'\\"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/b;->o:Lokio/ByteString;

    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/b;->p:Lokio/ByteString;

    const-string v0, "{}[]:, \n\t\r\u000c/\\;#="

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/b;->q:Lokio/ByteString;

    const-string v0, "\n\r"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    const-string v0, "*/"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    return-void
.end method

.method public constructor <init>(Lx3/k;)V
    .locals 1

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    iget-object p1, p1, Lx3/k;->e:Lx3/b;

    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/a;->o(I)V

    return-void
.end method


# virtual methods
.method public final A(I)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->x()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final B()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->y()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->E()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/b;->p:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/b;->D(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/b;->o:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/b;->D(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/a;->f:[Ljava/lang/String;

    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 p0, p0, -0x1

    aput-object v0, v1, p0

    return-object v0

    :cond_4
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final C(Z)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    add-int/lit8 v2, v0, 0x1

    int-to-long v3, v2

    invoke-interface {v1, v3, v4}, Lx3/c;->f(J)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lx3/b;->a(J)B

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    add-int/lit8 v2, v2, -0x1

    int-to-long v1, v2

    invoke-virtual {p1, v1, v2}, Lx3/b;->j(J)V

    const/16 p1, 0x2f

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    const-wide/16 v2, 0x2

    invoke-interface {p1, v2, v3}, Lx3/c;->f(J)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->x()V

    throw v1

    :cond_2
    const/16 p1, 0x23

    if-eq v0, p1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->x()V

    throw v1

    :cond_4
    :goto_1
    move v0, v2

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "End of input"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final D(Lokio/ByteString;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    invoke-interface {v2, p1}, Lx3/c;->p(Lokio/ByteString;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v4, v2, v3}, Lx3/b;->a(J)B

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v4, v2, v3}, Lx3/b;->i(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v2}, Lx3/b;->c()B

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->F()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {p1, v2, v3}, Lx3/b;->i(J)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {p0}, Lx3/b;->c()B

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {p1, v2, v3}, Lx3/b;->i(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {p0}, Lx3/b;->c()B

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/a;->v(Ljava/lang/String;)V

    throw v0
.end method

.method public final E()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/b;->q:Lokio/ByteString;

    invoke-interface {v0, v1}, Lx3/c;->p(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lx3/b;->i(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lx3/b;->e:J

    sget-object v2, Ls3/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lx3/b;->h(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final F()C
    .locals 10

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lx3/c;->f(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v0}, Lx3/b;->c()B

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_b

    const/16 v3, 0x22

    if-eq v0, v3, :cond_b

    const/16 v3, 0x27

    if-eq v0, v3, :cond_b

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_b

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_b

    const/16 v3, 0x62

    if-eq v0, v3, :cond_a

    const/16 v3, 0x66

    if-eq v0, v3, :cond_9

    const/16 v4, 0x6e

    if-eq v0, v4, :cond_8

    const/16 v4, 0x72

    if-eq v0, v4, :cond_7

    const/16 v4, 0x74

    if-eq v0, v4, :cond_6

    const/16 v4, 0x75

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    const-wide/16 v4, 0x4

    invoke-interface {v0, v4, v5}, Lx3/c;->f(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v7, 0x4

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Lx3/b;->a(J)B

    move-result v7

    shl-int/lit8 v6, v6, 0x4

    int-to-char v6, v6

    const/16 v8, 0x30

    if-lt v7, v8, :cond_0

    const/16 v8, 0x39

    if-gt v7, v8, :cond_0

    add-int/lit8 v7, v7, -0x30

    goto :goto_2

    :cond_0
    const/16 v8, 0x61

    if-lt v7, v8, :cond_1

    if-gt v7, v3, :cond_1

    add-int/lit8 v7, v7, -0x61

    goto :goto_1

    :cond_1
    const/16 v8, 0x41

    if-lt v7, v8, :cond_2

    const/16 v8, 0x46

    if-gt v7, v8, :cond_2

    add-int/lit8 v7, v7, -0x41

    :goto_1
    add-int/2addr v7, v2

    :goto_2
    add-int/2addr v7, v6

    int-to-char v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v0, v4, v5}, Lx3/b;->i(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\u"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/a;->v(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {p0, v4, v5}, Lx3/b;->j(J)V

    return v6

    :cond_4
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unterminated escape sequence at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid escape sequence: \\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/a;->v(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 p0, 0x9

    return p0

    :cond_7
    const/16 p0, 0xd

    return p0

    :cond_8
    return v2

    :cond_9
    const/16 p0, 0xc

    return p0

    :cond_a
    const/16 p0, 0x8

    return p0

    :cond_b
    int-to-char p0, v0

    return p0

    :cond_c
    const-string v0, "Unterminated escape sequence"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/a;->v(Ljava/lang/String;)V

    throw v1
.end method

.method public final G(Lokio/ByteString;)V
    .locals 6

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    invoke-interface {v0, p1}, Lx3/c;->p(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v2, v0, v1}, Lx3/b;->a(J)B

    move-result v2

    const/16 v3, 0x5c

    const-wide/16 v4, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lx3/b;->j(J)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->F()C

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    add-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lx3/b;->j(J)V

    return-void

    :cond_1
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/a;->v(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a()V
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->y()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/a;->o(I)V

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/a;->g:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    return-void

    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->y()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/a;->o(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    return-void

    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->y()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/a;->g:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    return-void

    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/a;->e:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    iget-wide v1, v0, Lx3/b;->e:J

    invoke-virtual {v0, v1, v2}, Lx3/b;->j(J)V

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final d()V
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->y()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/a;->f:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/a;->g:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    return-void

    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Z
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->y()I

    move-result v0

    :cond_0
    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    const/16 p0, 0x12

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i()Z
    .locals 4

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->y()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/a;->g:[I

    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/a;->g:[I

    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v2

    :cond_2
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()D
    .locals 8

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->y()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/a;->g:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->l:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x11

    const-string v3, "Expected a double but was "

    const/16 v4, 0xb

    const-string v5, " at path "

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/b;->m:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lx3/b;->i(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/b;->p:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/b;->D(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/b;->o:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/b;->D(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-ne v0, v4, :cond_7

    :goto_0
    iput v4, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/a;->g:[I

    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 p0, p0, -0x1

    aget v3, v2, p0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p0

    return-wide v0

    :cond_6
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()I
    .locals 8

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->y()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, " at path "

    const-string v4, "Expected an int but was "

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->l:J

    long-to-int v5, v0

    int-to-long v6, v5

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/a;->g:[I

    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v5

    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/airbnb/lottie/parser/moshi/b;->l:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x11

    const/16 v5, 0xb

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/b;->m:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lx3/b;->i(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v6, 0x8

    if-ne v0, v6, :cond_4

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/b;->p:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/b;->D(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/b;->o:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/b;->D(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/a;->g:[I

    iget v6, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :goto_2
    iput v5, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    :try_start_1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    double-to-int v5, v0

    int-to-double v6, v5

    cmpl-double v0, v6, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/a;->g:[I

    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v5

    :cond_8
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->y()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->E()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/b;->p:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/b;->D(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/b;->o:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/b;->D(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->l:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/b;->m:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lx3/b;->i(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/a;->g:[I

    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 p0, p0, -0x1

    aget v2, v1, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p0

    return-object v0

    :cond_6
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->y()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->m:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->j:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->h:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->i:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->l:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->k:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->e:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->g:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->f:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Lv0/a;)I
    .locals 4

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->y()I

    move-result v0

    :cond_0
    const/16 v1, 0xc

    const/4 v2, -0x1

    if-lt v0, v1, :cond_5

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/parser/moshi/b;->z(Ljava/lang/String;Lv0/a;)I

    move-result p0

    return p0

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    iget-object v3, p1, Lv0/a;->b:Lx3/h;

    invoke-interface {v0, v3}, Lx3/c;->q(Lx3/h;)I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/a;->f:[Ljava/lang/String;

    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 p0, p0, -0x1

    iget-object p1, p1, Lv0/a;->a:[Ljava/lang/String;

    aget-object p1, p1, v0

    aput-object p1, v1, p0

    return v0

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/a;->f:[Ljava/lang/String;

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/airbnb/lottie/parser/moshi/b;->z(Ljava/lang/String;Lv0/a;)I

    move-result p1

    if-ne p1, v2, :cond_4

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    iput-object v3, p0, Lcom/airbnb/lottie/parser/moshi/b;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/a;->f:[Ljava/lang/String;

    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 p0, p0, -0x1

    aput-object v0, v1, p0

    :cond_4
    return p1

    :cond_5
    :goto_0
    return v2
.end method

.method public final t()V
    .locals 5

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->y()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/b;->q:Lokio/ByteString;

    invoke-interface {v0, v1}, Lx3/c;->p(Lokio/ByteString;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v0, v2, Lx3/b;->e:J

    :goto_0
    invoke-virtual {v2, v0, v1}, Lx3/b;->j(J)V

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/b;->p:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/b;->G(Lokio/ByteString;)V

    goto :goto_1

    :cond_3
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/b;->o:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/b;->G(Lokio/ByteString;)V

    goto :goto_1

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/a;->f:[Ljava/lang/String;

    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 p0, p0, -0x1

    const-string v1, "null"

    aput-object v1, v0, p0

    return-void

    :cond_5
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonReader("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->y()I

    move-result v2

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/a;->o(I)V

    goto :goto_0

    :cond_2
    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/a;->o(I)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_3
    const/4 v4, 0x4

    const-string v5, " at path "

    const-string v6, "Expected a value but was "

    if-ne v2, v4, :cond_5

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    goto/16 :goto_5

    :cond_4
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    goto/16 :goto_5

    :cond_6
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v4, 0xe

    if-eq v2, v4, :cond_f

    const/16 v4, 0xa

    if-ne v2, v4, :cond_8

    goto :goto_3

    :cond_8
    const/16 v4, 0x9

    if-eq v2, v4, :cond_e

    const/16 v4, 0xd

    if-ne v2, v4, :cond_9

    goto :goto_2

    :cond_9
    const/16 v4, 0x8

    if-eq v2, v4, :cond_d

    const/16 v4, 0xc

    if-ne v2, v4, :cond_a

    goto :goto_1

    :cond_a
    const/16 v4, 0x11

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    iget v4, p0, Lcom/airbnb/lottie/parser/moshi/b;->m:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lx3/b;->j(J)V

    goto :goto_5

    :cond_b
    const/16 v4, 0x12

    if-eq v2, v4, :cond_c

    goto :goto_5

    :cond_c
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_1
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/b;->o:Lokio/ByteString;

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/b;->G(Lokio/ByteString;)V

    goto :goto_5

    :cond_e
    :goto_2
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/b;->p:Lokio/ByteString;

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/b;->G(Lokio/ByteString;)V

    goto :goto_5

    :cond_f
    :goto_3
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    sget-object v4, Lcom/airbnb/lottie/parser/moshi/b;->q:Lokio/ByteString;

    invoke-interface {v2, v4}, Lx3/c;->p(Lokio/ByteString;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_10

    goto :goto_4

    :cond_10
    iget-wide v4, v2, Lx3/b;->e:J

    :goto_4
    invoke-virtual {v2, v4, v5}, Lx3/b;->j(J)V

    :goto_5
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/a;->g:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 v2, v1, -0x1

    aget v4, v0, v2

    add-int/2addr v4, v3

    aput v4, v0, v2

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/a;->f:[Ljava/lang/String;

    sub-int/2addr v1, v3

    const-string v0, "null"

    aput-object v0, p0, v1

    return-void
.end method

.method public final x()V
    .locals 1

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/a;->v(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final y()I
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/a;->e:[I

    iget v2, v0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    const/4 v5, 0x0

    const/16 v7, 0x5d

    const/4 v8, 0x0

    const/16 v9, 0x3b

    const/16 v10, 0x2c

    const/4 v11, 0x3

    const/4 v12, 0x6

    const/4 v13, 0x7

    const/4 v14, 0x2

    const/4 v15, 0x4

    const/4 v4, 0x5

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    sub-int/2addr v2, v6

    aput v14, v1, v2

    goto :goto_0

    :cond_0
    if-ne v3, v14, :cond_3

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/b;->C(Z)I

    move-result v1

    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v2}, Lx3/b;->c()B

    if-eq v1, v10, :cond_a

    if-eq v1, v9, :cond_2

    if-ne v1, v7, :cond_1

    iput v15, v0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    return v15

    :cond_1
    const-string v1, "Unterminated array"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/a;->v(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->x()V

    throw v5

    :cond_3
    if-eq v3, v11, :cond_3a

    if-ne v3, v4, :cond_4

    goto/16 :goto_16

    :cond_4
    if-ne v3, v15, :cond_6

    sub-int/2addr v2, v6

    aput v4, v1, v2

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/b;->C(Z)I

    move-result v1

    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v2}, Lx3/b;->c()B

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_a

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_5

    const-string v1, "Expected \':\'"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/a;->v(Ljava/lang/String;)V

    throw v5

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->x()V

    throw v5

    :cond_6
    if-ne v3, v12, :cond_7

    sub-int/2addr v2, v6

    aput v13, v1, v2

    goto :goto_0

    :cond_7
    if-ne v3, v13, :cond_9

    invoke-virtual {v0, v8}, Lcom/airbnb/lottie/parser/moshi/b;->C(Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    const/16 v1, 0x12

    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    return v1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->x()V

    throw v5

    :cond_9
    const/16 v1, 0x8

    if-eq v3, v1, :cond_39

    :cond_a
    :goto_0
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/b;->C(Z)I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_38

    const/16 v2, 0x27

    if-eq v1, v2, :cond_37

    if-eq v1, v10, :cond_34

    if-eq v1, v9, :cond_34

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_33

    if-eq v1, v7, :cond_32

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_31

    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lx3/b;->a(J)B

    move-result v1

    const/16 v7, 0x74

    if-eq v1, v7, :cond_10

    const/16 v7, 0x54

    if-ne v1, v7, :cond_b

    goto :goto_3

    :cond_b
    const/16 v7, 0x66

    if-eq v1, v7, :cond_f

    const/16 v7, 0x46

    if-ne v1, v7, :cond_c

    goto :goto_2

    :cond_c
    const/16 v7, 0x6e

    if-eq v1, v7, :cond_e

    const/16 v7, 0x4e

    if-ne v1, v7, :cond_d

    goto :goto_1

    :cond_d
    move v9, v8

    goto :goto_7

    :cond_e
    :goto_1
    const-string v1, "null"

    const-string v7, "NULL"

    move v9, v13

    goto :goto_4

    :cond_f
    :goto_2
    const-string v1, "false"

    const-string v7, "FALSE"

    move v9, v12

    goto :goto_4

    :cond_10
    :goto_3
    const-string v1, "true"

    const-string v7, "TRUE"

    move v9, v4

    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    move v8, v6

    :goto_5
    if-ge v8, v10, :cond_13

    iget-object v5, v0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    add-int/lit8 v13, v8, 0x1

    int-to-long v11, v13

    invoke-interface {v5, v11, v12}, Lx3/c;->f(J)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_6

    :cond_11
    iget-object v5, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    int-to-long v11, v8

    invoke-virtual {v5, v11, v12}, Lx3/b;->a(J)B

    move-result v5

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v5, v11, :cond_12

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v5, v8, :cond_12

    goto :goto_6

    :cond_12
    move v8, v13

    const/4 v5, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x6

    const/4 v13, 0x7

    goto :goto_5

    :cond_13
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    add-int/lit8 v5, v10, 0x1

    int-to-long v7, v5

    invoke-interface {v1, v7, v8}, Lx3/c;->f(J)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    int-to-long v7, v10

    invoke-virtual {v1, v7, v8}, Lx3/b;->a(J)B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/b;->A(I)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_6
    const/4 v9, 0x0

    goto :goto_7

    :cond_14
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    int-to-long v7, v10

    invoke-virtual {v1, v7, v8}, Lx3/b;->j(J)V

    iput v9, v0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    :goto_7
    if-eqz v9, :cond_15

    return v9

    :cond_15
    move-wide v8, v2

    move v7, v6

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_8
    iget-object v11, v0, Lcom/airbnb/lottie/parser/moshi/b;->i:Lx3/c;

    add-int/lit8 v12, v1, 0x1

    int-to-long v2, v12

    invoke-interface {v11, v2, v3}, Lx3/c;->f(J)Z

    move-result v2

    if-nez v2, :cond_16

    move v2, v14

    goto/16 :goto_f

    :cond_16
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    int-to-long v14, v1

    invoke-virtual {v2, v14, v15}, Lx3/b;->a(J)B

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x45

    if-eq v2, v3, :cond_2b

    const/16 v3, 0x65

    if-eq v2, v3, :cond_2b

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_29

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_28

    const/16 v3, 0x30

    if-lt v2, v3, :cond_21

    const/16 v3, 0x39

    if-le v2, v3, :cond_17

    goto :goto_e

    :cond_17
    if-eq v5, v6, :cond_1f

    if-nez v5, :cond_18

    goto :goto_c

    :cond_18
    const/4 v1, 0x2

    if-ne v5, v1, :cond_1c

    const-wide/16 v14, 0x0

    cmp-long v1, v8, v14

    if-nez v1, :cond_19

    goto/16 :goto_13

    :cond_19
    const-wide/16 v14, 0xa

    mul-long/2addr v14, v8

    add-int/lit8 v2, v2, -0x30

    int-to-long v1, v2

    sub-long/2addr v14, v1

    const-wide v1, -0xcccccccccccccccL

    cmp-long v1, v8, v1

    if-gtz v1, :cond_1b

    if-nez v1, :cond_1a

    cmp-long v1, v14, v8

    if-gez v1, :cond_1a

    goto :goto_9

    :cond_1a
    const/4 v1, 0x0

    goto :goto_a

    :cond_1b
    :goto_9
    move v1, v6

    :goto_a
    and-int/2addr v7, v1

    move-wide v8, v14

    goto :goto_b

    :cond_1c
    const/4 v1, 0x3

    if-ne v5, v1, :cond_1d

    const/4 v5, 0x4

    :goto_b
    const/4 v3, 0x6

    goto :goto_d

    :cond_1d
    const/4 v3, 0x6

    if-eq v5, v4, :cond_1e

    if-ne v5, v3, :cond_20

    :cond_1e
    const/4 v5, 0x7

    goto :goto_d

    :cond_1f
    :goto_c
    const/4 v3, 0x6

    add-int/lit8 v2, v2, -0x30

    neg-int v1, v2

    int-to-long v1, v1

    move-wide v8, v1

    const/4 v5, 0x2

    :cond_20
    :goto_d
    const/4 v2, 0x7

    goto/16 :goto_12

    :cond_21
    :goto_e
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/b;->A(I)Z

    move-result v2

    if-nez v2, :cond_2e

    const/4 v2, 0x2

    :goto_f
    if-ne v5, v2, :cond_26

    if-eqz v7, :cond_25

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v8, v2

    if-nez v2, :cond_22

    if-eqz v10, :cond_25

    :cond_22
    const-wide/16 v2, 0x0

    cmp-long v4, v8, v2

    if-nez v4, :cond_23

    if-nez v10, :cond_25

    :cond_23
    if-eqz v10, :cond_24

    goto :goto_10

    :cond_24
    neg-long v8, v8

    :goto_10
    iput-wide v8, v0, Lcom/airbnb/lottie/parser/moshi/b;->l:J

    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lx3/b;->j(J)V

    const/16 v8, 0x10

    iput v8, v0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    goto :goto_14

    :cond_25
    const/4 v2, 0x2

    :cond_26
    if-eq v5, v2, :cond_27

    const/4 v2, 0x4

    if-eq v5, v2, :cond_27

    const/4 v2, 0x7

    if-ne v5, v2, :cond_2e

    :cond_27
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->m:I

    const/16 v8, 0x11

    iput v8, v0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    goto :goto_14

    :cond_28
    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    if-ne v5, v1, :cond_2e

    const/4 v5, 0x3

    goto :goto_12

    :cond_29
    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    if-nez v5, :cond_2a

    move v5, v6

    move v10, v5

    goto :goto_12

    :cond_2a
    if-ne v5, v4, :cond_2e

    goto :goto_11

    :cond_2b
    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    if-eq v5, v1, :cond_2c

    const/4 v1, 0x4

    if-ne v5, v1, :cond_2e

    :cond_2c
    move v5, v4

    goto :goto_12

    :cond_2d
    const/4 v2, 0x7

    const/4 v3, 0x6

    if-ne v5, v4, :cond_2e

    :goto_11
    move v5, v3

    :goto_12
    move v1, v12

    const-wide/16 v2, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x4

    goto/16 :goto_8

    :cond_2e
    :goto_13
    const/4 v8, 0x0

    :goto_14
    if-eqz v8, :cond_2f

    return v8

    :cond_2f
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lx3/b;->a(J)B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/b;->A(I)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "Expected value"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/a;->v(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_30
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->x()V

    throw v1

    :cond_31
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v1}, Lx3/b;->c()B

    iput v6, v0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    return v6

    :cond_32
    if-ne v3, v6, :cond_34

    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v1}, Lx3/b;->c()B

    const/4 v1, 0x4

    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    return v1

    :cond_33
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v1}, Lx3/b;->c()B

    const/4 v1, 0x3

    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    return v1

    :cond_34
    if-eq v3, v6, :cond_36

    const/4 v1, 0x2

    if-ne v3, v1, :cond_35

    goto :goto_15

    :cond_35
    const-string v1, "Unexpected value"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/a;->v(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_36
    :goto_15
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->x()V

    throw v1

    :cond_37
    move-object v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->x()V

    throw v1

    :cond_38
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v1}, Lx3/b;->c()B

    const/16 v1, 0x9

    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    return v1

    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    :goto_16
    sub-int/2addr v2, v6

    const/4 v5, 0x4

    aput v5, v1, v2

    const/16 v1, 0x7d

    if-ne v3, v4, :cond_3d

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/b;->C(Z)I

    move-result v2

    iget-object v5, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v5}, Lx3/b;->c()B

    if-eq v2, v10, :cond_3d

    if-eq v2, v9, :cond_3c

    if-ne v2, v1, :cond_3b

    const/4 v1, 0x2

    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    return v1

    :cond_3b
    const-string v1, "Unterminated object"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/a;->v(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_3c
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->x()V

    throw v1

    :cond_3d
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/b;->C(Z)I

    move-result v2

    const/16 v5, 0x22

    if-eq v2, v5, :cond_41

    const/16 v5, 0x27

    if-eq v2, v5, :cond_40

    if-ne v2, v1, :cond_3f

    if-eq v3, v4, :cond_3e

    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v1}, Lx3/b;->c()B

    const/4 v1, 0x2

    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    return v1

    :cond_3e
    const-string v1, "Expected name"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/a;->v(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_3f
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->x()V

    throw v1

    :cond_40
    const/4 v1, 0x0

    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v2}, Lx3/b;->c()B

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/b;->x()V

    throw v1

    :cond_41
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->j:Lx3/b;

    invoke-virtual {v1}, Lx3/b;->c()B

    const/16 v1, 0xd

    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    return v1
.end method

.method public final z(Ljava/lang/String;Lv0/a;)I
    .locals 4

    iget-object v0, p2, Lv0/a;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p2, Lv0/a;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/b;->k:I

    iget-object p2, p0, Lcom/airbnb/lottie/parser/moshi/a;->f:[Ljava/lang/String;

    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/a;->d:I

    add-int/lit8 p0, p0, -0x1

    aput-object p1, p2, p0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
