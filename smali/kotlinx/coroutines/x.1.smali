.class public abstract Lkotlinx/coroutines/x;
.super Lkotlin/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/e;


# static fields
.field public static final e:Lkotlinx/coroutines/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/w;

    invoke-direct {v0}, Lkotlinx/coroutines/w;-><init>()V

    sput-object v0, Lkotlinx/coroutines/x;->e:Lkotlinx/coroutines/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlin/coroutines/d;->d:Lkotlin/coroutines/d;

    invoke-direct {p0, v0}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/h;)V

    return-void
.end method


# virtual methods
.method public abstract B(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
.end method

.method public C(Lkotlin/coroutines/i;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final c(Lkotlin/coroutines/c;)V
    .locals 2

    check-cast p1, Lkotlinx/coroutines/internal/g;

    iget-object p0, p1, Lkotlinx/coroutines/internal/g;->k:Lt3/f;

    :cond_0
    iget-object v0, p0, Lt3/f;->b:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/internal/h;->b:Lkotlinx/coroutines/internal/E;

    if-eq v0, v1, :cond_0

    iget-object p0, p1, Lkotlinx/coroutines/internal/g;->k:Lt3/f;

    iget-object p0, p0, Lt3/f;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlinx/coroutines/h;

    if-eqz p1, :cond_1

    check-cast p0, Lkotlinx/coroutines/h;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->m()V

    :cond_2
    return-void
.end method

.method public final d(Lkotlin/coroutines/c;)Lkotlinx/coroutines/internal/g;
    .locals 1

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/coroutines/internal/g;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/g;-><init>(Lkotlinx/coroutines/x;Lkotlin/coroutines/c;)V

    return-object v0
.end method

.method public final e(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lkotlin/coroutines/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lkotlin/coroutines/b;

    iget-object v1, p0, Lkotlin/coroutines/a;->d:Lkotlin/coroutines/h;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1

    iget-object v0, p1, Lkotlin/coroutines/b;->e:Lkotlin/coroutines/h;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p1, p0}, Lkotlin/coroutines/b;->a(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    instance-of p1, p0, Lkotlin/coroutines/g;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_2
    sget-object v0, Lkotlin/coroutines/d;->d:Lkotlin/coroutines/d;

    if-ne v0, p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p0, v2

    :goto_2
    move-object v2, p0

    :cond_4
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lkotlinx/coroutines/D;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/coroutines/D;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lkotlin/coroutines/h;)Lkotlin/coroutines/i;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lkotlin/coroutines/b;

    if-eqz v1, :cond_2

    check-cast p1, Lkotlin/coroutines/b;

    iget-object v1, p0, Lkotlin/coroutines/a;->d:Lkotlin/coroutines/h;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1

    iget-object v0, p1, Lkotlin/coroutines/b;->e:Lkotlin/coroutines/h;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p1, p0}, Lkotlin/coroutines/b;->a(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    goto :goto_2

    :cond_2
    sget-object v0, Lkotlin/coroutines/d;->d:Lkotlin/coroutines/d;

    if-ne v0, p1, :cond_3

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_3
    :goto_2
    return-object p0
.end method
