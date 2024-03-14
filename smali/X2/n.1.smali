.class public final LX2/n;
.super LX2/h;
.source "SourceFile"


# instance fields
.field public final d:LX2/h;

.field public final e:LX2/l;


# direct methods
.method public constructor <init>(LX2/h;LX2/l;)V
    .locals 0

    invoke-direct {p0}, LX2/h;-><init>()V

    iput-object p1, p0, LX2/n;->d:LX2/h;

    const-string p1, "interceptor"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, LX2/n;->e:LX2/l;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LX2/n;->d:LX2/h;

    invoke-virtual {p0}, LX2/h;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g(LX2/u0;LX2/g;)LX2/k;
    .locals 0

    iget-object p0, p0, LX2/n;->e:LX2/l;

    invoke-interface {p0}, LX2/l;->a()LX2/k;

    move-result-object p0

    return-object p0
.end method
