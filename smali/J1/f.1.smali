.class public final LJ1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LJ1/a;

.field public b:LJ1/b;

.field public c:LJ1/c;

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "appActionSuggestion"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iput-object v2, p0, LJ1/f;->a:LJ1/a;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, LJ1/a;

    invoke-direct {v1, v0}, LJ1/a;-><init>(Landroid/os/Bundle;)V

    .line 6
    iput-object v1, p0, LJ1/f;->a:LJ1/a;

    :goto_0
    const-string v0, "appIcon"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    .line 9
    iput-object v2, p0, LJ1/f;->b:LJ1/b;

    goto :goto_1

    .line 10
    :cond_3
    new-instance v1, LJ1/b;

    invoke-direct {v1, v0}, LJ1/b;-><init>(Landroid/os/Bundle;)V

    .line 11
    iput-object v1, p0, LJ1/f;->b:LJ1/b;

    :goto_1
    const-string v0, "executionInfo"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    .line 14
    iput-object v2, p0, LJ1/f;->c:LJ1/c;

    goto :goto_2

    .line 15
    :cond_5
    new-instance v1, LJ1/c;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, LJ1/c;-><init>(ILandroid/os/Bundle;)V

    .line 16
    iput-object v1, p0, LJ1/f;->c:LJ1/c;

    :goto_2
    const-string v0, "confScore"

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, LJ1/f;->d:F

    :goto_3
    return-void
.end method
