.class public final synthetic LL1/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LL1/a0;

.field public final synthetic e:LJ1/A;

.field public final synthetic f:LL1/Z;

.field public final synthetic g:LJ1/e;

.field public final synthetic h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;


# direct methods
.method public synthetic constructor <init>(LL1/a0;LJ1/A;LL1/Z;LJ1/e;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/V;->d:LL1/a0;

    iput-object p2, p0, LL1/V;->e:LJ1/A;

    iput-object p3, p0, LL1/V;->f:LL1/Z;

    iput-object p4, p0, LL1/V;->g:LJ1/e;

    iput-object p5, p0, LL1/V;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LL1/V;->d:LL1/a0;

    iget-object v1, p0, LL1/V;->f:LL1/Z;

    iget-object v2, p0, LL1/V;->g:LJ1/e;

    iget-object p0, p0, LL1/V;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;

    monitor-enter v0

    :try_start_0
    iget-object v3, v0, LL1/a0;->j:LL1/P;

    invoke-interface {v3}, LL1/P;->a()V

    invoke-interface {v1, v2, p0}, LL1/Z;->a(LJ1/e;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
