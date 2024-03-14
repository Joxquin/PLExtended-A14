.class public final Lh2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Lh2/b;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2/c;->a:Ljava/lang/String;

    new-array p1, p2, [Lh2/b;

    iput-object p1, p0, Lh2/c;->b:[Lh2/b;

    const/4 p1, 0x0

    iput p1, p0, Lh2/c;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lh2/c;->c(Ljava/lang/String;IF)V

    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x2

    int-to-float p2, p2

    invoke-virtual {p0, p1, v0, p2}, Lh2/c;->c(Ljava/lang/String;IF)V

    return-void
.end method

.method public final c(Ljava/lang/String;IF)V
    .locals 7

    iget v0, p0, Lh2/c;->c:I

    iget-object v1, p0, Lh2/c;->b:[Lh2/b;

    array-length v2, v1

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    array-length v3, v1

    rem-int/2addr v2, v3

    array-length v3, v1

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    array-length v3, v1

    rem-int/2addr v0, v3

    aget-object v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget v6, v3, Lh2/b;->a:I

    if-ne v6, p2, :cond_0

    iget-object v3, v3, Lh2/b;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_2

    aget-object v3, v1, v0

    if-eqz v3, :cond_1

    iget v6, v3, Lh2/b;->a:I

    if-ne v6, p2, :cond_1

    iget-object v3, v3, Lh2/b;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    if-eqz v3, :cond_2

    aget-object p0, v1, v2

    iput p2, p0, Lh2/b;->a:I

    iput-object p1, p0, Lh2/b;->b:Ljava/lang/String;

    iput p3, p0, Lh2/b;->c:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lh2/b;->d:J

    iput v5, p0, Lh2/b;->e:I

    aget-object p0, v1, v0

    iget p1, p0, Lh2/b;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lh2/b;->e:I

    return-void

    :cond_2
    iget v0, p0, Lh2/c;->c:I

    aget-object v2, v1, v0

    if-nez v2, :cond_3

    new-instance v2, Lh2/b;

    invoke-direct {v2}, Lh2/b;-><init>()V

    aput-object v2, v1, v0

    :cond_3
    aget-object v0, v1, v0

    iput p2, v0, Lh2/b;->a:I

    iput-object p1, v0, Lh2/b;->b:Ljava/lang/String;

    iput p3, v0, Lh2/b;->c:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lh2/b;->d:J

    iput v5, v0, Lh2/b;->e:I

    iget p1, p0, Lh2/c;->c:I

    add-int/2addr p1, v4

    array-length p2, v1

    rem-int/2addr p1, p2

    iput p1, p0, Lh2/c;->c:I

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xf

    iget-object v1, p0, Lh2/c;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event history:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "  HH:mm:ss.SSSZ  "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lh2/c;->b:[Lh2/b;

    array-length v4, v3

    if-ge v2, v4, :cond_6

    iget v4, p0, Lh2/c;->c:I

    array-length v5, v3

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    array-length v6, v3

    rem-int/2addr v4, v6

    aget-object v3, v3, v4

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    iget-wide v6, v3, Lh2/b;->d:J

    invoke-virtual {v1, v6, v7}, Ljava/util/Date;->setTime(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lh2/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lh2/b;->a:I

    const-string v7, ": "

    if-eq v6, v5, :cond_4

    const/4 v5, 0x2

    if-eq v6, v5, :cond_3

    const/4 v5, 0x3

    if-eq v6, v5, :cond_2

    const/4 v5, 0x4

    if-eq v6, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, ": false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v5, ": true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lh2/b;->c:F

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lh2/b;->c:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_1
    iget v5, v3, Lh2/b;->e:I

    if-lez v5, :cond_5

    const-string v5, " & "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lh2/b;->e:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " similar events"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
