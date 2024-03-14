.class public final Lt1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# instance fields
.field public final a:Lt1/a;

.field public final b:Ld3/a;

.field public final c:Ld3/a;

.field public final d:Ld3/a;


# direct methods
.method public constructor <init>(Lt1/a;Ld3/a;Ld3/a;Lv1/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1/b;->a:Lt1/a;

    iput-object p2, p0, Lt1/b;->b:Ld3/a;

    iput-object p3, p0, Lt1/b;->c:Ld3/a;

    iput-object p4, p0, Lt1/b;->d:Ld3/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lt1/b;->b:Ld3/a;

    invoke-interface {v0}, Ld3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu1/a;

    iget-object v1, p0, Lt1/b;->c:Ld3/a;

    invoke-interface {v1}, Ld3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx1/a;

    iget-object v2, p0, Lt1/b;->a:Lt1/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "config"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "traceListener"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lt1/b;->d:Ld3/a;

    const-string v2, "remoteReceiverProvider"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lu1/a;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    const-string v0, "empty()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ld3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    invoke-virtual {p0, v1}, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->addCallback(Lt1/d;)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, "of(remoteReceiver)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
