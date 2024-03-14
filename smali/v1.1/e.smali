.class public final Lv1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# instance fields
.field public final a:Ld3/a;

.field public final b:Ld3/a;


# direct methods
.method public constructor <init>(Ld3/a;LW2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/e;->a:Ld3/a;

    iput-object p2, p0, Lv1/e;->b:Ld3/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lv1/e;->a:Ld3/a;

    invoke-interface {v0}, Ld3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lv1/e;->b:Ld3/a;

    invoke-interface {p0}, Ld3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;-><init>(ZLjava/util/concurrent/Executor;)V

    return-object v1
.end method
