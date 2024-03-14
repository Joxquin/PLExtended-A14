.class public final Lo3/c;
.super Lo3/a;
.source "SourceFile"


# instance fields
.field public final f:Lo3/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo3/a;-><init>()V

    new-instance v0, Lo3/b;

    invoke-direct {v0}, Lo3/b;-><init>()V

    iput-object v0, p0, Lo3/c;->f:Lo3/b;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Random;
    .locals 1

    iget-object p0, p0, Lo3/c;->f:Lo3/b;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "implStorage.get()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Random;

    return-object p0
.end method
