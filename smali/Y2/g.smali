.class public final LY2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:[B

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(LY2/l;[BIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY2/g;->a:Ljava/io/InputStream;

    iput-object p2, p0, LY2/g;->b:[B

    iput p3, p0, LY2/g;->c:I

    iput-boolean p4, p0, LY2/g;->d:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransactionData["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, LY2/g;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LY2/g;->a:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    const-string v1, "stream"

    goto :goto_0

    :cond_0
    const-string v1, "array"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, LY2/g;->d:Z

    if-eqz p0, :cond_1

    const-string p0, "(last)]"

    goto :goto_1

    :cond_1
    const-string p0, "]"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
