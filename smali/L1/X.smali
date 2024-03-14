.class public final LL1/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/b;


# instance fields
.field public final synthetic a:LJ1/e;

.field public final synthetic b:LK1/a;

.field public final synthetic c:LL1/Z;

.field public final synthetic d:Z

.field public final synthetic e:LL1/a0;


# direct methods
.method public constructor <init>(LL1/a0;LJ1/e;LK1/a;LL1/Z;Z)V
    .locals 0

    iput-object p1, p0, LL1/X;->e:LL1/a0;

    iput-object p2, p0, LL1/X;->a:LJ1/e;

    iput-object p3, p0, LL1/X;->b:LK1/a;

    iput-object p4, p0, LL1/X;->c:LL1/Z;

    iput-boolean p5, p0, LL1/X;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, LL1/X;->e:LL1/a0;

    iget-object v1, p0, LL1/X;->a:LJ1/e;

    iget-object v2, p0, LL1/X;->b:LK1/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "EntitiesData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;

    iget-object v2, p0, LL1/X;->c:LL1/Z;

    iget-boolean p0, p0, LL1/X;->d:Z

    invoke-static {v0, v1, p1, v2, p0}, LL1/a0;->b(LL1/a0;LJ1/e;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;LL1/Z;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Failed to handleEntitiesData"

    invoke-static {p1, p0}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
