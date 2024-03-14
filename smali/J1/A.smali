.class public final LJ1/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/util/List;

.field public d:LJ1/J;

.field public e:LJ1/z;

.field public f:LJ1/D;

.field public g:Ljava/lang/String;

.field public h:LJ1/I;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LJ1/A;->a:Ljava/lang/String;

    :goto_0
    const-string v0, "success"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, LJ1/A;->b:Z

    :goto_1
    const-string v0, "entities"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    .line 8
    iput-object v2, p0, LJ1/A;->c:Ljava/util/List;

    goto :goto_3

    .line 9
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, LJ1/A;->c:Ljava/util/List;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-nez v1, :cond_4

    .line 11
    iget-object v1, p0, LJ1/A;->c:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_4
    iget-object v3, p0, LJ1/A;->c:Ljava/util/List;

    .line 13
    new-instance v4, LJ1/B;

    invoke-direct {v4, v1}, LJ1/B;-><init>(Landroid/os/Bundle;)V

    .line 14
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_3
    const-string v0, "stats"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    .line 16
    :cond_6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    .line 17
    iput-object v2, p0, LJ1/A;->d:LJ1/J;

    goto :goto_4

    .line 18
    :cond_7
    new-instance v1, LJ1/J;

    invoke-direct {v1, v0}, LJ1/J;-><init>(Landroid/os/Bundle;)V

    .line 19
    iput-object v1, p0, LJ1/A;->d:LJ1/J;

    :goto_4
    const-string v0, "debugInfo"

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    .line 21
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9

    .line 22
    iput-object v2, p0, LJ1/A;->e:LJ1/z;

    goto :goto_5

    .line 23
    :cond_9
    new-instance v0, LJ1/z;

    invoke-direct {v0}, LJ1/z;-><init>()V

    .line 24
    iput-object v0, p0, LJ1/A;->e:LJ1/z;

    :goto_5
    const-string v0, "extrasInfo"

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_6

    .line 26
    :cond_a
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_b

    .line 27
    iput-object v2, p0, LJ1/A;->f:LJ1/D;

    goto :goto_6

    .line 28
    :cond_b
    new-instance v1, LJ1/D;

    invoke-direct {v1, v0}, LJ1/D;-><init>(Landroid/os/Bundle;)V

    .line 29
    iput-object v1, p0, LJ1/A;->f:LJ1/D;

    :goto_6
    const-string v0, "opaquePayload"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_7

    .line 31
    :cond_c
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LJ1/A;->g:Ljava/lang/String;

    :goto_7
    const-string v0, "setupInfo"

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_8

    .line 33
    :cond_d
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_e

    .line 34
    iput-object v2, p0, LJ1/A;->h:LJ1/I;

    goto :goto_8

    .line 35
    :cond_e
    new-instance v0, LJ1/I;

    invoke-direct {v0, p1}, LJ1/I;-><init>(Landroid/os/Bundle;)V

    .line 36
    iput-object v0, p0, LJ1/A;->h:LJ1/I;

    :goto_8
    return-void
.end method
