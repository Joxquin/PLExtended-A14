.class public final LS1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/P;


# instance fields
.field public final a:Ljava/util/function/Consumer;

.field public b:Z


# direct methods
.method public constructor <init>(LX1/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LS1/a;->b:Z

    iput-object p1, p0, LS1/a;->a:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;)V
    .locals 1

    iget-boolean v0, p0, LS1/a;->b:Z

    if-nez v0, :cond_0

    iget-object p0, p0, LS1/a;->a:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method
