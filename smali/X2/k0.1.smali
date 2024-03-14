.class public final LX2/k0;
.super LX2/n0;
.source "SourceFile"


# instance fields
.field public final e:LX2/l0;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/R0;)V
    .locals 2

    const-string v0, "one-search-error-bin"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, LX2/n0;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    iput-object p1, p0, LX2/k0;->e:LX2/l0;

    return-void
.end method


# virtual methods
.method public final b([B)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LX2/k0;->e:LX2/l0;

    invoke-interface {p0, p1}, LX2/l0;->b([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)[B
    .locals 0

    iget-object p0, p0, LX2/k0;->e:LX2/l0;

    invoke-interface {p0, p1}, LX2/l0;->a(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method
