.class public final LX2/L0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/List;

.field public static final e:LX2/L0;

.field public static final f:LX2/L0;

.field public static final g:LX2/L0;

.field public static final h:LX2/L0;

.field public static final i:LX2/L0;

.field public static final j:LX2/L0;

.field public static final k:LX2/L0;

.field public static final l:LX2/L0;

.field public static final m:LX2/L0;

.field public static final n:LX2/L0;

.field public static final o:LX2/K0;


# instance fields
.field public final a:Lio/grpc/Status$Code;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "io.grpc.Status.failOnEqualsForTest"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {}, Lio/grpc/Status$Code;->values()[Lio/grpc/Status$Code;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lio/grpc/Status$Code;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, LX2/L0;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v8}, LX2/L0;-><init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LX2/L0;

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Code value duplication between "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, LX2/L0;->a:Lio/grpc/Status$Code;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LX2/L0;->d:Ljava/util/List;

    sget-object v0, Lio/grpc/Status$Code;->d:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    move-result-object v0

    sput-object v0, LX2/L0;->e:LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->e:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    move-result-object v0

    sput-object v0, LX2/L0;->f:LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->f:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    move-result-object v0

    sput-object v0, LX2/L0;->g:LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->g:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->h:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    move-result-object v0

    sput-object v0, LX2/L0;->h:LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->i:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->j:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->k:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    move-result-object v0

    sput-object v0, LX2/L0;->i:LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->t:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    move-result-object v0

    sput-object v0, LX2/L0;->j:LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->l:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    move-result-object v0

    sput-object v0, LX2/L0;->k:LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->m:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->n:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->o:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->p:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    move-result-object v0

    sput-object v0, LX2/L0;->l:LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->q:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    move-result-object v0

    sput-object v0, LX2/L0;->m:LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->r:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    move-result-object v0

    sput-object v0, LX2/L0;->n:LX2/L0;

    sget-object v0, Lio/grpc/Status$Code;->s:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->c()LX2/L0;

    new-instance v0, LX2/J0;

    invoke-direct {v0}, LX2/J0;-><init>()V

    new-instance v1, LX2/p0;

    const-string v2, "grpc-status"

    invoke-direct {v1, v2, v3, v0}, LX2/p0;-><init>(Ljava/lang/String;ZLX2/q0;)V

    new-instance v0, LX2/K0;

    invoke-direct {v0}, LX2/K0;-><init>()V

    sput-object v0, LX2/L0;->o:LX2/K0;

    new-instance v1, LX2/p0;

    const-string v2, "grpc-message"

    invoke-direct {v1, v2, v3, v0}, LX2/p0;-><init>(Ljava/lang/String;ZLX2/q0;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "code"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, LX2/L0;->a:Lio/grpc/Status$Code;

    iput-object p2, p0, LX2/L0;->b:Ljava/lang/String;

    iput-object p3, p0, LX2/L0;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public static b(LX2/L0;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LX2/L0;->b:Ljava/lang/String;

    iget-object v1, p0, LX2/L0;->a:Lio/grpc/Status$Code;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LX2/L0;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(I)LX2/L0;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, LX2/L0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX2/L0;

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, LX2/L0;->g:LX2/L0;

    invoke-virtual {v0, p0}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)LX2/L0;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, LX2/L0;->c:Ljava/lang/Throwable;

    iget-object v1, p0, LX2/L0;->a:Lio/grpc/Status$Code;

    iget-object p0, p0, LX2/L0;->b:Ljava/lang/String;

    if-nez p0, :cond_1

    new-instance p0, LX2/L0;

    invoke-direct {p0, v1, p1, v0}, LX2/L0;-><init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :cond_1
    new-instance v2, LX2/L0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p0, v0}, LX2/L0;-><init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final d()Z
    .locals 1

    sget-object v0, Lio/grpc/Status$Code;->d:Lio/grpc/Status$Code;

    iget-object p0, p0, LX2/L0;->a:Lio/grpc/Status$Code;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e(Ljava/lang/Throwable;)LX2/L0;
    .locals 2

    iget-object v0, p0, LX2/L0;->c:Ljava/lang/Throwable;

    invoke-static {v0, p1}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LX2/L0;

    iget-object v1, p0, LX2/L0;->a:Lio/grpc/Status$Code;

    iget-object p0, p0, LX2/L0;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, LX2/L0;-><init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f(Ljava/lang/String;)LX2/L0;
    .locals 2

    iget-object v0, p0, LX2/L0;->b:Ljava/lang/String;

    invoke-static {v0, p1}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LX2/L0;

    iget-object v1, p0, LX2/L0;->a:Lio/grpc/Status$Code;

    iget-object p0, p0, LX2/L0;->c:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, p0}, LX2/L0;-><init>(Lio/grpc/Status$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    iget-object v1, p0, LX2/L0;->a:Lio/grpc/Status$Code;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v1, v2}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "description"

    iget-object v2, p0, LX2/L0;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LX2/L0;->c:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    sget-object v1, LO2/r;->a:Ljava/lang/Object;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v1, "cause"

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
