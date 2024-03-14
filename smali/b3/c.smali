.class public final Lb3/c;
.super Lb3/e;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Ljava/util/List;

.field public volatile b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lb3/c;

    const-string v1, "b"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lb3/c;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 2

    invoke-direct {p0}, Lb3/e;-><init>()V

    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "empty list"

    invoke-static {v1, v0}, LO2/m;->b(Ljava/lang/Object;Z)V

    iput-object p2, p0, Lb3/c;->a:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lb3/c;->b:I

    return-void
.end method


# virtual methods
.method public final e()LX2/W;
    .locals 4

    iget-object v0, p0, Lb3/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lb3/c;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v3

    if-lt v3, v1, :cond_0

    rem-int v1, v3, v1

    invoke-virtual {v2, p0, v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move v3, v1

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX2/Y;

    new-instance v0, LX2/W;

    const-string v1, "subchannel"

    invoke-static {p0, v1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, LX2/L0;->e:LX2/L0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LX2/W;-><init>(LX2/Y;LX2/L0;Z)V

    return-object v0
.end method

.method public final h(Lb3/e;)Z
    .locals 3

    instance-of v0, p1, Lb3/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lb3/c;

    if-eq p1, p0, :cond_1

    iget-object p0, p0, Lb3/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p1, Lb3/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p0, p1, Lb3/c;->a:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, LO2/i;

    const-class v1, Lb3/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LO2/i;-><init>(Ljava/lang/String;)V

    const-string v1, "list"

    iget-object p0, p0, Lb3/c;->a:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
