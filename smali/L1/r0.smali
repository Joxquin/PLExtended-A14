.class public final synthetic LL1/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/Z;


# instance fields
.field public final synthetic a:LL1/o;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(LL1/o;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/r0;->a:LL1/o;

    iput-object p2, p0, LL1/r0;->b:Ljava/util/List;

    iput-object p3, p0, LL1/r0;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final a(LJ1/e;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;)V
    .locals 1

    iget-object p1, p0, LL1/r0;->a:LL1/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;->entities()LJ1/A;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, LM1/c;->a:I

    invoke-virtual {p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;->entities()LJ1/A;

    move-result-object v0

    iget-object v0, v0, LJ1/A;->a:Ljava/lang/String;

    iput-object v0, p1, LL1/o;->i:Ljava/lang/String;

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;->entities()LJ1/A;

    move-result-object p1

    iget-boolean p1, p1, LJ1/A;->b:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, LL1/r0;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "-Obtained new entities"

    invoke-static {p1}, LM1/b;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const-string p2, "Unable to obtain new entities"

    invoke-static {p2, p1}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, LL1/r0;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
